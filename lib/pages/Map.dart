import 'dart:developer';

import 'package:barinsatu/ads/bloc/map_ad_bloc.dart';
import 'package:barinsatu/ads/models/ad.dart';
import 'package:barinsatu/ads/repositories/ad_repo.dart';
import 'package:barinsatu/pages/ad/DetailPage.dart';
import 'package:barinsatu/utils/DateFormatter.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
import 'package:provider/src/provider.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class Map extends StatefulWidget {
  const Map({Key? key}) : super(key: key);

  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {
  late GoogleMapController _controller;

  final priceFormat = NumberFormat("#,##0", "en_US");

  final CameraPosition _kGooglePlex = const CameraPosition(
    target: LatLng(42.340782, 69.596329),
    zoom: 14.4746,
  );

  final CameraPosition _kLake = const CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(42.340782, 69.596329),
      tilt: 59.440717697143555,
      zoom: 18);

  Set<Marker> markers = {};

  void getMarkers() async {
    AdRepo adRepo = AdRepo();
    List<Ad> ads = await adRepo.getMapAds();

    for (Ad element in ads) {
      if (element.lat != null && element.lng != null) {
        print('added');
        if (mounted) {
          setState(() {
            markers.add(Marker(
              markerId: MarkerId(element.title.toString()),
              position: LatLng(element.lat!, element.lng!),
              onTap: () {
                showAsBottomSheet(element);
              },
              infoWindow: InfoWindow(
                //popup info
                title: element.title.toString(),
              ),
              icon: customIcon, //Icon for Marker
            ));
          });
        }
      }
    }
  }

  @override
  void initState() {
    getMarkers();
    setCustomMarker();
    super.initState();
  }

  late BitmapDescriptor customIcon;

  void setCustomMarker() async {
    customIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(devicePixelRatio: 2.5), 'assets/marker.png');
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  final ScrollController bsController = ScrollController();

  Widget buildAdImage(List<Images> list) {
    if (list.isNotEmpty) {
      return ExtendedImage.network(
        list[0].image,
        width: 100,
        height: 100,
        fit: BoxFit.cover,
        cache: true,
      );
    }

    return Image.asset(
      'assets/no-image.jpeg',
      width: 100,
      height: 100,
      fit: BoxFit.cover,
    );
  }

  DateFormatter dataFormatter = DateFormatter();
  void showAsBottomSheet(Ad ad) async {
    final result = await showSlidingBottomSheet(context, builder: (context) {
      return SlidingSheetDialog(
        elevation: 3,
        duration: const Duration(milliseconds: 300),
        cornerRadius: 16,
        snapSpec: const SnapSpec(
          snap: true,
          snappings: [0.4, 0.7, 1.0],
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        builder: (context, state) {
          return Container(
              padding: const EdgeInsets.all(18),
              color: Colors.white,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => DetailPage(item: ad)),
                      );
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: buildAdImage(ad.images)),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(ad.title,
                                  style: Theme.of(context).textTheme.headline6),
                              const SizedBox(
                                height: 17,
                              ),
                              Text(
                                'Цена',
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(priceFormat.format(ad.price),
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5!
                                      .copyWith(fontWeight: FontWeight.bold))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Text(
                        'Описание',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                        dataFormatter
                            .getVerboseDateTimeRepresentation(ad.created_at),
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  )
                ],
              ));
        },
      );
    });

    print(result); // This is the result.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: GoogleMap(
                mapToolbarEnabled: true,
                zoomGesturesEnabled: true,
                scrollGesturesEnabled: true,
                rotateGesturesEnabled: true,
                mapType: MapType.normal,
                initialCameraPosition: _kGooglePlex,
                markers: markers,
                onMapCreated: (GoogleMapController controller) {
                  _controller = controller;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
