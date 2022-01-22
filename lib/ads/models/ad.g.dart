// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ad.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Ad _$$_AdFromJson(Map<String, dynamic> json) => _$_Ad(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      price: json['price'] as int,
      locationText: json['locationText'] as String?,
      area: json['area'] as int?,
      lat: json['lat'] as int?,
      lng: json['lng'] as int?,
      ad_detail_type: json['ad_detail_type'] == null
          ? null
          : AdDetailType.fromJson(
              json['ad_detail_type'] as Map<String, dynamic>),
      ad_type: json['ad_type'] == null
          ? null
          : AdType.fromJson(json['ad_type'] as Map<String, dynamic>),
      numbers_room: json['numbers_room'] as int?,
      total_area: json['total_area'] as int?,
      year_construction: json['year_construction'] as int?,
      floor: json['floor'] as int?,
      city: json['city'] == null
          ? null
          : City.fromJson(json['city'] as Map<String, dynamic>),
      author: json['author'] == null
          ? null
          : User.fromJson(json['author'] as Map<String, dynamic>),
      images: (json['images'] as List<dynamic>)
          .map((e) => Images.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AdToJson(_$_Ad instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'locationText': instance.locationText,
      'area': instance.area,
      'lat': instance.lat,
      'lng': instance.lng,
      'ad_detail_type': instance.ad_detail_type,
      'ad_type': instance.ad_type,
      'numbers_room': instance.numbers_room,
      'total_area': instance.total_area,
      'year_construction': instance.year_construction,
      'floor': instance.floor,
      'city': instance.city,
      'author': instance.author,
      'images': instance.images,
    };

_$_AdDetailType _$$_AdDetailTypeFromJson(Map<String, dynamic> json) =>
    _$_AdDetailType(
      id: json['id'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_AdDetailTypeToJson(_$_AdDetailType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$_AdType _$$_AdTypeFromJson(Map<String, dynamic> json) => _$_AdType(
      id: json['id'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_AdTypeToJson(_$_AdType instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$_City _$$_CityFromJson(Map<String, dynamic> json) => _$_City(
      id: json['id'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_CityToJson(_$_City instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$_Images _$$_ImagesFromJson(Map<String, dynamic> json) => _$_Images(
      id: json['id'] as int,
      image: json['image'] as String,
    );

Map<String, dynamic> _$$_ImagesToJson(_$_Images instance) => <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
    };
