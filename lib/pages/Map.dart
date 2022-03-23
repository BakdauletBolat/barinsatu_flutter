import 'dart:async';
import 'package:barinsatu/ads/models/ad.dart';
import 'package:barinsatu/ads/repositories/ad_repo.dart';
import 'package:barinsatu/pages/ad/DetailPage.dart';
import 'package:barinsatu/pages/map/MapMarker.dart';
import 'package:barinsatu/pages/map/map_helper.dart';
import 'package:barinsatu/utils/DateFormatter.dart';
import 'package:extended_image/extended_image.dart';
import 'package:fluster/fluster.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_cluster_manager/google_maps_cluster_manager.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class Place with ClusterItem {
  final String name;
  final LatLng latLng;

  Place({required this.name, required this.latLng});

  @override
  LatLng get location => latLng;
}

class Map extends StatefulWidget {
  const Map({Key? key}) : super(key: key);

  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {
  final Completer<GoogleMapController> _mapController = Completer();

  /// Set of displayed markers and cluster markers on the map
  final Set<Marker> _markers = {};

  /// Minimum zoom at which the markers will cluster
  final int _minClusterZoom = 0;

  /// Maximum zoom at which the markers will cluster
  final int _maxClusterZoom = 19;

  /// [Fluster] instance used to manage the clusters
  Fluster<MapMarker>? _clusterManager;

  /// Current map zoom. Initial zoom will be 15, street level
  double currentZoom = 15;

  double newZoom = 15;

  /// Url image used on normal markers
  final String _markerImageUrl = 'http://87.249.53.253/static/images/home.png';

  /// Color of the cluster circle
  final Color _clusterColor = Colors.blue;

  /// Color of the cluster text
  final Color _clusterTextColor = Colors.white;

  /// Called when the Google Map widget is created. Updates the map loading state
  /// and inits the markers.
  void _onMapCreated(GoogleMapController controller) {
    _mapController.complete(controller);

    setState(() {});

    _initMarkers();
  }

  /// Inits [Fluster] and all the markers with network images and updates the loading state.
  void _initMarkers() async {
    final List<MapMarker> markers = [];

    AdRepo adRepo = AdRepo();
    List<MarkerAd> ads = await adRepo.getMapAds();

    for (MarkerAd ad in ads) {
      final BitmapDescriptor markerImage =
          await MapHelper.getMarkerImageFromUrl(_markerImageUrl);

      markers.add(
        MapMarker(
          onTap: () {
            showAsBottomSheet(ad.id);
          },
          id: ad.title.toString(),
          position: LatLng(ad.lat, ad.lng),
          icon: markerImage,
        ),
      );
    }

    _clusterManager = await MapHelper.initClusterManager(
      markers,
      _minClusterZoom,
      _maxClusterZoom,
    );

    await _updateMarkers();
  }

  /// Gets the markers and clusters to be displayed on the map for the current zoom level and
  /// updates state.
  Future<void> _updateMarkers([double? updatedZoom]) async {
    if (mounted) {
      if (_clusterManager == null || updatedZoom == currentZoom) return;

      if (updatedZoom != null) {
        currentZoom = updatedZoom;
      }

      setState(() {});

      final updatedMarkers = await MapHelper.getClusterMarkers(
        _clusterManager,
        currentZoom,
        _clusterColor,
        _clusterTextColor,
        80,
      );

      _markers
        ..clear()
        ..addAll(updatedMarkers);

      setState(() {});
    }
  }

  final priceFormat = NumberFormat("#,##0", "en_US");

  final CameraPosition _kGooglePlex = const CameraPosition(
    target: LatLng(42.340782, 69.596329),
    zoom: 14.4746,
  );

  @override
  void initState() {
    // setCustomMarker();
    super.initState();
  }

  late BitmapDescriptor customIcon;

  void setCustomMarker() async {
    customIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(devicePixelRatio: 2.5), 'assets/marker.png');
  }

  @override
  void dispose() {
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

  Ad? currentAd;
  bool isLoading = false;

  DateFormatter dataFormatter = DateFormatter();
  void showAsBottomSheet(int id) async {
    setState(() {
      isLoading = true;
    });
    AdRepo adRepo = AdRepo();
    Ad ad = await adRepo.getSingleAd(id);
    setState(() {
      isLoading = false;
    });
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
          if (isLoading) {
            return Container(
              padding: const EdgeInsets.all(18),
              color: Colors.white,
              height: MediaQuery.of(context).size.height,
              child: const Center(child: CupertinoActivityIndicator()),
            );
          }
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
                myLocationButtonEnabled: true,
                myLocationEnabled: true,
                zoomControlsEnabled: true,
                onCameraMove: (position) {
                  if (position.zoom != null) {
                    newZoom = position.zoom;
                  }
                },
                initialCameraPosition: _kGooglePlex,
                markers: _markers,
                onMapCreated: (controller) => _onMapCreated(controller),
                onCameraIdle: () {
                  _updateMarkers(newZoom);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
