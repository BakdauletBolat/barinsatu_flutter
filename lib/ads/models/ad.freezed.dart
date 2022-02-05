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

AdResponse _$AdResponseFromJson(Map<String, dynamic> json) {
  return _AdResponse.fromJson(json);
}

/// @nodoc
class _$AdResponseTearOff {
  const _$AdResponseTearOff();

  _AdResponse call(
      {required int count,
      String? next,
      String? previous,
      required List<Ad> results}) {
    return _AdResponse(
      count: count,
      next: next,
      previous: previous,
      results: results,
    );
  }

  AdResponse fromJson(Map<String, Object?> json) {
    return AdResponse.fromJson(json);
  }
}

/// @nodoc
const $AdResponse = _$AdResponseTearOff();

/// @nodoc
mixin _$AdResponse {
  int get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<Ad> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdResponseCopyWith<AdResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdResponseCopyWith<$Res> {
  factory $AdResponseCopyWith(
          AdResponse value, $Res Function(AdResponse) then) =
      _$AdResponseCopyWithImpl<$Res>;
  $Res call({int count, String? next, String? previous, List<Ad> results});
}

/// @nodoc
class _$AdResponseCopyWithImpl<$Res> implements $AdResponseCopyWith<$Res> {
  _$AdResponseCopyWithImpl(this._value, this._then);

  final AdResponse _value;
  // ignore: unused_field
  final $Res Function(AdResponse) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: previous == freezed
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Ad>,
    ));
  }
}

/// @nodoc
abstract class _$AdResponseCopyWith<$Res> implements $AdResponseCopyWith<$Res> {
  factory _$AdResponseCopyWith(
          _AdResponse value, $Res Function(_AdResponse) then) =
      __$AdResponseCopyWithImpl<$Res>;
  @override
  $Res call({int count, String? next, String? previous, List<Ad> results});
}

/// @nodoc
class __$AdResponseCopyWithImpl<$Res> extends _$AdResponseCopyWithImpl<$Res>
    implements _$AdResponseCopyWith<$Res> {
  __$AdResponseCopyWithImpl(
      _AdResponse _value, $Res Function(_AdResponse) _then)
      : super(_value, (v) => _then(v as _AdResponse));

  @override
  _AdResponse get _value => super._value as _AdResponse;

  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_AdResponse(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: previous == freezed
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Ad>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AdResponse implements _AdResponse {
  const _$_AdResponse(
      {required this.count, this.next, this.previous, required this.results});

  factory _$_AdResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AdResponseFromJson(json);

  @override
  final int count;
  @override
  final String? next;
  @override
  final String? previous;
  @override
  final List<Ad> results;

  @override
  String toString() {
    return 'AdResponse(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdResponse &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality().equals(other.next, next) &&
            const DeepCollectionEquality().equals(other.previous, previous) &&
            const DeepCollectionEquality().equals(other.results, results));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(next),
      const DeepCollectionEquality().hash(previous),
      const DeepCollectionEquality().hash(results));

  @JsonKey(ignore: true)
  @override
  _$AdResponseCopyWith<_AdResponse> get copyWith =>
      __$AdResponseCopyWithImpl<_AdResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdResponseToJson(this);
  }
}

abstract class _AdResponse implements AdResponse {
  const factory _AdResponse(
      {required int count,
      String? next,
      String? previous,
      required List<Ad> results}) = _$_AdResponse;

  factory _AdResponse.fromJson(Map<String, dynamic> json) =
      _$_AdResponse.fromJson;

  @override
  int get count;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  List<Ad> get results;
  @override
  @JsonKey(ignore: true)
  _$AdResponseCopyWith<_AdResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

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
      String? location_text,
      double? lat,
      double? lng,
      AdDetailType? ad_detail_type,
      AdType? ad_type,
      Details? details,
      City? city,
      User? author,
      required List<Like> likes,
      required List<Images> images}) {
    return _Ad(
      id: id,
      title: title,
      description: description,
      price: price,
      location_text: location_text,
      lat: lat,
      lng: lng,
      ad_detail_type: ad_detail_type,
      ad_type: ad_type,
      details: details,
      city: city,
      author: author,
      likes: likes,
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
  String? get location_text => throw _privateConstructorUsedError;
  double? get lat => throw _privateConstructorUsedError;
  double? get lng => throw _privateConstructorUsedError;
  AdDetailType? get ad_detail_type => throw _privateConstructorUsedError;
  AdType? get ad_type => throw _privateConstructorUsedError;
  Details? get details => throw _privateConstructorUsedError;
  City? get city => throw _privateConstructorUsedError;
  User? get author => throw _privateConstructorUsedError;
  List<Like> get likes => throw _privateConstructorUsedError;
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
      String? location_text,
      double? lat,
      double? lng,
      AdDetailType? ad_detail_type,
      AdType? ad_type,
      Details? details,
      City? city,
      User? author,
      List<Like> likes,
      List<Images> images});

  $AdDetailTypeCopyWith<$Res>? get ad_detail_type;
  $AdTypeCopyWith<$Res>? get ad_type;
  $DetailsCopyWith<$Res>? get details;
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
    Object? location_text = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? ad_detail_type = freezed,
    Object? ad_type = freezed,
    Object? details = freezed,
    Object? city = freezed,
    Object? author = freezed,
    Object? likes = freezed,
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
      location_text: location_text == freezed
          ? _value.location_text
          : location_text // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
      ad_detail_type: ad_detail_type == freezed
          ? _value.ad_detail_type
          : ad_detail_type // ignore: cast_nullable_to_non_nullable
              as AdDetailType?,
      ad_type: ad_type == freezed
          ? _value.ad_type
          : ad_type // ignore: cast_nullable_to_non_nullable
              as AdType?,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as Details?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City?,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as User?,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<Like>,
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
  $DetailsCopyWith<$Res>? get details {
    if (_value.details == null) {
      return null;
    }

    return $DetailsCopyWith<$Res>(_value.details!, (value) {
      return _then(_value.copyWith(details: value));
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
      String? location_text,
      double? lat,
      double? lng,
      AdDetailType? ad_detail_type,
      AdType? ad_type,
      Details? details,
      City? city,
      User? author,
      List<Like> likes,
      List<Images> images});

  @override
  $AdDetailTypeCopyWith<$Res>? get ad_detail_type;
  @override
  $AdTypeCopyWith<$Res>? get ad_type;
  @override
  $DetailsCopyWith<$Res>? get details;
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
    Object? location_text = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? ad_detail_type = freezed,
    Object? ad_type = freezed,
    Object? details = freezed,
    Object? city = freezed,
    Object? author = freezed,
    Object? likes = freezed,
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
      location_text: location_text == freezed
          ? _value.location_text
          : location_text // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
      ad_detail_type: ad_detail_type == freezed
          ? _value.ad_detail_type
          : ad_detail_type // ignore: cast_nullable_to_non_nullable
              as AdDetailType?,
      ad_type: ad_type == freezed
          ? _value.ad_type
          : ad_type // ignore: cast_nullable_to_non_nullable
              as AdType?,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as Details?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City?,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as User?,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<Like>,
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
      this.location_text,
      this.lat,
      this.lng,
      this.ad_detail_type,
      this.ad_type,
      this.details,
      this.city,
      this.author,
      required this.likes,
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
  final String? location_text;
  @override
  final double? lat;
  @override
  final double? lng;
  @override
  final AdDetailType? ad_detail_type;
  @override
  final AdType? ad_type;
  @override
  final Details? details;
  @override
  final City? city;
  @override
  final User? author;
  @override
  final List<Like> likes;
  @override
  final List<Images> images;

  @override
  String toString() {
    return 'Ad(id: $id, title: $title, description: $description, price: $price, location_text: $location_text, lat: $lat, lng: $lng, ad_detail_type: $ad_detail_type, ad_type: $ad_type, details: $details, city: $city, author: $author, likes: $likes, images: $images)';
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
                .equals(other.location_text, location_text) &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.lng, lng) &&
            const DeepCollectionEquality()
                .equals(other.ad_detail_type, ad_detail_type) &&
            const DeepCollectionEquality().equals(other.ad_type, ad_type) &&
            const DeepCollectionEquality().equals(other.details, details) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality().equals(other.likes, likes) &&
            const DeepCollectionEquality().equals(other.images, images));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(location_text),
      const DeepCollectionEquality().hash(lat),
      const DeepCollectionEquality().hash(lng),
      const DeepCollectionEquality().hash(ad_detail_type),
      const DeepCollectionEquality().hash(ad_type),
      const DeepCollectionEquality().hash(details),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(likes),
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
      String? location_text,
      double? lat,
      double? lng,
      AdDetailType? ad_detail_type,
      AdType? ad_type,
      Details? details,
      City? city,
      User? author,
      required List<Like> likes,
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
  String? get location_text;
  @override
  double? get lat;
  @override
  double? get lng;
  @override
  AdDetailType? get ad_detail_type;
  @override
  AdType? get ad_type;
  @override
  Details? get details;
  @override
  City? get city;
  @override
  User? get author;
  @override
  List<Like> get likes;
  @override
  List<Images> get images;
  @override
  @JsonKey(ignore: true)
  _$AdCopyWith<_Ad> get copyWith => throw _privateConstructorUsedError;
}

Communications _$CommunicationsFromJson(Map<String, dynamic> json) {
  return _Communications.fromJson(json);
}

/// @nodoc
class _$CommunicationsTearOff {
  const _$CommunicationsTearOff();

  _Communications call({required int id, required String name}) {
    return _Communications(
      id: id,
      name: name,
    );
  }

  Communications fromJson(Map<String, Object?> json) {
    return Communications.fromJson(json);
  }
}

/// @nodoc
const $Communications = _$CommunicationsTearOff();

/// @nodoc
mixin _$Communications {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommunicationsCopyWith<Communications> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunicationsCopyWith<$Res> {
  factory $CommunicationsCopyWith(
          Communications value, $Res Function(Communications) then) =
      _$CommunicationsCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$CommunicationsCopyWithImpl<$Res>
    implements $CommunicationsCopyWith<$Res> {
  _$CommunicationsCopyWithImpl(this._value, this._then);

  final Communications _value;
  // ignore: unused_field
  final $Res Function(Communications) _then;

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
abstract class _$CommunicationsCopyWith<$Res>
    implements $CommunicationsCopyWith<$Res> {
  factory _$CommunicationsCopyWith(
          _Communications value, $Res Function(_Communications) then) =
      __$CommunicationsCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$CommunicationsCopyWithImpl<$Res>
    extends _$CommunicationsCopyWithImpl<$Res>
    implements _$CommunicationsCopyWith<$Res> {
  __$CommunicationsCopyWithImpl(
      _Communications _value, $Res Function(_Communications) _then)
      : super(_value, (v) => _then(v as _Communications));

  @override
  _Communications get _value => super._value as _Communications;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_Communications(
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
class _$_Communications implements _Communications {
  const _$_Communications({required this.id, required this.name});

  factory _$_Communications.fromJson(Map<String, dynamic> json) =>
      _$$_CommunicationsFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'Communications(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Communications &&
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
  _$CommunicationsCopyWith<_Communications> get copyWith =>
      __$CommunicationsCopyWithImpl<_Communications>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommunicationsToJson(this);
  }
}

abstract class _Communications implements Communications {
  const factory _Communications({required int id, required String name}) =
      _$_Communications;

  factory _Communications.fromJson(Map<String, dynamic> json) =
      _$_Communications.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$CommunicationsCopyWith<_Communications> get copyWith =>
      throw _privateConstructorUsedError;
}

RepairType _$RepairTypeFromJson(Map<String, dynamic> json) {
  return _RepairType.fromJson(json);
}

/// @nodoc
class _$RepairTypeTearOff {
  const _$RepairTypeTearOff();

  _RepairType call({required int id, required String name}) {
    return _RepairType(
      id: id,
      name: name,
    );
  }

  RepairType fromJson(Map<String, Object?> json) {
    return RepairType.fromJson(json);
  }
}

/// @nodoc
const $RepairType = _$RepairTypeTearOff();

/// @nodoc
mixin _$RepairType {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepairTypeCopyWith<RepairType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepairTypeCopyWith<$Res> {
  factory $RepairTypeCopyWith(
          RepairType value, $Res Function(RepairType) then) =
      _$RepairTypeCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$RepairTypeCopyWithImpl<$Res> implements $RepairTypeCopyWith<$Res> {
  _$RepairTypeCopyWithImpl(this._value, this._then);

  final RepairType _value;
  // ignore: unused_field
  final $Res Function(RepairType) _then;

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
abstract class _$RepairTypeCopyWith<$Res> implements $RepairTypeCopyWith<$Res> {
  factory _$RepairTypeCopyWith(
          _RepairType value, $Res Function(_RepairType) then) =
      __$RepairTypeCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$RepairTypeCopyWithImpl<$Res> extends _$RepairTypeCopyWithImpl<$Res>
    implements _$RepairTypeCopyWith<$Res> {
  __$RepairTypeCopyWithImpl(
      _RepairType _value, $Res Function(_RepairType) _then)
      : super(_value, (v) => _then(v as _RepairType));

  @override
  _RepairType get _value => super._value as _RepairType;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_RepairType(
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
class _$_RepairType implements _RepairType {
  const _$_RepairType({required this.id, required this.name});

  factory _$_RepairType.fromJson(Map<String, dynamic> json) =>
      _$$_RepairTypeFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'RepairType(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RepairType &&
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
  _$RepairTypeCopyWith<_RepairType> get copyWith =>
      __$RepairTypeCopyWithImpl<_RepairType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RepairTypeToJson(this);
  }
}

abstract class _RepairType implements RepairType {
  const factory _RepairType({required int id, required String name}) =
      _$_RepairType;

  factory _RepairType.fromJson(Map<String, dynamic> json) =
      _$_RepairType.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$RepairTypeCopyWith<_RepairType> get copyWith =>
      throw _privateConstructorUsedError;
}

BuildingType _$BuildingTypeFromJson(Map<String, dynamic> json) {
  return _BuildingType.fromJson(json);
}

/// @nodoc
class _$BuildingTypeTearOff {
  const _$BuildingTypeTearOff();

  _BuildingType call({required int id, required String name}) {
    return _BuildingType(
      id: id,
      name: name,
    );
  }

  BuildingType fromJson(Map<String, Object?> json) {
    return BuildingType.fromJson(json);
  }
}

/// @nodoc
const $BuildingType = _$BuildingTypeTearOff();

/// @nodoc
mixin _$BuildingType {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BuildingTypeCopyWith<BuildingType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuildingTypeCopyWith<$Res> {
  factory $BuildingTypeCopyWith(
          BuildingType value, $Res Function(BuildingType) then) =
      _$BuildingTypeCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$BuildingTypeCopyWithImpl<$Res> implements $BuildingTypeCopyWith<$Res> {
  _$BuildingTypeCopyWithImpl(this._value, this._then);

  final BuildingType _value;
  // ignore: unused_field
  final $Res Function(BuildingType) _then;

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
abstract class _$BuildingTypeCopyWith<$Res>
    implements $BuildingTypeCopyWith<$Res> {
  factory _$BuildingTypeCopyWith(
          _BuildingType value, $Res Function(_BuildingType) then) =
      __$BuildingTypeCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$BuildingTypeCopyWithImpl<$Res> extends _$BuildingTypeCopyWithImpl<$Res>
    implements _$BuildingTypeCopyWith<$Res> {
  __$BuildingTypeCopyWithImpl(
      _BuildingType _value, $Res Function(_BuildingType) _then)
      : super(_value, (v) => _then(v as _BuildingType));

  @override
  _BuildingType get _value => super._value as _BuildingType;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_BuildingType(
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
class _$_BuildingType implements _BuildingType {
  const _$_BuildingType({required this.id, required this.name});

  factory _$_BuildingType.fromJson(Map<String, dynamic> json) =>
      _$$_BuildingTypeFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'BuildingType(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BuildingType &&
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
  _$BuildingTypeCopyWith<_BuildingType> get copyWith =>
      __$BuildingTypeCopyWithImpl<_BuildingType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BuildingTypeToJson(this);
  }
}

abstract class _BuildingType implements BuildingType {
  const factory _BuildingType({required int id, required String name}) =
      _$_BuildingType;

  factory _BuildingType.fromJson(Map<String, dynamic> json) =
      _$_BuildingType.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$BuildingTypeCopyWith<_BuildingType> get copyWith =>
      throw _privateConstructorUsedError;
}

Details _$DetailsFromJson(Map<String, dynamic> json) {
  return _Details.fromJson(json);
}

/// @nodoc
class _$DetailsTearOff {
  const _$DetailsTearOff();

  _Details call(
      {required int id,
      int? numbers_room,
      required int total_area,
      int? year_construction,
      List<Communications>? communications,
      BuildingType? building_type,
      RepairType? repair_type,
      int? floor,
      int? total_floor}) {
    return _Details(
      id: id,
      numbers_room: numbers_room,
      total_area: total_area,
      year_construction: year_construction,
      communications: communications,
      building_type: building_type,
      repair_type: repair_type,
      floor: floor,
      total_floor: total_floor,
    );
  }

  Details fromJson(Map<String, Object?> json) {
    return Details.fromJson(json);
  }
}

/// @nodoc
const $Details = _$DetailsTearOff();

/// @nodoc
mixin _$Details {
  int get id => throw _privateConstructorUsedError;
  int? get numbers_room => throw _privateConstructorUsedError;
  int get total_area => throw _privateConstructorUsedError;
  int? get year_construction => throw _privateConstructorUsedError;
  List<Communications>? get communications =>
      throw _privateConstructorUsedError;
  BuildingType? get building_type => throw _privateConstructorUsedError;
  RepairType? get repair_type => throw _privateConstructorUsedError;
  int? get floor => throw _privateConstructorUsedError;
  int? get total_floor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailsCopyWith<Details> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsCopyWith<$Res> {
  factory $DetailsCopyWith(Details value, $Res Function(Details) then) =
      _$DetailsCopyWithImpl<$Res>;
  $Res call(
      {int id,
      int? numbers_room,
      int total_area,
      int? year_construction,
      List<Communications>? communications,
      BuildingType? building_type,
      RepairType? repair_type,
      int? floor,
      int? total_floor});

  $BuildingTypeCopyWith<$Res>? get building_type;
  $RepairTypeCopyWith<$Res>? get repair_type;
}

/// @nodoc
class _$DetailsCopyWithImpl<$Res> implements $DetailsCopyWith<$Res> {
  _$DetailsCopyWithImpl(this._value, this._then);

  final Details _value;
  // ignore: unused_field
  final $Res Function(Details) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? numbers_room = freezed,
    Object? total_area = freezed,
    Object? year_construction = freezed,
    Object? communications = freezed,
    Object? building_type = freezed,
    Object? repair_type = freezed,
    Object? floor = freezed,
    Object? total_floor = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      numbers_room: numbers_room == freezed
          ? _value.numbers_room
          : numbers_room // ignore: cast_nullable_to_non_nullable
              as int?,
      total_area: total_area == freezed
          ? _value.total_area
          : total_area // ignore: cast_nullable_to_non_nullable
              as int,
      year_construction: year_construction == freezed
          ? _value.year_construction
          : year_construction // ignore: cast_nullable_to_non_nullable
              as int?,
      communications: communications == freezed
          ? _value.communications
          : communications // ignore: cast_nullable_to_non_nullable
              as List<Communications>?,
      building_type: building_type == freezed
          ? _value.building_type
          : building_type // ignore: cast_nullable_to_non_nullable
              as BuildingType?,
      repair_type: repair_type == freezed
          ? _value.repair_type
          : repair_type // ignore: cast_nullable_to_non_nullable
              as RepairType?,
      floor: floor == freezed
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int?,
      total_floor: total_floor == freezed
          ? _value.total_floor
          : total_floor // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $BuildingTypeCopyWith<$Res>? get building_type {
    if (_value.building_type == null) {
      return null;
    }

    return $BuildingTypeCopyWith<$Res>(_value.building_type!, (value) {
      return _then(_value.copyWith(building_type: value));
    });
  }

  @override
  $RepairTypeCopyWith<$Res>? get repair_type {
    if (_value.repair_type == null) {
      return null;
    }

    return $RepairTypeCopyWith<$Res>(_value.repair_type!, (value) {
      return _then(_value.copyWith(repair_type: value));
    });
  }
}

/// @nodoc
abstract class _$DetailsCopyWith<$Res> implements $DetailsCopyWith<$Res> {
  factory _$DetailsCopyWith(_Details value, $Res Function(_Details) then) =
      __$DetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      int? numbers_room,
      int total_area,
      int? year_construction,
      List<Communications>? communications,
      BuildingType? building_type,
      RepairType? repair_type,
      int? floor,
      int? total_floor});

  @override
  $BuildingTypeCopyWith<$Res>? get building_type;
  @override
  $RepairTypeCopyWith<$Res>? get repair_type;
}

/// @nodoc
class __$DetailsCopyWithImpl<$Res> extends _$DetailsCopyWithImpl<$Res>
    implements _$DetailsCopyWith<$Res> {
  __$DetailsCopyWithImpl(_Details _value, $Res Function(_Details) _then)
      : super(_value, (v) => _then(v as _Details));

  @override
  _Details get _value => super._value as _Details;

  @override
  $Res call({
    Object? id = freezed,
    Object? numbers_room = freezed,
    Object? total_area = freezed,
    Object? year_construction = freezed,
    Object? communications = freezed,
    Object? building_type = freezed,
    Object? repair_type = freezed,
    Object? floor = freezed,
    Object? total_floor = freezed,
  }) {
    return _then(_Details(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      numbers_room: numbers_room == freezed
          ? _value.numbers_room
          : numbers_room // ignore: cast_nullable_to_non_nullable
              as int?,
      total_area: total_area == freezed
          ? _value.total_area
          : total_area // ignore: cast_nullable_to_non_nullable
              as int,
      year_construction: year_construction == freezed
          ? _value.year_construction
          : year_construction // ignore: cast_nullable_to_non_nullable
              as int?,
      communications: communications == freezed
          ? _value.communications
          : communications // ignore: cast_nullable_to_non_nullable
              as List<Communications>?,
      building_type: building_type == freezed
          ? _value.building_type
          : building_type // ignore: cast_nullable_to_non_nullable
              as BuildingType?,
      repair_type: repair_type == freezed
          ? _value.repair_type
          : repair_type // ignore: cast_nullable_to_non_nullable
              as RepairType?,
      floor: floor == freezed
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int?,
      total_floor: total_floor == freezed
          ? _value.total_floor
          : total_floor // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Details implements _Details {
  const _$_Details(
      {required this.id,
      this.numbers_room,
      required this.total_area,
      this.year_construction,
      this.communications,
      this.building_type,
      this.repair_type,
      this.floor,
      this.total_floor});

  factory _$_Details.fromJson(Map<String, dynamic> json) =>
      _$$_DetailsFromJson(json);

  @override
  final int id;
  @override
  final int? numbers_room;
  @override
  final int total_area;
  @override
  final int? year_construction;
  @override
  final List<Communications>? communications;
  @override
  final BuildingType? building_type;
  @override
  final RepairType? repair_type;
  @override
  final int? floor;
  @override
  final int? total_floor;

  @override
  String toString() {
    return 'Details(id: $id, numbers_room: $numbers_room, total_area: $total_area, year_construction: $year_construction, communications: $communications, building_type: $building_type, repair_type: $repair_type, floor: $floor, total_floor: $total_floor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Details &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.numbers_room, numbers_room) &&
            const DeepCollectionEquality()
                .equals(other.total_area, total_area) &&
            const DeepCollectionEquality()
                .equals(other.year_construction, year_construction) &&
            const DeepCollectionEquality()
                .equals(other.communications, communications) &&
            const DeepCollectionEquality()
                .equals(other.building_type, building_type) &&
            const DeepCollectionEquality()
                .equals(other.repair_type, repair_type) &&
            const DeepCollectionEquality().equals(other.floor, floor) &&
            const DeepCollectionEquality()
                .equals(other.total_floor, total_floor));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(numbers_room),
      const DeepCollectionEquality().hash(total_area),
      const DeepCollectionEquality().hash(year_construction),
      const DeepCollectionEquality().hash(communications),
      const DeepCollectionEquality().hash(building_type),
      const DeepCollectionEquality().hash(repair_type),
      const DeepCollectionEquality().hash(floor),
      const DeepCollectionEquality().hash(total_floor));

  @JsonKey(ignore: true)
  @override
  _$DetailsCopyWith<_Details> get copyWith =>
      __$DetailsCopyWithImpl<_Details>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetailsToJson(this);
  }
}

abstract class _Details implements Details {
  const factory _Details(
      {required int id,
      int? numbers_room,
      required int total_area,
      int? year_construction,
      List<Communications>? communications,
      BuildingType? building_type,
      RepairType? repair_type,
      int? floor,
      int? total_floor}) = _$_Details;

  factory _Details.fromJson(Map<String, dynamic> json) = _$_Details.fromJson;

  @override
  int get id;
  @override
  int? get numbers_room;
  @override
  int get total_area;
  @override
  int? get year_construction;
  @override
  List<Communications>? get communications;
  @override
  BuildingType? get building_type;
  @override
  RepairType? get repair_type;
  @override
  int? get floor;
  @override
  int? get total_floor;
  @override
  @JsonKey(ignore: true)
  _$DetailsCopyWith<_Details> get copyWith =>
      throw _privateConstructorUsedError;
}

AdDetailType _$AdDetailTypeFromJson(Map<String, dynamic> json) {
  return _AdDetailType.fromJson(json);
}

/// @nodoc
class _$AdDetailTypeTearOff {
  const _$AdDetailTypeTearOff();

  _AdDetailType call(
      {required int id, required String name, required String title}) {
    return _AdDetailType(
      id: id,
      name: name,
      title: title,
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
  String get title => throw _privateConstructorUsedError;

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
  $Res call({int id, String name, String title});
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
    Object? title = freezed,
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
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
  $Res call({int id, String name, String title});
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
    Object? title = freezed,
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
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AdDetailType implements _AdDetailType {
  const _$_AdDetailType(
      {required this.id, required this.name, required this.title});

  factory _$_AdDetailType.fromJson(Map<String, dynamic> json) =>
      _$$_AdDetailTypeFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String title;

  @override
  String toString() {
    return 'AdDetailType(id: $id, name: $name, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdDetailType &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(title));

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
  const factory _AdDetailType(
      {required int id,
      required String name,
      required String title}) = _$_AdDetailType;

  factory _AdDetailType.fromJson(Map<String, dynamic> json) =
      _$_AdDetailType.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get title;
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

Like _$LikeFromJson(Map<String, dynamic> json) {
  return _Like.fromJson(json);
}

/// @nodoc
class _$LikeTearOff {
  const _$LikeTearOff();

  _Like call(
      {required int id,
      required int user,
      required int ad,
      required bool isLiked,
      required DateTime created_at}) {
    return _Like(
      id: id,
      user: user,
      ad: ad,
      isLiked: isLiked,
      created_at: created_at,
    );
  }

  Like fromJson(Map<String, Object?> json) {
    return Like.fromJson(json);
  }
}

/// @nodoc
const $Like = _$LikeTearOff();

/// @nodoc
mixin _$Like {
  int get id => throw _privateConstructorUsedError;
  int get user => throw _privateConstructorUsedError;
  int get ad => throw _privateConstructorUsedError;
  bool get isLiked => throw _privateConstructorUsedError;
  DateTime get created_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LikeCopyWith<Like> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikeCopyWith<$Res> {
  factory $LikeCopyWith(Like value, $Res Function(Like) then) =
      _$LikeCopyWithImpl<$Res>;
  $Res call({int id, int user, int ad, bool isLiked, DateTime created_at});
}

/// @nodoc
class _$LikeCopyWithImpl<$Res> implements $LikeCopyWith<$Res> {
  _$LikeCopyWithImpl(this._value, this._then);

  final Like _value;
  // ignore: unused_field
  final $Res Function(Like) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? ad = freezed,
    Object? isLiked = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as int,
      ad: ad == freezed
          ? _value.ad
          : ad // ignore: cast_nullable_to_non_nullable
              as int,
      isLiked: isLiked == freezed
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$LikeCopyWith<$Res> implements $LikeCopyWith<$Res> {
  factory _$LikeCopyWith(_Like value, $Res Function(_Like) then) =
      __$LikeCopyWithImpl<$Res>;
  @override
  $Res call({int id, int user, int ad, bool isLiked, DateTime created_at});
}

/// @nodoc
class __$LikeCopyWithImpl<$Res> extends _$LikeCopyWithImpl<$Res>
    implements _$LikeCopyWith<$Res> {
  __$LikeCopyWithImpl(_Like _value, $Res Function(_Like) _then)
      : super(_value, (v) => _then(v as _Like));

  @override
  _Like get _value => super._value as _Like;

  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? ad = freezed,
    Object? isLiked = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_Like(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as int,
      ad: ad == freezed
          ? _value.ad
          : ad // ignore: cast_nullable_to_non_nullable
              as int,
      isLiked: isLiked == freezed
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Like implements _Like {
  const _$_Like(
      {required this.id,
      required this.user,
      required this.ad,
      required this.isLiked,
      required this.created_at});

  factory _$_Like.fromJson(Map<String, dynamic> json) => _$$_LikeFromJson(json);

  @override
  final int id;
  @override
  final int user;
  @override
  final int ad;
  @override
  final bool isLiked;
  @override
  final DateTime created_at;

  @override
  String toString() {
    return 'Like(id: $id, user: $user, ad: $ad, isLiked: $isLiked, created_at: $created_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Like &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.ad, ad) &&
            const DeepCollectionEquality().equals(other.isLiked, isLiked) &&
            const DeepCollectionEquality()
                .equals(other.created_at, created_at));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(ad),
      const DeepCollectionEquality().hash(isLiked),
      const DeepCollectionEquality().hash(created_at));

  @JsonKey(ignore: true)
  @override
  _$LikeCopyWith<_Like> get copyWith =>
      __$LikeCopyWithImpl<_Like>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LikeToJson(this);
  }
}

abstract class _Like implements Like {
  const factory _Like(
      {required int id,
      required int user,
      required int ad,
      required bool isLiked,
      required DateTime created_at}) = _$_Like;

  factory _Like.fromJson(Map<String, dynamic> json) = _$_Like.fromJson;

  @override
  int get id;
  @override
  int get user;
  @override
  int get ad;
  @override
  bool get isLiked;
  @override
  DateTime get created_at;
  @override
  @JsonKey(ignore: true)
  _$LikeCopyWith<_Like> get copyWith => throw _privateConstructorUsedError;
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
