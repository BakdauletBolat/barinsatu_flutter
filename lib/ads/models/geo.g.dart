// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GeoResponse _$$_GeoResponseFromJson(Map<String, dynamic> json) =>
    _$_GeoResponse(
      predictions: (json['predictions'] as List<dynamic>)
          .map((e) => Geo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GeoResponseToJson(_$_GeoResponse instance) =>
    <String, dynamic>{
      'predictions': instance.predictions,
    };

_$_Geo _$$_GeoFromJson(Map<String, dynamic> json) => _$_Geo(
      description: json['description'] as String,
      place_id: json['place_id'] as String,
    );

Map<String, dynamic> _$$_GeoToJson(_$_Geo instance) => <String, dynamic>{
      'description': instance.description,
      'place_id': instance.place_id,
    };

_$_GeoDetail _$$_GeoDetailFromJson(Map<String, dynamic> json) => _$_GeoDetail(
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
    );

Map<String, dynamic> _$$_GeoDetailToJson(_$_GeoDetail instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };
