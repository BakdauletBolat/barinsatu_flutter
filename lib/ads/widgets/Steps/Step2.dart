import 'package:barinsatu/ads/models/ad.dart';
import 'package:barinsatu/ads/models/geo.dart';
import 'package:barinsatu/ads/repositories/ad_repo.dart';
import 'package:barinsatu/ads/widgets/CustomTextField.dart';
import 'package:barinsatu/ads/widgets/MapFullScreen.dart';
import 'package:flutter/cupertino.dart';
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
  int cityValue = 0;
  AdRepo adRepo = AdRepo();
  List<Geo> predictions = [];
  late FocusNode myFocusNode;

  TextEditingController textEditingController = TextEditingController();

  final CameraPosition _kGooglePlex = const CameraPosition(
    target: LatLng(42.340782, 69.596329),
    zoom: 14.4746,
  );

  void getCities() async {
    cities = await adRepo.getCity(5);
  }

  void autoCompleteSearch(String value) async {
    GeoResponse response = await adRepo.getGeoCodes(value);
    if (response.predictions.isNotEmpty) {
      setState(() {
        predictions = [
          Geo.fromJson({"description": value, "place_id": "1"}),
          ...response.predictions
        ];
      });
    } else {
      setState(() {
        predictions = [
          Geo.fromJson({"description": value, "place_id": "1"}),
        ];
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
    myFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    _controller.dispose();
    myFocusNode.dispose();
    super.dispose();
  }

  void _insertText(String myText) {
    textEditingController.text = myText;
    FocusScope.of(context).unfocus();
  }

  void setPlaceAndClear(String placeId) async {
    if (placeId == "1") {
      setState(() {
        predictions = [];
      });
      return;
    }
    var res = await adRepo.getGeoDetail(placeId);
    widget.data.lat = res.lat;
    widget.data.lng = res.lng;

    locationTextController.text = res.lat.toString();
    _controller.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(zoom: 18, target: LatLng(res.lat, res.lng))));

    setState(() {
      predictions = [];

      if (location == null) {
        location = Marker(
          markerId: const MarkerId('location'),
          infoWindow: const InfoWindow(title: 'location'),
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
          position: LatLng(res.lat, res.lng),
        );
      } else {
        location = location!.copyWith(positionParam: LatLng(res.lat, res.lng));
      }
    });
  }

  void getDetail(String placeId) {}

  Marker? location;

  TextEditingController locationTextController = TextEditingController();

  late GoogleMapController _controller;

  double topInt = 120;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Stack(
        children: [
          Column(children: [
            if (cities.isNotEmpty)
              Center(
                child: Picker(
                  title: "???????????????? ??????????",
                  selectedValue: cityValue,
                  onSelectedItemChanged: setCityValue,
                  items: cities,
                ),
              ),
            TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                style: const TextStyle(color: Colors.white10),
                controller: locationTextController,
                decoration: const InputDecoration(
                  constraints: BoxConstraints(maxHeight: 30),
                  border: InputBorder.none,
                ),
                readOnly: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '?????????????????????? ?????????????????? ?????????? ?? ??????????';
                  }
                  return null;
                }),
            const SizedBox(
              height: 60,
            ),
            Container(
              margin: const EdgeInsets.only(top: 60),
              child: SizedBox(
                height: 300,
                child: GoogleMap(
                    mapToolbarEnabled: false,
                    myLocationEnabled: false,
                    zoomGesturesEnabled: false,
                    scrollGesturesEnabled: false,
                    rotateGesturesEnabled: false,
                    myLocationButtonEnabled: false,
                    mapType: MapType.normal,
                    initialCameraPosition: _kGooglePlex,
                    onMapCreated: (GoogleMapController controller) {
                      _controller = controller;
                    },
                    onTap: (lat) {
                      Function? onTap(latLng) {
                        setState(() {
                          widget.data.lat = latLng.latitude;
                          widget.data.lng = latLng.longitude;

                          _controller.animateCamera(
                              CameraUpdate.newCameraPosition(CameraPosition(
                                  zoom: 18,
                                  target: LatLng(
                                      latLng.latitude, latLng.longitude))));
                          if (location != null) {
                            location = location!.copyWith(
                                positionParam:
                                    LatLng(latLng.latitude, latLng.longitude));
                          } else {
                            locationTextController.text =
                                latLng.latitude.toString();
                            location = Marker(
                              markerId: const MarkerId('location'),
                              infoWindow: const InfoWindow(title: 'location'),
                              icon: BitmapDescriptor.defaultMarkerWithHue(
                                  BitmapDescriptor.hueBlue),
                              position:
                                  LatLng(latLng.latitude, latLng.longitude),
                            );
                          }
                        });
                      }

                      var route = CupertinoPageRoute(
                          builder: (context) => GoogleMapFullScreen(
                                onTap: onTap,
                                kGooglePlex: _kGooglePlex,
                                location: location,
                              ));
                      Navigator.push(context, route);
                    },
                    markers: {
                      if (location != null) location!,
                    }),
              ),
            )
          ]),
          Positioned(
            top: topInt,
            width: MediaQuery.of(context).size.width - 45,
            child: Focus(
              focusNode: myFocusNode,
              onFocusChange: (hasFocus) {
                if (hasFocus) {
                  setState(() {
                    topInt = 0;
                  });
                } else {
                  widget.formKey.currentState!.save();
                  setState(() {
                    topInt = 120;
                    predictions = [];
                  });
                }
              },
              child: CustomTextField(
                suffixIcon: TextButton(
                  onPressed: () {
                    myFocusNode.unfocus();
                    widget.formKey.currentState!.save();
                    setState(() {
                      predictions = [];
                    });
                  },
                  child: const Text('????????????'),
                ),
                whiteColor: true,
                padding: 0,
                onEditingComplete: () {},
                onSaved: (value) {
                  widget.data.location_text = value;
                },
                onValueChanged: (value) {
                  if (value.isNotEmpty) {
                    widget.data.location_text = value;
                    autoCompleteSearch(value);
                  } else {
                    if (predictions.isNotEmpty && mounted) {
                      setState(() {
                        predictions = [];
                      });
                    }
                  }
                },
                validation: true,
                controller: textEditingController,
                placeHolder: '???????????????? ??????????',
              ),
            ),
          ),
          if (topInt == 0)
            Positioned(
                height: 400,
                top: 50 + topInt,
                left: 0,
                width: MediaQuery.of(context).size.width,
                child: const DecoratedBox(
                  decoration: BoxDecoration(color: Colors.white),
                  child: SizedBox(
                    height: 400,
                    width: double.infinity,
                  ),
                )),
          if (predictions.isNotEmpty)
            Positioned(
              height: 400,
              top: 50 + topInt,
              left: 0,
              width: MediaQuery.of(context).size.width,
              child: Container(
                  height: 400,
                  width: double.infinity,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: ListView.builder(
                    itemCount: predictions.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Theme.of(context).primaryColor,
                          child: const Icon(
                            Icons.pin_drop,
                            color: Colors.white,
                          ),
                        ),
                        title: Text(predictions[index].description.toString()),
                        onTap: () {
                          String newText =
                              predictions[index].description.toString();
                          String placeId =
                              predictions[index].place_id.toString();
                          _insertText(newText);
                          widget.data.location_text = newText;
                          setPlaceAndClear(placeId);
                        },
                      );
                    },
                  )),
            )
        ],
      ),
    );
  }
}
