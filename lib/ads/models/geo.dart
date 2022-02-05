import 'package:barinsatu/authentication/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'geo.freezed.dart';
part 'geo.g.dart';

@freezed
class GeoResponse with _$GeoResponse {
  const factory GeoResponse({required List<Geo> predictions}) = _GeoResponse;

  factory GeoResponse.fromJson(Map<String, dynamic> json) =>
      _$GeoResponseFromJson(json);
}

@freezed
class Geo with _$Geo {
  const factory Geo({required String description, required String place_id}) =
      _Geo;

  factory Geo.fromJson(Map<String, dynamic> json) => _$GeoFromJson(json);
}

@freezed
class GeoDetail with _$GeoDetail {
  const factory GeoDetail({required double lat, required double lng}) =
      _GeoDetail;

  factory GeoDetail.fromJson(Map<String, dynamic> json) =>
      _$GeoDetailFromJson(json);
}
