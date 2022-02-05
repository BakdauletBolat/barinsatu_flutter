// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'story.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StoryResponse _$StoryResponseFromJson(Map<String, dynamic> json) {
  return _StoryResponse.fromJson(json);
}

/// @nodoc
class _$StoryResponseTearOff {
  const _$StoryResponseTearOff();

  _StoryResponse call({required List<Story> data}) {
    return _StoryResponse(
      data: data,
    );
  }

  StoryResponse fromJson(Map<String, Object?> json) {
    return StoryResponse.fromJson(json);
  }
}

/// @nodoc
const $StoryResponse = _$StoryResponseTearOff();

/// @nodoc
mixin _$StoryResponse {
  List<Story> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoryResponseCopyWith<StoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoryResponseCopyWith<$Res> {
  factory $StoryResponseCopyWith(
          StoryResponse value, $Res Function(StoryResponse) then) =
      _$StoryResponseCopyWithImpl<$Res>;
  $Res call({List<Story> data});
}

/// @nodoc
class _$StoryResponseCopyWithImpl<$Res>
    implements $StoryResponseCopyWith<$Res> {
  _$StoryResponseCopyWithImpl(this._value, this._then);

  final StoryResponse _value;
  // ignore: unused_field
  final $Res Function(StoryResponse) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Story>,
    ));
  }
}

/// @nodoc
abstract class _$StoryResponseCopyWith<$Res>
    implements $StoryResponseCopyWith<$Res> {
  factory _$StoryResponseCopyWith(
          _StoryResponse value, $Res Function(_StoryResponse) then) =
      __$StoryResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<Story> data});
}

/// @nodoc
class __$StoryResponseCopyWithImpl<$Res>
    extends _$StoryResponseCopyWithImpl<$Res>
    implements _$StoryResponseCopyWith<$Res> {
  __$StoryResponseCopyWithImpl(
      _StoryResponse _value, $Res Function(_StoryResponse) _then)
      : super(_value, (v) => _then(v as _StoryResponse));

  @override
  _StoryResponse get _value => super._value as _StoryResponse;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_StoryResponse(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Story>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StoryResponse implements _StoryResponse {
  const _$_StoryResponse({required this.data});

  factory _$_StoryResponse.fromJson(Map<String, dynamic> json) =>
      _$$_StoryResponseFromJson(json);

  @override
  final List<Story> data;

  @override
  String toString() {
    return 'StoryResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StoryResponse &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$StoryResponseCopyWith<_StoryResponse> get copyWith =>
      __$StoryResponseCopyWithImpl<_StoryResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoryResponseToJson(this);
  }
}

abstract class _StoryResponse implements StoryResponse {
  const factory _StoryResponse({required List<Story> data}) = _$_StoryResponse;

  factory _StoryResponse.fromJson(Map<String, dynamic> json) =
      _$_StoryResponse.fromJson;

  @override
  List<Story> get data;
  @override
  @JsonKey(ignore: true)
  _$StoryResponseCopyWith<_StoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Story _$StoryFromJson(Map<String, dynamic> json) {
  return _Story.fromJson(json);
}

/// @nodoc
class _$StoryTearOff {
  const _$StoryTearOff();

  _Story call(
      {required int id,
      required bool isLiked,
      required int favoriteUsers,
      required String video}) {
    return _Story(
      id: id,
      isLiked: isLiked,
      favoriteUsers: favoriteUsers,
      video: video,
    );
  }

  Story fromJson(Map<String, Object?> json) {
    return Story.fromJson(json);
  }
}

/// @nodoc
const $Story = _$StoryTearOff();

/// @nodoc
mixin _$Story {
  int get id => throw _privateConstructorUsedError;
  bool get isLiked => throw _privateConstructorUsedError;
  int get favoriteUsers => throw _privateConstructorUsedError;
  String get video => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoryCopyWith<Story> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoryCopyWith<$Res> {
  factory $StoryCopyWith(Story value, $Res Function(Story) then) =
      _$StoryCopyWithImpl<$Res>;
  $Res call({int id, bool isLiked, int favoriteUsers, String video});
}

/// @nodoc
class _$StoryCopyWithImpl<$Res> implements $StoryCopyWith<$Res> {
  _$StoryCopyWithImpl(this._value, this._then);

  final Story _value;
  // ignore: unused_field
  final $Res Function(Story) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? isLiked = freezed,
    Object? favoriteUsers = freezed,
    Object? video = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isLiked: isLiked == freezed
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      favoriteUsers: favoriteUsers == freezed
          ? _value.favoriteUsers
          : favoriteUsers // ignore: cast_nullable_to_non_nullable
              as int,
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$StoryCopyWith<$Res> implements $StoryCopyWith<$Res> {
  factory _$StoryCopyWith(_Story value, $Res Function(_Story) then) =
      __$StoryCopyWithImpl<$Res>;
  @override
  $Res call({int id, bool isLiked, int favoriteUsers, String video});
}

/// @nodoc
class __$StoryCopyWithImpl<$Res> extends _$StoryCopyWithImpl<$Res>
    implements _$StoryCopyWith<$Res> {
  __$StoryCopyWithImpl(_Story _value, $Res Function(_Story) _then)
      : super(_value, (v) => _then(v as _Story));

  @override
  _Story get _value => super._value as _Story;

  @override
  $Res call({
    Object? id = freezed,
    Object? isLiked = freezed,
    Object? favoriteUsers = freezed,
    Object? video = freezed,
  }) {
    return _then(_Story(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isLiked: isLiked == freezed
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      favoriteUsers: favoriteUsers == freezed
          ? _value.favoriteUsers
          : favoriteUsers // ignore: cast_nullable_to_non_nullable
              as int,
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Story implements _Story {
  const _$_Story(
      {required this.id,
      required this.isLiked,
      required this.favoriteUsers,
      required this.video});

  factory _$_Story.fromJson(Map<String, dynamic> json) =>
      _$$_StoryFromJson(json);

  @override
  final int id;
  @override
  final bool isLiked;
  @override
  final int favoriteUsers;
  @override
  final String video;

  @override
  String toString() {
    return 'Story(id: $id, isLiked: $isLiked, favoriteUsers: $favoriteUsers, video: $video)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Story &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.isLiked, isLiked) &&
            const DeepCollectionEquality()
                .equals(other.favoriteUsers, favoriteUsers) &&
            const DeepCollectionEquality().equals(other.video, video));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(isLiked),
      const DeepCollectionEquality().hash(favoriteUsers),
      const DeepCollectionEquality().hash(video));

  @JsonKey(ignore: true)
  @override
  _$StoryCopyWith<_Story> get copyWith =>
      __$StoryCopyWithImpl<_Story>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoryToJson(this);
  }
}

abstract class _Story implements Story {
  const factory _Story(
      {required int id,
      required bool isLiked,
      required int favoriteUsers,
      required String video}) = _$_Story;

  factory _Story.fromJson(Map<String, dynamic> json) = _$_Story.fromJson;

  @override
  int get id;
  @override
  bool get isLiked;
  @override
  int get favoriteUsers;
  @override
  String get video;
  @override
  @JsonKey(ignore: true)
  _$StoryCopyWith<_Story> get copyWith => throw _privateConstructorUsedError;
}
