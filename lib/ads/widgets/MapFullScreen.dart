import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapFullScreen extends StatefulWidget {
  const GoogleMapFullScreen(
      {Key? key, required this.onTap, this.location, required this.kGooglePlex})
      : super(key: key);

  final CameraPosition kGooglePlex;
  final Marker? location;
  final Function(LatLng)? onTap;

  @override
  State<GoogleMapFullScreen> createState() => _GoogleMapFullScreenState();
}

class _GoogleMapFullScreenState extends State<GoogleMapFullScreen> {
  late GoogleMapController _controller;

  Marker? marker;

  @override
  void initState() {
    if (widget.location != null) {
      marker = widget.location;
    }
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Выбор место'),
          actions: [
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text(
                  'Готово',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
        body: GoogleMap(
            onMapCreated: (GoogleMapController controller) {
              _controller = controller;
              controller.animateCamera(CameraUpdate.newCameraPosition(
                  CameraPosition(
                      zoom: 18,
                      target: widget.location != null
                          ? widget.location!.position
                          : widget.kGooglePlex.target)));
            },
            mapToolbarEnabled: true,
            myLocationEnabled: true,
            zoomGesturesEnabled: true,
            scrollGesturesEnabled: true,
            rotateGesturesEnabled: true,
            myLocationButtonEnabled: true,
            mapType: MapType.normal,
            initialCameraPosition: widget.kGooglePlex,
            markers: {
              if (marker != null) marker!,
            },
            onTap: (latLng) {
              print('marker');
              widget.onTap!(latLng);
              setState(() {
                if (marker != null) {
                  marker = marker!.copyWith(
                      positionParam: LatLng(latLng.latitude, latLng.longitude));
                } else {
                  marker = Marker(
                    markerId: const MarkerId('location'),
                    infoWindow: const InfoWindow(title: 'location'),
                    icon: BitmapDescriptor.defaultMarkerWithHue(
                        BitmapDescriptor.hueBlue),
                    position: LatLng(latLng.latitude, latLng.longitude),
                  );
                }
              });
            }));
  }
}
