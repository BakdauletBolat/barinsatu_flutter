import 'package:barinsatu/ads/models/ad.dart';
import 'package:google_maps_cluster_manager/google_maps_cluster_manager.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Place with ClusterItem {
  final String name;
  final LatLng latLng;
  final ImageAd? image;
  final double price;
  final int id;

  Place(
      {required this.name,
      required this.latLng,
      this.image,
      required this.id,
      required this.price});

  @override
  LatLng get location => latLng;
}
