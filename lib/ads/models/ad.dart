import 'package:barinsatu/authentication/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'ad.freezed.dart';
part 'ad.g.dart';

@freezed
class Ad with _$Ad {
  const factory Ad(
      {required int id,
      required String title,
      required String description,
      required int price,
      String? locationText,
      int? area,
      int? lat,
      int? lng,
      AdDetailType? ad_detail_type,
      AdType? ad_type,
      int? numbers_room,
      int? total_area,
      int? year_construction,
      int? floor,
      City? city,
      User? author,
      required List<Images> images}) = _Ad;

  factory Ad.fromJson(Map<String, dynamic> json) => _$AdFromJson(json);
}

@freezed
class AdDetailType with _$AdDetailType {
  const factory AdDetailType({required int id, required String name}) =
      _AdDetailType;

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
class Images with _$Images {
  const factory Images({required int id, required String image}) = _Images;

  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);
}
