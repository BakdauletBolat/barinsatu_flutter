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
      required User author,
      required DateTime created_at,
      required DateTime updated_at,
      required String video,
      required List<StoryLike> story_likes,
      required List<StoryComment> story_comments,
      String? thumb}) {
    return _Story(
      id: id,
      author: author,
      created_at: created_at,
      updated_at: updated_at,
      video: video,
      story_likes: story_likes,
      story_comments: story_comments,
      thumb: thumb,
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
  User get author => throw _privateConstructorUsedError;
  DateTime get created_at => throw _privateConstructorUsedError;
  DateTime get updated_at => throw _privateConstructorUsedError;
  String get video => throw _privateConstructorUsedError;
  List<StoryLike> get story_likes => throw _privateConstructorUsedError;
  List<StoryComment> get story_comments => throw _privateConstructorUsedError;
  String? get thumb => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoryCopyWith<Story> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoryCopyWith<$Res> {
  factory $StoryCopyWith(Story value, $Res Function(Story) then) =
      _$StoryCopyWithImpl<$Res>;
  $Res call(
      {int id,
      User author,
      DateTime created_at,
      DateTime updated_at,
      String video,
      List<StoryLike> story_likes,
      List<StoryComment> story_comments,
      String? thumb});

  $UserCopyWith<$Res> get author;
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
    Object? author = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? video = freezed,
    Object? story_likes = freezed,
    Object? story_comments = freezed,
    Object? thumb = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as User,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated_at: updated_at == freezed
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
      story_likes: story_likes == freezed
          ? _value.story_likes
          : story_likes // ignore: cast_nullable_to_non_nullable
              as List<StoryLike>,
      story_comments: story_comments == freezed
          ? _value.story_comments
          : story_comments // ignore: cast_nullable_to_non_nullable
              as List<StoryComment>,
      thumb: thumb == freezed
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $UserCopyWith<$Res> get author {
    return $UserCopyWith<$Res>(_value.author, (value) {
      return _then(_value.copyWith(author: value));
    });
  }
}

/// @nodoc
abstract class _$StoryCopyWith<$Res> implements $StoryCopyWith<$Res> {
  factory _$StoryCopyWith(_Story value, $Res Function(_Story) then) =
      __$StoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      User author,
      DateTime created_at,
      DateTime updated_at,
      String video,
      List<StoryLike> story_likes,
      List<StoryComment> story_comments,
      String? thumb});

  @override
  $UserCopyWith<$Res> get author;
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
    Object? author = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? video = freezed,
    Object? story_likes = freezed,
    Object? story_comments = freezed,
    Object? thumb = freezed,
  }) {
    return _then(_Story(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as User,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated_at: updated_at == freezed
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String,
      story_likes: story_likes == freezed
          ? _value.story_likes
          : story_likes // ignore: cast_nullable_to_non_nullable
              as List<StoryLike>,
      story_comments: story_comments == freezed
          ? _value.story_comments
          : story_comments // ignore: cast_nullable_to_non_nullable
              as List<StoryComment>,
      thumb: thumb == freezed
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Story implements _Story {
  const _$_Story(
      {required this.id,
      required this.author,
      required this.created_at,
      required this.updated_at,
      required this.video,
      required this.story_likes,
      required this.story_comments,
      this.thumb});

  factory _$_Story.fromJson(Map<String, dynamic> json) =>
      _$$_StoryFromJson(json);

  @override
  final int id;
  @override
  final User author;
  @override
  final DateTime created_at;
  @override
  final DateTime updated_at;
  @override
  final String video;
  @override
  final List<StoryLike> story_likes;
  @override
  final List<StoryComment> story_comments;
  @override
  final String? thumb;

  @override
  String toString() {
    return 'Story(id: $id, author: $author, created_at: $created_at, updated_at: $updated_at, video: $video, story_likes: $story_likes, story_comments: $story_comments, thumb: $thumb)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Story &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality()
                .equals(other.created_at, created_at) &&
            const DeepCollectionEquality()
                .equals(other.updated_at, updated_at) &&
            const DeepCollectionEquality().equals(other.video, video) &&
            const DeepCollectionEquality()
                .equals(other.story_likes, story_likes) &&
            const DeepCollectionEquality()
                .equals(other.story_comments, story_comments) &&
            const DeepCollectionEquality().equals(other.thumb, thumb));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(created_at),
      const DeepCollectionEquality().hash(updated_at),
      const DeepCollectionEquality().hash(video),
      const DeepCollectionEquality().hash(story_likes),
      const DeepCollectionEquality().hash(story_comments),
      const DeepCollectionEquality().hash(thumb));

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
      required User author,
      required DateTime created_at,
      required DateTime updated_at,
      required String video,
      required List<StoryLike> story_likes,
      required List<StoryComment> story_comments,
      String? thumb}) = _$_Story;

  factory _Story.fromJson(Map<String, dynamic> json) = _$_Story.fromJson;

  @override
  int get id;
  @override
  User get author;
  @override
  DateTime get created_at;
  @override
  DateTime get updated_at;
  @override
  String get video;
  @override
  List<StoryLike> get story_likes;
  @override
  List<StoryComment> get story_comments;
  @override
  String? get thumb;
  @override
  @JsonKey(ignore: true)
  _$StoryCopyWith<_Story> get copyWith => throw _privateConstructorUsedError;
}

StoryLike _$StoryLikeFromJson(Map<String, dynamic> json) {
  return _StoryLike.fromJson(json);
}

/// @nodoc
class _$StoryLikeTearOff {
  const _$StoryLikeTearOff();

  _StoryLike call(
      {required int id,
      required User user,
      required int story,
      required bool isLiked,
      required DateTime created_at}) {
    return _StoryLike(
      id: id,
      user: user,
      story: story,
      isLiked: isLiked,
      created_at: created_at,
    );
  }

  StoryLike fromJson(Map<String, Object?> json) {
    return StoryLike.fromJson(json);
  }
}

/// @nodoc
const $StoryLike = _$StoryLikeTearOff();

/// @nodoc
mixin _$StoryLike {
  int get id => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  int get story => throw _privateConstructorUsedError;
  bool get isLiked => throw _privateConstructorUsedError;
  DateTime get created_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoryLikeCopyWith<StoryLike> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoryLikeCopyWith<$Res> {
  factory $StoryLikeCopyWith(StoryLike value, $Res Function(StoryLike) then) =
      _$StoryLikeCopyWithImpl<$Res>;
  $Res call({int id, User user, int story, bool isLiked, DateTime created_at});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$StoryLikeCopyWithImpl<$Res> implements $StoryLikeCopyWith<$Res> {
  _$StoryLikeCopyWithImpl(this._value, this._then);

  final StoryLike _value;
  // ignore: unused_field
  final $Res Function(StoryLike) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? story = freezed,
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
              as User,
      story: story == freezed
          ? _value.story
          : story // ignore: cast_nullable_to_non_nullable
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

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$StoryLikeCopyWith<$Res> implements $StoryLikeCopyWith<$Res> {
  factory _$StoryLikeCopyWith(
          _StoryLike value, $Res Function(_StoryLike) then) =
      __$StoryLikeCopyWithImpl<$Res>;
  @override
  $Res call({int id, User user, int story, bool isLiked, DateTime created_at});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$StoryLikeCopyWithImpl<$Res> extends _$StoryLikeCopyWithImpl<$Res>
    implements _$StoryLikeCopyWith<$Res> {
  __$StoryLikeCopyWithImpl(_StoryLike _value, $Res Function(_StoryLike) _then)
      : super(_value, (v) => _then(v as _StoryLike));

  @override
  _StoryLike get _value => super._value as _StoryLike;

  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? story = freezed,
    Object? isLiked = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_StoryLike(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      story: story == freezed
          ? _value.story
          : story // ignore: cast_nullable_to_non_nullable
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
class _$_StoryLike implements _StoryLike {
  const _$_StoryLike(
      {required this.id,
      required this.user,
      required this.story,
      required this.isLiked,
      required this.created_at});

  factory _$_StoryLike.fromJson(Map<String, dynamic> json) =>
      _$$_StoryLikeFromJson(json);

  @override
  final int id;
  @override
  final User user;
  @override
  final int story;
  @override
  final bool isLiked;
  @override
  final DateTime created_at;

  @override
  String toString() {
    return 'StoryLike(id: $id, user: $user, story: $story, isLiked: $isLiked, created_at: $created_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StoryLike &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.story, story) &&
            const DeepCollectionEquality().equals(other.isLiked, isLiked) &&
            const DeepCollectionEquality()
                .equals(other.created_at, created_at));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(story),
      const DeepCollectionEquality().hash(isLiked),
      const DeepCollectionEquality().hash(created_at));

  @JsonKey(ignore: true)
  @override
  _$StoryLikeCopyWith<_StoryLike> get copyWith =>
      __$StoryLikeCopyWithImpl<_StoryLike>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoryLikeToJson(this);
  }
}

abstract class _StoryLike implements StoryLike {
  const factory _StoryLike(
      {required int id,
      required User user,
      required int story,
      required bool isLiked,
      required DateTime created_at}) = _$_StoryLike;

  factory _StoryLike.fromJson(Map<String, dynamic> json) =
      _$_StoryLike.fromJson;

  @override
  int get id;
  @override
  User get user;
  @override
  int get story;
  @override
  bool get isLiked;
  @override
  DateTime get created_at;
  @override
  @JsonKey(ignore: true)
  _$StoryLikeCopyWith<_StoryLike> get copyWith =>
      throw _privateConstructorUsedError;
}

StoryComment _$StoryCommentFromJson(Map<String, dynamic> json) {
  return _StoryComment.fromJson(json);
}

/// @nodoc
class _$StoryCommentTearOff {
  const _$StoryCommentTearOff();

  _StoryComment call(
      {required String text,
      required int id,
      required User author,
      required int story,
      required DateTime created_at}) {
    return _StoryComment(
      text: text,
      id: id,
      author: author,
      story: story,
      created_at: created_at,
    );
  }

  StoryComment fromJson(Map<String, Object?> json) {
    return StoryComment.fromJson(json);
  }
}

/// @nodoc
const $StoryComment = _$StoryCommentTearOff();

/// @nodoc
mixin _$StoryComment {
  String get text => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  User get author => throw _privateConstructorUsedError;
  int get story => throw _privateConstructorUsedError;
  DateTime get created_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoryCommentCopyWith<StoryComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoryCommentCopyWith<$Res> {
  factory $StoryCommentCopyWith(
          StoryComment value, $Res Function(StoryComment) then) =
      _$StoryCommentCopyWithImpl<$Res>;
  $Res call({String text, int id, User author, int story, DateTime created_at});

  $UserCopyWith<$Res> get author;
}

/// @nodoc
class _$StoryCommentCopyWithImpl<$Res> implements $StoryCommentCopyWith<$Res> {
  _$StoryCommentCopyWithImpl(this._value, this._then);

  final StoryComment _value;
  // ignore: unused_field
  final $Res Function(StoryComment) _then;

  @override
  $Res call({
    Object? text = freezed,
    Object? id = freezed,
    Object? author = freezed,
    Object? story = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as User,
      story: story == freezed
          ? _value.story
          : story // ignore: cast_nullable_to_non_nullable
              as int,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $UserCopyWith<$Res> get author {
    return $UserCopyWith<$Res>(_value.author, (value) {
      return _then(_value.copyWith(author: value));
    });
  }
}

/// @nodoc
abstract class _$StoryCommentCopyWith<$Res>
    implements $StoryCommentCopyWith<$Res> {
  factory _$StoryCommentCopyWith(
          _StoryComment value, $Res Function(_StoryComment) then) =
      __$StoryCommentCopyWithImpl<$Res>;
  @override
  $Res call({String text, int id, User author, int story, DateTime created_at});

  @override
  $UserCopyWith<$Res> get author;
}

/// @nodoc
class __$StoryCommentCopyWithImpl<$Res> extends _$StoryCommentCopyWithImpl<$Res>
    implements _$StoryCommentCopyWith<$Res> {
  __$StoryCommentCopyWithImpl(
      _StoryComment _value, $Res Function(_StoryComment) _then)
      : super(_value, (v) => _then(v as _StoryComment));

  @override
  _StoryComment get _value => super._value as _StoryComment;

  @override
  $Res call({
    Object? text = freezed,
    Object? id = freezed,
    Object? author = freezed,
    Object? story = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_StoryComment(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as User,
      story: story == freezed
          ? _value.story
          : story // ignore: cast_nullable_to_non_nullable
              as int,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StoryComment implements _StoryComment {
  const _$_StoryComment(
      {required this.text,
      required this.id,
      required this.author,
      required this.story,
      required this.created_at});

  factory _$_StoryComment.fromJson(Map<String, dynamic> json) =>
      _$$_StoryCommentFromJson(json);

  @override
  final String text;
  @override
  final int id;
  @override
  final User author;
  @override
  final int story;
  @override
  final DateTime created_at;

  @override
  String toString() {
    return 'StoryComment(text: $text, id: $id, author: $author, story: $story, created_at: $created_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StoryComment &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality().equals(other.story, story) &&
            const DeepCollectionEquality()
                .equals(other.created_at, created_at));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(story),
      const DeepCollectionEquality().hash(created_at));

  @JsonKey(ignore: true)
  @override
  _$StoryCommentCopyWith<_StoryComment> get copyWith =>
      __$StoryCommentCopyWithImpl<_StoryComment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoryCommentToJson(this);
  }
}

abstract class _StoryComment implements StoryComment {
  const factory _StoryComment(
      {required String text,
      required int id,
      required User author,
      required int story,
      required DateTime created_at}) = _$_StoryComment;

  factory _StoryComment.fromJson(Map<String, dynamic> json) =
      _$_StoryComment.fromJson;

  @override
  String get text;
  @override
  int get id;
  @override
  User get author;
  @override
  int get story;
  @override
  DateTime get created_at;
  @override
  @JsonKey(ignore: true)
  _$StoryCommentCopyWith<_StoryComment> get copyWith =>
      throw _privateConstructorUsedError;
}
