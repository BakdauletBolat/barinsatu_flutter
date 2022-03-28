import 'dart:async';
import 'dart:developer';
import 'package:barinsatu/ads/models/ad.dart';
import 'package:barinsatu/ads/repositories/ad_repo.dart';
import 'package:barinsatu/pages/map/Place.dart';
import 'package:barinsatu/pages/map/helpers.dart';
import 'package:barinsatu/pages/map/modalScreen.dart';
import 'package:barinsatu/utils/DateFormatter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/services.dart';
import 'package:google_maps_cluster_manager/google_maps_cluster_manager.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';

class Map extends StatefulWidget {
  const Map({Key? key}) : super(key: key);

  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {
  final Completer<GoogleMapController> _mapController = Completer();
  ClusterManager? _manager;
  AdRepo adRepo = AdRepo();
  bool isLoading = false;
  GoogleMapController? _googleMapController;
  final String _markerImageUrl = 'http://87.249.53.253/static/images/home.png';
  late String _mapStyle;
  Set<Marker> markers = {};
  List<Place> items = [];

  late BitmapDescriptor customIcon;
  final CameraPosition _kGooglePlex = const CameraPosition(
    target: LatLng(42.340782, 69.596329),
    zoom: 12,
  );
  int groupValue = 2;
  DateFormatter dataFormatter = DateFormatter();

  @override
  void initState() {
    rootBundle.loadString('assets/map-style.txt').then((string) {
      _mapStyle = string;
    });
    _initMapMarkersAndManager();
    super.initState();
  }

  @override
  void dispose() {
    if (_googleMapController != null) {
      _googleMapController!.dispose();
    }

    super.dispose();
  }

  void _onMapCreated(GoogleMapController controller) async {
    _mapController.complete(controller);
    setState(() {
      _googleMapController = controller;
    });
    controller.setMapStyle(_mapStyle);
  }

  Future<Marker> Function(Cluster<Place>) get _markerBuilder =>
      (cluster) async {
        return Marker(
          markerId: MarkerId(cluster.getId()),
          position: cluster.location,
          onTap: () {
            showAsBottomSheet(cluster.items.toList(), context);
          },
          icon: cluster.isMultiple
              ? await getMarkerBitmap(cluster.isMultiple ? 125 : 75,
                  text: cluster.isMultiple ? cluster.count.toString() : null)
              : await getMarkerImageFromUrl(_markerImageUrl, targetWidth: 50),
        );
      };

  ClusterManager _initClusterManager(items) {
    return ClusterManager<Place>(items, _updateMarkers,
        markerBuilder: _markerBuilder,
        levels: [
          1,
          4.25,
          6,
          7,
          8,
          9,
          10,
          11,
          12,
          13,
          14,
        ],
        extraPercent: 20,
        stopClusteringZoom: 17.0);
  }

  void _updateMarkers(Set<Marker> markers) {
    setState(() {
      this.markers = markers;
    });
  }

  Future<List<Place>> getMarkerAds(ads) async {
    List<Place> adsPlace = [];
    for (var element in ads) {
      adsPlace.add(Place(
          name: element.title,
          latLng: LatLng(element.lat, element.lng),
          image: element.image,
          id: element.id,
          price: element.price));
    }

    return adsPlace;
  }

  Future<ClusterManager<ClusterItem>?> _initMapMarkersAndManager() async {
    setState(() {
      isLoading = true;
    });
    List<MarkerAd> ads = await adRepo.getMapAds();
    items = await getMarkerAds(ads);
    _manager = _initClusterManager(items);
    if (_manager != null) {
      _manager!.setMapId(_googleMapController!.mapId);
      _manager!.updateMap();
    }

    Future.delayed(const Duration(seconds: 1), () {
      log('i deleyed finish');
      _manager!.updateMap();
    });

    setState(() {
      isLoading = false;
    });

    return _manager;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: GoogleMap(
                mapToolbarEnabled: true,
                zoomGesturesEnabled: true,
                myLocationButtonEnabled: true,
                myLocationEnabled: true,
                zoomControlsEnabled: true,
                onCameraMove: (e) {
                  _manager?.onCameraMove(e);
                },
                initialCameraPosition: _kGooglePlex,
                markers: markers,
                onMapCreated: (controller) => _onMapCreated(controller),
                onCameraIdle: () {
                  _manager?.updateMap();
                }),
          ),
          if (isLoading)
            Positioned(
                child: SizedBox(
              height: MediaQuery.of(context).size.width / 3,
              width: MediaQuery.of(context).size.width / 3,
              child: const DecoratedBox(
                  decoration: BoxDecoration(color: Colors.white),
                  child: Center(child: CircularProgressIndicator())),
            )),
          Positioned(
              top: 20,
              left: 20,
              child: CupertinoSlidingSegmentedControl(
                  groupValue: groupValue,
                  children: const {
                    2: Text('Продажа'),
                    1: Padding(
                        padding: EdgeInsets.all(10), child: Text('Аренда'))
                  },
                  onValueChanged: (value) async {
                    setState(() {
                      isLoading = true;
                      groupValue = value as int;
                    });
                    List<MarkerAd> ads =
                        await adRepo.getMapAds(ad_type: value as int);
                    List<Place> rowItems = await getMarkerAds(ads);

                    _manager!.setItems(rowItems);
                    Future.delayed(const Duration(seconds: 1), () {
                      log('i deleyed finish');
                      _manager!.updateMap();
                    });

                    setState(() {
                      isLoading = false;
                    });
                  }))
        ],
      ),
    );
  }
}
