// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ad.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Ad _$AdFromJson(Map<String, dynamic> json) {
  return _Ad.fromJson(json);
}

/// @nodoc
class _$AdTearOff {
  const _$AdTearOff();

  _Ad call(
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
      required List<Images> images}) {
    return _Ad(
      id: id,
      title: title,
      description: description,
      price: price,
      locationText: locationText,
      area: area,
      lat: lat,
      lng: lng,
      ad_detail_type: ad_detail_type,
      ad_type: ad_type,
      numbers_room: numbers_room,
      total_area: total_area,
      year_construction: year_construction,
      floor: floor,
      city: city,
      author: author,
      images: images,
    );
  }

  Ad fromJson(Map<String, Object?> json) {
    return Ad.fromJson(json);
  }
}

/// @nodoc
const $Ad = _$AdTearOff();

/// @nodoc
mixin _$Ad {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String? get locationText => throw _privateConstructorUsedError;
  int? get area => throw _privateConstructorUsedError;
  int? get lat => throw _privateConstructorUsedError;
  int? get lng => throw _privateConstructorUsedError;
  AdDetailType? get ad_detail_type => throw _privateConstructorUsedError;
  AdType? get ad_type => throw _privateConstructorUsedError;
  int? get numbers_room => throw _privateConstructorUsedError;
  int? get total_area => throw _privateConstructorUsedError;
  int? get year_construction => throw _privateConstructorUsedError;
  int? get floor => throw _privateConstructorUsedError;
  City? get city => throw _privateConstructorUsedError;
  User? get author => throw _privateConstructorUsedError;
  List<Images> get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdCopyWith<Ad> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdCopyWith<$Res> {
  factory $AdCopyWith(Ad value, $Res Function(Ad) then) =
      _$AdCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      String description,
      int price,
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
      List<Images> images});

  $AdDetailTypeCopyWith<$Res>? get ad_detail_type;
  $AdTypeCopyWith<$Res>? get ad_type;
  $CityCopyWith<$Res>? get city;
  $UserCopyWith<$Res>? get author;
}

/// @nodoc
class _$AdCopyWithImpl<$Res> implements $AdCopyWith<$Res> {
  _$AdCopyWithImpl(this._value, this._then);

  final Ad _value;
  // ignore: unused_field
  final $Res Function(Ad) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? locationText = freezed,
    Object? area = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? ad_detail_type = freezed,
    Object? ad_type = freezed,
    Object? numbers_room = freezed,
    Object? total_area = freezed,
    Object? year_construction = freezed,
    Object? floor = freezed,
    Object? city = freezed,
    Object? author = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      locationText: locationText == freezed
          ? _value.locationText
          : locationText // ignore: cast_nullable_to_non_nullable
              as String?,
      area: area == freezed
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as int?,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as int?,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as int?,
      ad_detail_type: ad_detail_type == freezed
          ? _value.ad_detail_type
          : ad_detail_type // ignore: cast_nullable_to_non_nullable
              as AdDetailType?,
      ad_type: ad_type == freezed
          ? _value.ad_type
          : ad_type // ignore: cast_nullable_to_non_nullable
              as AdType?,
      numbers_room: numbers_room == freezed
          ? _value.numbers_room
          : numbers_room // ignore: cast_nullable_to_non_nullable
              as int?,
      total_area: total_area == freezed
          ? _value.total_area
          : total_area // ignore: cast_nullable_to_non_nullable
              as int?,
      year_construction: year_construction == freezed
          ? _value.year_construction
          : year_construction // ignore: cast_nullable_to_non_nullable
              as int?,
      floor: floor == freezed
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City?,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as User?,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Images>,
    ));
  }

  @override
  $AdDetailTypeCopyWith<$Res>? get ad_detail_type {
    if (_value.ad_detail_type == null) {
      return null;
    }

    return $AdDetailTypeCopyWith<$Res>(_value.ad_detail_type!, (value) {
      return _then(_value.copyWith(ad_detail_type: value));
    });
  }

  @override
  $AdTypeCopyWith<$Res>? get ad_type {
    if (_value.ad_type == null) {
      return null;
    }

    return $AdTypeCopyWith<$Res>(_value.ad_type!, (value) {
      return _then(_value.copyWith(ad_type: value));
    });
  }

  @override
  $CityCopyWith<$Res>? get city {
    if (_value.city == null) {
      return null;
    }

    return $CityCopyWith<$Res>(_value.city!, (value) {
      return _then(_value.copyWith(city: value));
    });
  }

  @override
  $UserCopyWith<$Res>? get author {
    if (_value.author == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.author!, (value) {
      return _then(_value.copyWith(author: value));
    });
  }
}

/// @nodoc
abstract class _$AdCopyWith<$Res> implements $AdCopyWith<$Res> {
  factory _$AdCopyWith(_Ad value, $Res Function(_Ad) then) =
      __$AdCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      String description,
      int price,
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
      List<Images> images});

  @override
  $AdDetailTypeCopyWith<$Res>? get ad_detail_type;
  @override
  $AdTypeCopyWith<$Res>? get ad_type;
  @override
  $CityCopyWith<$Res>? get city;
  @override
  $UserCopyWith<$Res>? get author;
}

/// @nodoc
class __$AdCopyWithImpl<$Res> extends _$AdCopyWithImpl<$Res>
    implements _$AdCopyWith<$Res> {
  __$AdCopyWithImpl(_Ad _value, $Res Function(_Ad) _then)
      : super(_value, (v) => _then(v as _Ad));

  @override
  _Ad get _value => super._value as _Ad;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? locationText = freezed,
    Object? area = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? ad_detail_type = freezed,
    Object? ad_type = freezed,
    Object? numbers_room = freezed,
    Object? total_area = freezed,
    Object? year_construction = freezed,
    Object? floor = freezed,
    Object? city = freezed,
    Object? author = freezed,
    Object? images = freezed,
  }) {
    return _then(_Ad(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      locationText: locationText == freezed
          ? _value.locationText
          : locationText // ignore: cast_nullable_to_non_nullable
              as String?,
      area: area == freezed
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as int?,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as int?,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as int?,
      ad_detail_type: ad_detail_type == freezed
          ? _value.ad_detail_type
          : ad_detail_type // ignore: cast_nullable_to_non_nullable
              as AdDetailType?,
      ad_type: ad_type == freezed
          ? _value.ad_type
          : ad_type // ignore: cast_nullable_to_non_nullable
              as AdType?,
      numbers_room: numbers_room == freezed
          ? _value.numbers_room
          : numbers_room // ignore: cast_nullable_to_non_nullable
              as int?,
      total_area: total_area == freezed
          ? _value.total_area
          : total_area // ignore: cast_nullable_to_non_nullable
              as int?,
      year_construction: year_construction == freezed
          ? _value.year_construction
          : year_construction // ignore: cast_nullable_to_non_nullable
              as int?,
      floor: floor == freezed
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City?,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as User?,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Images>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Ad implements _Ad {
  const _$_Ad(
      {required this.id,
      required this.title,
      required this.description,
      required this.price,
      this.locationText,
      this.area,
      this.lat,
      this.lng,
      this.ad_detail_type,
      this.ad_type,
      this.numbers_room,
      this.total_area,
      this.year_construction,
      this.floor,
      this.city,
      this.author,
      required this.images});

  factory _$_Ad.fromJson(Map<String, dynamic> json) => _$$_AdFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  final int price;
  @override
  final String? locationText;
  @override
  final int? area;
  @override
  final int? lat;
  @override
  final int? lng;
  @override
  final AdDetailType? ad_detail_type;
  @override
  final AdType? ad_type;
  @override
  final int? numbers_room;
  @override
  final int? total_area;
  @override
  final int? year_construction;
  @override
  final int? floor;
  @override
  final City? city;
  @override
  final User? author;
  @override
  final List<Images> images;

  @override
  String toString() {
    return 'Ad(id: $id, title: $title, description: $description, price: $price, locationText: $locationText, area: $area, lat: $lat, lng: $lng, ad_detail_type: $ad_detail_type, ad_type: $ad_type, numbers_room: $numbers_room, total_area: $total_area, year_construction: $year_construction, floor: $floor, city: $city, author: $author, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Ad &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other.locationText, locationText) &&
            const DeepCollectionEquality().equals(other.area, area) &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.lng, lng) &&
            const DeepCollectionEquality()
                .equals(other.ad_detail_type, ad_detail_type) &&
            const DeepCollectionEquality().equals(other.ad_type, ad_type) &&
            const DeepCollectionEquality()
                .equals(other.numbers_room, numbers_room) &&
            const DeepCollectionEquality()
                .equals(other.total_area, total_area) &&
            const DeepCollectionEquality()
                .equals(other.year_construction, year_construction) &&
            const DeepCollectionEquality().equals(other.floor, floor) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality().equals(other.images, images));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(locationText),
      const DeepCollectionEquality().hash(area),
      const DeepCollectionEquality().hash(lat),
      const DeepCollectionEquality().hash(lng),
      const DeepCollectionEquality().hash(ad_detail_type),
      const DeepCollectionEquality().hash(ad_type),
      const DeepCollectionEquality().hash(numbers_room),
      const DeepCollectionEquality().hash(total_area),
      const DeepCollectionEquality().hash(year_construction),
      const DeepCollectionEquality().hash(floor),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(images));

  @JsonKey(ignore: true)
  @override
  _$AdCopyWith<_Ad> get copyWith => __$AdCopyWithImpl<_Ad>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdToJson(this);
  }
}

abstract class _Ad implements Ad {
  const factory _Ad(
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
      required List<Images> images}) = _$_Ad;

  factory _Ad.fromJson(Map<String, dynamic> json) = _$_Ad.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  int get price;
  @override
  String? get locationText;
  @override
  int? get area;
  @override
  int? get lat;
  @override
  int? get lng;
  @override
  AdDetailType? get ad_detail_type;
  @override
  AdType? get ad_type;
  @override
  int? get numbers_room;
  @override
  int? get total_area;
  @override
  int? get year_construction;
  @override
  int? get floor;
  @override
  City? get city;
  @override
  User? get author;
  @override
  List<Images> get images;
  @override
  @JsonKey(ignore: true)
  _$AdCopyWith<_Ad> get copyWith => throw _privateConstructorUsedError;
}

AdDetailType _$AdDetailTypeFromJson(Map<String, dynamic> json) {
  return _AdDetailType.fromJson(json);
}

/// @nodoc
class _$AdDetailTypeTearOff {
  const _$AdDetailTypeTearOff();

  _AdDetailType call({required int id, required String name}) {
    return _AdDetailType(
      id: id,
      name: name,
    );
  }

  AdDetailType fromJson(Map<String, Object?> json) {
    return AdDetailType.fromJson(json);
  }
}

/// @nodoc
const $AdDetailType = _$AdDetailTypeTearOff();

/// @nodoc
mixin _$AdDetailType {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdDetailTypeCopyWith<AdDetailType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdDetailTypeCopyWith<$Res> {
  factory $AdDetailTypeCopyWith(
          AdDetailType value, $Res Function(AdDetailType) then) =
      _$AdDetailTypeCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$AdDetailTypeCopyWithImpl<$Res> implements $AdDetailTypeCopyWith<$Res> {
  _$AdDetailTypeCopyWithImpl(this._value, this._then);

  final AdDetailType _value;
  // ignore: unused_field
  final $Res Function(AdDetailType) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AdDetailTypeCopyWith<$Res>
    implements $AdDetailTypeCopyWith<$Res> {
  factory _$AdDetailTypeCopyWith(
          _AdDetailType value, $Res Function(_AdDetailType) then) =
      __$AdDetailTypeCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$AdDetailTypeCopyWithImpl<$Res> extends _$AdDetailTypeCopyWithImpl<$Res>
    implements _$AdDetailTypeCopyWith<$Res> {
  __$AdDetailTypeCopyWithImpl(
      _AdDetailType _value, $Res Function(_AdDetailType) _then)
      : super(_value, (v) => _then(v as _AdDetailType));

  @override
  _AdDetailType get _value => super._value as _AdDetailType;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_AdDetailType(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AdDetailType implements _AdDetailType {
  const _$_AdDetailType({required this.id, required this.name});

  factory _$_AdDetailType.fromJson(Map<String, dynamic> json) =>
      _$$_AdDetailTypeFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'AdDetailType(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdDetailType &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$AdDetailTypeCopyWith<_AdDetailType> get copyWith =>
      __$AdDetailTypeCopyWithImpl<_AdDetailType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdDetailTypeToJson(this);
  }
}

abstract class _AdDetailType implements AdDetailType {
  const factory _AdDetailType({required int id, required String name}) =
      _$_AdDetailType;

  factory _AdDetailType.fromJson(Map<String, dynamic> json) =
      _$_AdDetailType.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$AdDetailTypeCopyWith<_AdDetailType> get copyWith =>
      throw _privateConstructorUsedError;
}

AdType _$AdTypeFromJson(Map<String, dynamic> json) {
  return _AdType.fromJson(json);
}

/// @nodoc
class _$AdTypeTearOff {
  const _$AdTypeTearOff();

  _AdType call({required int id, required String name}) {
    return _AdType(
      id: id,
      name: name,
    );
  }

  AdType fromJson(Map<String, Object?> json) {
    return AdType.fromJson(json);
  }
}

/// @nodoc
const $AdType = _$AdTypeTearOff();

/// @nodoc
mixin _$AdType {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdTypeCopyWith<AdType> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdTypeCopyWith<$Res> {
  factory $AdTypeCopyWith(AdType value, $Res Function(AdType) then) =
      _$AdTypeCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$AdTypeCopyWithImpl<$Res> implements $AdTypeCopyWith<$Res> {
  _$AdTypeCopyWithImpl(this._value, this._then);

  final AdType _value;
  // ignore: unused_field
  final $Res Function(AdType) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AdTypeCopyWith<$Res> implements $AdTypeCopyWith<$Res> {
  factory _$AdTypeCopyWith(_AdType value, $Res Function(_AdType) then) =
      __$AdTypeCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$AdTypeCopyWithImpl<$Res> extends _$AdTypeCopyWithImpl<$Res>
    implements _$AdTypeCopyWith<$Res> {
  __$AdTypeCopyWithImpl(_AdType _value, $Res Function(_AdType) _then)
      : super(_value, (v) => _then(v as _AdType));

  @override
  _AdType get _value => super._value as _AdType;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_AdType(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AdType implements _AdType {
  const _$_AdType({required this.id, required this.name});

  factory _$_AdType.fromJson(Map<String, dynamic> json) =>
      _$$_AdTypeFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'AdType(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdType &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$AdTypeCopyWith<_AdType> get copyWith =>
      __$AdTypeCopyWithImpl<_AdType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdTypeToJson(this);
  }
}

abstract class _AdType implements AdType {
  const factory _AdType({required int id, required String name}) = _$_AdType;

  factory _AdType.fromJson(Map<String, dynamic> json) = _$_AdType.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$AdTypeCopyWith<_AdType> get copyWith => throw _privateConstructorUsedError;
}

City _$CityFromJson(Map<String, dynamic> json) {
  return _City.fromJson(json);
}

/// @nodoc
class _$CityTearOff {
  const _$CityTearOff();

  _City call({required int id, required String name}) {
    return _City(
      id: id,
      name: name,
    );
  }

  City fromJson(Map<String, Object?> json) {
    return City.fromJson(json);
  }
}

/// @nodoc
const $City = _$CityTearOff();

/// @nodoc
mixin _$City {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityCopyWith<City> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityCopyWith<$Res> {
  factory $CityCopyWith(City value, $Res Function(City) then) =
      _$CityCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$CityCopyWithImpl<$Res> implements $CityCopyWith<$Res> {
  _$CityCopyWithImpl(this._value, this._then);

  final City _value;
  // ignore: unused_field
  final $Res Function(City) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CityCopyWith<$Res> implements $CityCopyWith<$Res> {
  factory _$CityCopyWith(_City value, $Res Function(_City) then) =
      __$CityCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$CityCopyWithImpl<$Res> extends _$CityCopyWithImpl<$Res>
    implements _$CityCopyWith<$Res> {
  __$CityCopyWithImpl(_City _value, $Res Function(_City) _then)
      : super(_value, (v) => _then(v as _City));

  @override
  _City get _value => super._value as _City;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_City(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_City implements _City {
  const _$_City({required this.id, required this.name});

  factory _$_City.fromJson(Map<String, dynamic> json) => _$$_CityFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'City(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _City &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$CityCopyWith<_City> get copyWith =>
      __$CityCopyWithImpl<_City>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CityToJson(this);
  }
}

abstract class _City implements City {
  const factory _City({required int id, required String name}) = _$_City;

  factory _City.fromJson(Map<String, dynamic> json) = _$_City.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$CityCopyWith<_City> get copyWith => throw _privateConstructorUsedError;
}

Images _$ImagesFromJson(Map<String, dynamic> json) {
  return _Images.fromJson(json);
}

/// @nodoc
class _$ImagesTearOff {
  const _$ImagesTearOff();

  _Images call({required int id, required String image}) {
    return _Images(
      id: id,
      image: image,
    );
  }

  Images fromJson(Map<String, Object?> json) {
    return Images.fromJson(json);
  }
}

/// @nodoc
const $Images = _$ImagesTearOff();

/// @nodoc
mixin _$Images {
  int get id => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImagesCopyWith<Images> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagesCopyWith<$Res> {
  factory $ImagesCopyWith(Images value, $Res Function(Images) then) =
      _$ImagesCopyWithImpl<$Res>;
  $Res call({int id, String image});
}

/// @nodoc
class _$ImagesCopyWithImpl<$Res> implements $ImagesCopyWith<$Res> {
  _$ImagesCopyWithImpl(this._value, this._then);

  final Images _value;
  // ignore: unused_field
  final $Res Function(Images) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ImagesCopyWith<$Res> implements $ImagesCopyWith<$Res> {
  factory _$ImagesCopyWith(_Images value, $Res Function(_Images) then) =
      __$ImagesCopyWithImpl<$Res>;
  @override
  $Res call({int id, String image});
}

/// @nodoc
class __$ImagesCopyWithImpl<$Res> extends _$ImagesCopyWithImpl<$Res>
    implements _$ImagesCopyWith<$Res> {
  __$ImagesCopyWithImpl(_Images _value, $Res Function(_Images) _then)
      : super(_value, (v) => _then(v as _Images));

  @override
  _Images get _value => super._value as _Images;

  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
  }) {
    return _then(_Images(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Images implements _Images {
  const _$_Images({required this.id, required this.image});

  factory _$_Images.fromJson(Map<String, dynamic> json) =>
      _$$_ImagesFromJson(json);

  @override
  final int id;
  @override
  final String image;

  @override
  String toString() {
    return 'Images(id: $id, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Images &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$ImagesCopyWith<_Images> get copyWith =>
      __$ImagesCopyWithImpl<_Images>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImagesToJson(this);
  }
}

abstract class _Images implements Images {
  const factory _Images({required int id, required String image}) = _$_Images;

  factory _Images.fromJson(Map<String, dynamic> json) = _$_Images.fromJson;

  @override
  int get id;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$ImagesCopyWith<_Images> get copyWith => throw _privateConstructorUsedError;
}
