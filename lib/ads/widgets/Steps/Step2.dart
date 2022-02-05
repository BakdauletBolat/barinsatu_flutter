import 'package:barinsatu/ads/models/ad.dart';
import 'package:barinsatu/ads/models/geo.dart';
import 'package:barinsatu/ads/repositories/ad_repo.dart';
import 'package:barinsatu/ads/widgets/CustomTextField.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../Picker.dart';
import 'dart:async';
import 'package:barinsatu/ads/models/myData.dart';

class Step2 extends StatefulWidget {
  const Step2({Key? key, required this.formKey, required this.data})
      : super(key: key);

  final GlobalKey<FormState> formKey;
  final MyData data;

  @override
  _State createState() => _State();
}

class _State extends State<Step2> {
  List<City> cities = [];
  int cityValue = 1;
  AdRepo adRepo = AdRepo();
  List<Geo> predictions = [];

  TextEditingController textEditingController = TextEditingController();

  final CameraPosition _kGooglePlex = const CameraPosition(
    target: LatLng(42.340782, 69.596329),
    zoom: 14.4746,
  );

  final CameraPosition _kLake = const CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(42.340782, 69.596329),
      tilt: 59.440717697143555,
      zoom: 18);

  void getCities() async {
    cities = await adRepo.getCity(5);
  }

  void autoCompleteSearch(String value) async {
    GeoResponse response = await adRepo.getGeoCodes(value);
    if (response.predictions.isNotEmpty) {
      setState(() {
        predictions = response.predictions;
      });
    } else {
      setState(() {
        predictions = [];
      });
    }
  }

  void setCityValue(int value) {
    widget.data.city_id = cities[value].id;
    setState(() {
      cityValue = value;
    });
  }

  @override
  void initState() {
    getCities();
    super.initState();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    _controller.dispose();
    super.dispose();
  }

  void _insertText(String myText) {
    textEditingController.text = myText;
    FocusScope.of(context).unfocus();
  }

  void setPlaceAndClear(String placeId) async {
    var res = await adRepo.getGeoDetail(placeId);
    widget.data.lat = res.lat;
    widget.data.lng = res.lng;
    _controller.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(zoom: 18, target: LatLng(res.lat, res.lng))));

    setState(() {
      predictions = [];
      location = location.copyWith(positionParam: LatLng(res.lat, res.lng));
    });
  }

  void getDetail(String placeId) {}

  Marker location = Marker(
    markerId: const MarkerId('location'),
    infoWindow: const InfoWindow(title: 'location'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
    position: LatLng(42.340782, 69.596329),
  );

  late GoogleMapController _controller;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(children: [
        if (cities.length > 0)
          Center(
            child: Picker(
              title: "Выберите город",
              selectedValue: cityValue,
              onSelectedItemChanged: setCityValue,
              items: cities,
            ),
          ),
        CustomTextField(
          onSaved: (value) {
            print(value);
            widget.data.location_text = value;
          },
          onValueChanged: (value) {
            if (value.isNotEmpty) {
              widget.data.location_text = value;
              autoCompleteSearch(value);
            } else {
              if (predictions.length > 0 && mounted) {
                setState(() {
                  predictions = [];
                });
              }
            }
          },
          onEditingComplete: () => widget.formKey.currentState!.validate(),
          validation: true,
          controller: textEditingController,
          placeHolder: 'Выберите адрес',
        ),
        Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: SizedBox(
                height: 300,
                child: GoogleMap(
                    gestureRecognizers: Set()
                      ..add(Factory<EagerGestureRecognizer>(
                          () => EagerGestureRecognizer())),
                    mapToolbarEnabled: true,
                    myLocationEnabled: true,
                    zoomGesturesEnabled: true,
                    scrollGesturesEnabled: true,
                    rotateGesturesEnabled: true,
                    myLocationButtonEnabled: true,
                    mapType: MapType.normal,
                    onTap: (latLng) {
                      setState(() {
                        location = location.copyWith(
                            positionParam:
                                LatLng(latLng.latitude, latLng.longitude));
                      });
                    },
                    initialCameraPosition: _kGooglePlex,
                    onMapCreated: (GoogleMapController controller) {
                      _controller = controller;
                    },
                    markers: {
                      if (location != null) location,
                    }),
              ),
            ),
            if (predictions.isNotEmpty)
              Container(
                height: 400,
                width: double.infinity,
                decoration: const BoxDecoration(color: Colors.white),
                child: ListView.builder(
                  itemCount: predictions.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const CircleAvatar(
                        child: Icon(
                          Icons.pin_drop,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(predictions[index].description.toString()),
                      onTap: () {
                        String newText =
                            predictions[index].description.toString();
                        String placeId = predictions[index].place_id.toString();
                        _insertText(newText);
                        widget.data.location_text = newText;
                        setPlaceAndClear(placeId);
                      },
                    );
                  },
                ),
              ),
          ],
        )
      ]),
    );
  }
}
