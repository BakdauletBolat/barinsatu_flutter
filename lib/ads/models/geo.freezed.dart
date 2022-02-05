// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'geo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GeoResponse _$GeoResponseFromJson(Map<String, dynamic> json) {
  return _GeoResponse.fromJson(json);
}

/// @nodoc
class _$GeoResponseTearOff {
  const _$GeoResponseTearOff();

  _GeoResponse call({required List<Geo> predictions}) {
    return _GeoResponse(
      predictions: predictions,
    );
  }

  GeoResponse fromJson(Map<String, Object?> json) {
    return GeoResponse.fromJson(json);
  }
}

/// @nodoc
const $GeoResponse = _$GeoResponseTearOff();

/// @nodoc
mixin _$GeoResponse {
  List<Geo> get predictions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeoResponseCopyWith<GeoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoResponseCopyWith<$Res> {
  factory $GeoResponseCopyWith(
          GeoResponse value, $Res Function(GeoResponse) then) =
      _$GeoResponseCopyWithImpl<$Res>;
  $Res call({List<Geo> predictions});
}

/// @nodoc
class _$GeoResponseCopyWithImpl<$Res> implements $GeoResponseCopyWith<$Res> {
  _$GeoResponseCopyWithImpl(this._value, this._then);

  final GeoResponse _value;
  // ignore: unused_field
  final $Res Function(GeoResponse) _then;

  @override
  $Res call({
    Object? predictions = freezed,
  }) {
    return _then(_value.copyWith(
      predictions: predictions == freezed
          ? _value.predictions
          : predictions // ignore: cast_nullable_to_non_nullable
              as List<Geo>,
    ));
  }
}

/// @nodoc
abstract class _$GeoResponseCopyWith<$Res>
    implements $GeoResponseCopyWith<$Res> {
  factory _$GeoResponseCopyWith(
          _GeoResponse value, $Res Function(_GeoResponse) then) =
      __$GeoResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<Geo> predictions});
}

/// @nodoc
class __$GeoResponseCopyWithImpl<$Res> extends _$GeoResponseCopyWithImpl<$Res>
    implements _$GeoResponseCopyWith<$Res> {
  __$GeoResponseCopyWithImpl(
      _GeoResponse _value, $Res Function(_GeoResponse) _then)
      : super(_value, (v) => _then(v as _GeoResponse));

  @override
  _GeoResponse get _value => super._value as _GeoResponse;

  @override
  $Res call({
    Object? predictions = freezed,
  }) {
    return _then(_GeoResponse(
      predictions: predictions == freezed
          ? _value.predictions
          : predictions // ignore: cast_nullable_to_non_nullable
              as List<Geo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GeoResponse implements _GeoResponse {
  const _$_GeoResponse({required this.predictions});

  factory _$_GeoResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GeoResponseFromJson(json);

  @override
  final List<Geo> predictions;

  @override
  String toString() {
    return 'GeoResponse(predictions: $predictions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GeoResponse &&
            const DeepCollectionEquality()
                .equals(other.predictions, predictions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(predictions));

  @JsonKey(ignore: true)
  @override
  _$GeoResponseCopyWith<_GeoResponse> get copyWith =>
      __$GeoResponseCopyWithImpl<_GeoResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeoResponseToJson(this);
  }
}

abstract class _GeoResponse implements GeoResponse {
  const factory _GeoResponse({required List<Geo> predictions}) = _$_GeoResponse;

  factory _GeoResponse.fromJson(Map<String, dynamic> json) =
      _$_GeoResponse.fromJson;

  @override
  List<Geo> get predictions;
  @override
  @JsonKey(ignore: true)
  _$GeoResponseCopyWith<_GeoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Geo _$GeoFromJson(Map<String, dynamic> json) {
  return _Geo.fromJson(json);
}

/// @nodoc
class _$GeoTearOff {
  const _$GeoTearOff();

  _Geo call({required String description, required String place_id}) {
    return _Geo(
      description: description,
      place_id: place_id,
    );
  }

  Geo fromJson(Map<String, Object?> json) {
    return Geo.fromJson(json);
  }
}

/// @nodoc
const $Geo = _$GeoTearOff();

/// @nodoc
mixin _$Geo {
  String get description => throw _privateConstructorUsedError;
  String get place_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeoCopyWith<Geo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoCopyWith<$Res> {
  factory $GeoCopyWith(Geo value, $Res Function(Geo) then) =
      _$GeoCopyWithImpl<$Res>;
  $Res call({String description, String place_id});
}

/// @nodoc
class _$GeoCopyWithImpl<$Res> implements $GeoCopyWith<$Res> {
  _$GeoCopyWithImpl(this._value, this._then);

  final Geo _value;
  // ignore: unused_field
  final $Res Function(Geo) _then;

  @override
  $Res call({
    Object? description = freezed,
    Object? place_id = freezed,
  }) {
    return _then(_value.copyWith(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      place_id: place_id == freezed
          ? _value.place_id
          : place_id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GeoCopyWith<$Res> implements $GeoCopyWith<$Res> {
  factory _$GeoCopyWith(_Geo value, $Res Function(_Geo) then) =
      __$GeoCopyWithImpl<$Res>;
  @override
  $Res call({String description, String place_id});
}

/// @nodoc
class __$GeoCopyWithImpl<$Res> extends _$GeoCopyWithImpl<$Res>
    implements _$GeoCopyWith<$Res> {
  __$GeoCopyWithImpl(_Geo _value, $Res Function(_Geo) _then)
      : super(_value, (v) => _then(v as _Geo));

  @override
  _Geo get _value => super._value as _Geo;

  @override
  $Res call({
    Object? description = freezed,
    Object? place_id = freezed,
  }) {
    return _then(_Geo(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      place_id: place_id == freezed
          ? _value.place_id
          : place_id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Geo implements _Geo {
  const _$_Geo({required this.description, required this.place_id});

  factory _$_Geo.fromJson(Map<String, dynamic> json) => _$$_GeoFromJson(json);

  @override
  final String description;
  @override
  final String place_id;

  @override
  String toString() {
    return 'Geo(description: $description, place_id: $place_id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Geo &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.place_id, place_id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(place_id));

  @JsonKey(ignore: true)
  @override
  _$GeoCopyWith<_Geo> get copyWith =>
      __$GeoCopyWithImpl<_Geo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeoToJson(this);
  }
}

abstract class _Geo implements Geo {
  const factory _Geo({required String description, required String place_id}) =
      _$_Geo;

  factory _Geo.fromJson(Map<String, dynamic> json) = _$_Geo.fromJson;

  @override
  String get description;
  @override
  String get place_id;
  @override
  @JsonKey(ignore: true)
  _$GeoCopyWith<_Geo> get copyWith => throw _privateConstructorUsedError;
}

GeoDetail _$GeoDetailFromJson(Map<String, dynamic> json) {
  return _GeoDetail.fromJson(json);
}

/// @nodoc
class _$GeoDetailTearOff {
  const _$GeoDetailTearOff();

  _GeoDetail call({required double lat, required double lng}) {
    return _GeoDetail(
      lat: lat,
      lng: lng,
    );
  }

  GeoDetail fromJson(Map<String, Object?> json) {
    return GeoDetail.fromJson(json);
  }
}

/// @nodoc
const $GeoDetail = _$GeoDetailTearOff();

/// @nodoc
mixin _$GeoDetail {
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeoDetailCopyWith<GeoDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoDetailCopyWith<$Res> {
  factory $GeoDetailCopyWith(GeoDetail value, $Res Function(GeoDetail) then) =
      _$GeoDetailCopyWithImpl<$Res>;
  $Res call({double lat, double lng});
}

/// @nodoc
class _$GeoDetailCopyWithImpl<$Res> implements $GeoDetailCopyWith<$Res> {
  _$GeoDetailCopyWithImpl(this._value, this._then);

  final GeoDetail _value;
  // ignore: unused_field
  final $Res Function(GeoDetail) _then;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_value.copyWith(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$GeoDetailCopyWith<$Res> implements $GeoDetailCopyWith<$Res> {
  factory _$GeoDetailCopyWith(
          _GeoDetail value, $Res Function(_GeoDetail) then) =
      __$GeoDetailCopyWithImpl<$Res>;
  @override
  $Res call({double lat, double lng});
}

/// @nodoc
class __$GeoDetailCopyWithImpl<$Res> extends _$GeoDetailCopyWithImpl<$Res>
    implements _$GeoDetailCopyWith<$Res> {
  __$GeoDetailCopyWithImpl(_GeoDetail _value, $Res Function(_GeoDetail) _then)
      : super(_value, (v) => _then(v as _GeoDetail));

  @override
  _GeoDetail get _value => super._value as _GeoDetail;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_GeoDetail(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GeoDetail implements _GeoDetail {
  const _$_GeoDetail({required this.lat, required this.lng});

  factory _$_GeoDetail.fromJson(Map<String, dynamic> json) =>
      _$$_GeoDetailFromJson(json);

  @override
  final double lat;
  @override
  final double lng;

  @override
  String toString() {
    return 'GeoDetail(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GeoDetail &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.lng, lng));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(lat),
      const DeepCollectionEquality().hash(lng));

  @JsonKey(ignore: true)
  @override
  _$GeoDetailCopyWith<_GeoDetail> get copyWith =>
      __$GeoDetailCopyWithImpl<_GeoDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeoDetailToJson(this);
  }
}

abstract class _GeoDetail implements GeoDetail {
  const factory _GeoDetail({required double lat, required double lng}) =
      _$_GeoDetail;

  factory _GeoDetail.fromJson(Map<String, dynamic> json) =
      _$_GeoDetail.fromJson;

  @override
  double get lat;
  @override
  double get lng;
  @override
  @JsonKey(ignore: true)
  _$GeoDetailCopyWith<_GeoDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
