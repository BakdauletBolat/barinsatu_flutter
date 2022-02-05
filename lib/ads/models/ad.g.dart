// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ad.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AdResponse _$$_AdResponseFromJson(Map<String, dynamic> json) =>
    _$_AdResponse(
      count: json['count'] as int,
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>)
          .map((e) => Ad.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AdResponseToJson(_$_AdResponse instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };

_$_Ad _$$_AdFromJson(Map<String, dynamic> json) => _$_Ad(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      price: json['price'] as int,
      location_text: json['location_text'] as String?,
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
      ad_detail_type: json['ad_detail_type'] == null
          ? null
          : AdDetailType.fromJson(
              json['ad_detail_type'] as Map<String, dynamic>),
      ad_type: json['ad_type'] == null
          ? null
          : AdType.fromJson(json['ad_type'] as Map<String, dynamic>),
      details: json['details'] == null
          ? null
          : Details.fromJson(json['details'] as Map<String, dynamic>),
      city: json['city'] == null
          ? null
          : City.fromJson(json['city'] as Map<String, dynamic>),
      author: json['author'] == null
          ? null
          : User.fromJson(json['author'] as Map<String, dynamic>),
      likes: (json['likes'] as List<dynamic>)
          .map((e) => Like.fromJson(e as Map<String, dynamic>))
          .toList(),
      images: (json['images'] as List<dynamic>)
          .map((e) => Images.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AdToJson(_$_Ad instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'location_text': instance.location_text,
      'lat': instance.lat,
      'lng': instance.lng,
      'ad_detail_type': instance.ad_detail_type,
      'ad_type': instance.ad_type,
      'details': instance.details,
      'city': instance.city,
      'author': instance.author,
      'likes': instance.likes,
      'images': instance.images,
    };

_$_Communications _$$_CommunicationsFromJson(Map<String, dynamic> json) =>
    _$_Communications(
      id: json['id'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_CommunicationsToJson(_$_Communications instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$_RepairType _$$_RepairTypeFromJson(Map<String, dynamic> json) =>
    _$_RepairType(
      id: json['id'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_RepairTypeToJson(_$_RepairType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$_BuildingType _$$_BuildingTypeFromJson(Map<String, dynamic> json) =>
    _$_BuildingType(
      id: json['id'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_BuildingTypeToJson(_$_BuildingType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$_Details _$$_DetailsFromJson(Map<String, dynamic> json) => _$_Details(
      id: json['id'] as int,
      numbers_room: json['numbers_room'] as int?,
      total_area: json['total_area'] as int,
      year_construction: json['year_construction'] as int?,
      communications: (json['communications'] as List<dynamic>?)
          ?.map((e) => Communications.fromJson(e as Map<String, dynamic>))
          .toList(),
      building_type: json['building_type'] == null
          ? null
          : BuildingType.fromJson(
              json['building_type'] as Map<String, dynamic>),
      repair_type: json['repair_type'] == null
          ? null
          : RepairType.fromJson(json['repair_type'] as Map<String, dynamic>),
      floor: json['floor'] as int?,
      total_floor: json['total_floor'] as int?,
    );

Map<String, dynamic> _$$_DetailsToJson(_$_Details instance) =>
    <String, dynamic>{
      'id': instance.id,
      'numbers_room': instance.numbers_room,
      'total_area': instance.total_area,
      'year_construction': instance.year_construction,
      'communications': instance.communications,
      'building_type': instance.building_type,
      'repair_type': instance.repair_type,
      'floor': instance.floor,
      'total_floor': instance.total_floor,
    };

_$_AdDetailType _$$_AdDetailTypeFromJson(Map<String, dynamic> json) =>
    _$_AdDetailType(
      id: json['id'] as int,
      name: json['name'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$_AdDetailTypeToJson(_$_AdDetailType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'title': instance.title,
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

_$_Like _$$_LikeFromJson(Map<String, dynamic> json) => _$_Like(
      id: json['id'] as int,
      user: json['user'] as int,
      ad: json['ad'] as int,
      isLiked: json['isLiked'] as bool,
      created_at: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$_LikeToJson(_$_Like instance) => <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'ad': instance.ad,
      'isLiked': instance.isLiked,
      'created_at': instance.created_at.toIso8601String(),
    };

_$_Images _$$_ImagesFromJson(Map<String, dynamic> json) => _$_Images(
      id: json['id'] as int,
      image: json['image'] as String,
    );

Map<String, dynamic> _$$_ImagesToJson(_$_Images instance) => <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
    };
