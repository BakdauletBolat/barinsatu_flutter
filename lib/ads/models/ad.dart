// ignore_for_file: non_constant_identifier_names

import 'package:barinsatu/authentication/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'ad.freezed.dart';
part 'ad.g.dart';

@freezed
class AdResponse with _$AdResponse {
  const factory AdResponse(
      {required int count,
      String? next,
      String? previous,
      required List<Ad> results}) = _AdResponse;

  factory AdResponse.fromJson(Map<String, dynamic> json) =>
      _$AdResponseFromJson(json);
}

@freezed
class MarkerAd with _$MarkerAd {
  const factory MarkerAd(
      {required int id,
      required String title,
      required double lat,
      required double lng}) = _MarkerAd;

  factory MarkerAd.fromJson(Map<String, dynamic> json) =>
      _$MarkerAdFromJson(json);
}

@freezed
class Ad with _$Ad {
  const factory Ad(
      {required int id,
      required String title,
      required String description,
      required int price,
      String? location_text,
      double? lat,
      double? lng,
      AdDetailType? ad_detail_type,
      AdType? ad_type,
      Details? details,
      required List<Comment> comments,
      City? city,
      User? author,
      required DateTime created_at,
      required List<Like> likes,
      required List<Images> images}) = _Ad;

  factory Ad.fromJson(Map<String, dynamic> json) => _$AdFromJson(json);
}

@freezed
class FilterData with _$FilterData {
  const factory FilterData(
      {int? adType,
      int? limit,
      int? buildingTypeHome,
      int? repairTypeHome,
      String? totalAreaHome,
      String? floorHome,
      String? numbersRoomHome}) = _FilterData;

  factory FilterData.fromJson(Map<String, dynamic> json) =>
      _$FilterDataFromJson(json);
}

@freezed
class Communications with _$Communications {
  const factory Communications({required int id, required String name}) =
      _Communications;

  factory Communications.fromJson(Map<String, dynamic> json) =>
      _$CommunicationsFromJson(json);
}

@freezed
class RepairType with _$RepairType {
  const factory RepairType({required int id, required String name}) =
      _RepairType;

  factory RepairType.fromJson(Map<String, dynamic> json) =>
      _$RepairTypeFromJson(json);
}

@freezed
class BuildingType with _$BuildingType {
  const factory BuildingType({required int id, required String name}) =
      _BuildingType;

  factory BuildingType.fromJson(Map<String, dynamic> json) =>
      _$BuildingTypeFromJson(json);
}

@freezed
class Details with _$Details {
  const factory Details(
      {required int id,
      int? numbers_room,
      required double total_area,
      required String total_area_string,
      int? year_construction,
      List<Communications>? communications,
      BuildingType? building_type,
      RepairType? repair_type,
      bool? is_pledge,
      bool? is_divisibility,
      int? floor,
      int? total_floor}) = _Details;

  factory Details.fromJson(Map<String, dynamic> json) =>
      _$DetailsFromJson(json);
}

@freezed
class AdDetailType with _$AdDetailType {
  const factory AdDetailType(
      {required int id,
      required String name,
      required String title}) = _AdDetailType;

  factory AdDetailType.fromJson(Map<String, dynamic> json) =>
      _$AdDetailTypeFromJson(json);
}

@freezed
class AdType with _$AdType {
  const factory AdType({required int id, required String name}) = _AdType;

  factory AdType.fromJson(Map<String, dynamic> json) => _$AdTypeFromJson(json);
}

@freezed
class City with _$City {
  const factory City({required int id, required String name}) = _City;

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}

@freezed
class Like with _$Like {
  const factory Like(
      {required int id,
      required int user,
      required int ad,
      required bool isLiked,
      required DateTime created_at}) = _Like;

  factory Like.fromJson(Map<String, dynamic> json) => _$LikeFromJson(json);
}

@freezed
class Comment with _$Comment {
  const factory Comment(
      {required String text,
      required User author,
      required int ad,
      required DateTime created_at}) = _Comment;

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);
}

@freezed
class Images with _$Images {
  const factory Images({required int id, required String image}) = _Images;

  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);
}
