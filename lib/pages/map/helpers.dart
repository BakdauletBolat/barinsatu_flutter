import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';

import 'package:barinsatu/pages/map/Place.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:google_maps_cluster_manager/google_maps_cluster_manager.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/painting.dart' as Painting;

Future<Uint8List> _resizeImageBytes(
  Uint8List imageBytes,
  int targetWidth,
) async {
  final Codec imageCodec = await instantiateImageCodec(
    imageBytes,
    targetWidth: targetWidth,
  );

  final FrameInfo frameInfo = await imageCodec.getNextFrame();

  final data = await frameInfo.image.toByteData(format: ImageByteFormat.png);

  return data!.buffer.asUint8List();
}

Future<BitmapDescriptor> getMarkerImageFromUrl(
  String url, {
  int? targetWidth,
}) async {
  final File markerImageFile = await DefaultCacheManager().getSingleFile(url);

  Uint8List markerImageBytes = await markerImageFile.readAsBytes();

  if (targetWidth != null) {
    markerImageBytes = await _resizeImageBytes(
      markerImageBytes,
      targetWidth,
    );
  }

  return BitmapDescriptor.fromBytes(markerImageBytes);
}

Future<BitmapDescriptor> getMarkerBitmap(int size, {String? text}) async {
  if (kIsWeb) size = (size / 2).floor();

  final PictureRecorder pictureRecorder = PictureRecorder();
  final Canvas canvas = Canvas(pictureRecorder);
  final Paint paint1 = Paint()..color = const Color.fromRGBO(76, 136, 138, 1);
  final Paint paint2 = Paint()..color = Colors.white;

  canvas.drawCircle(Offset(size / 2, size / 2), size / 2.0, paint1);
  canvas.drawCircle(Offset(size / 2, size / 2), size / 2.2, paint2);
  canvas.drawCircle(Offset(size / 2, size / 2), size / 2.8, paint1);

  if (text != null) {
    Painting.TextPainter painter = Painting.TextPainter(
        textAlign: TextAlign.center, textDirection: Painting.TextDirection.ltr);
    painter.text = TextSpan(
      text: text,
      style: TextStyle(
          fontSize: size / 3,
          color: Colors.white,
          fontWeight: FontWeight.normal),
    );
    painter.layout();
    painter.paint(
      canvas,
      Offset(size / 2 - painter.width / 2, size / 2 - painter.height / 2),
    );
  }

  final img = await pictureRecorder.endRecording().toImage(size, size);
  final data = await img.toByteData(format: ImageByteFormat.png) as ByteData;

  return BitmapDescriptor.fromBytes(data.buffer.asUint8List());
}
