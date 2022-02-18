// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserResponse _$UserResponseFromJson(Map<String, dynamic> json) {
  return _UserResponse.fromJson(json);
}

/// @nodoc
class _$UserResponseTearOff {
  const _$UserResponseTearOff();

  _UserResponse call({String? refresh, String? access, required User user}) {
    return _UserResponse(
      refresh: refresh,
      access: access,
      user: user,
    );
  }

  UserResponse fromJson(Map<String, Object?> json) {
    return UserResponse.fromJson(json);
  }
}

/// @nodoc
const $UserResponse = _$UserResponseTearOff();

/// @nodoc
mixin _$UserResponse {
  String? get refresh => throw _privateConstructorUsedError;
  String? get access => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserResponseCopyWith<UserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserResponseCopyWith<$Res> {
  factory $UserResponseCopyWith(
          UserResponse value, $Res Function(UserResponse) then) =
      _$UserResponseCopyWithImpl<$Res>;
  $Res call({String? refresh, String? access, User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$UserResponseCopyWithImpl<$Res> implements $UserResponseCopyWith<$Res> {
  _$UserResponseCopyWithImpl(this._value, this._then);

  final UserResponse _value;
  // ignore: unused_field
  final $Res Function(UserResponse) _then;

  @override
  $Res call({
    Object? refresh = freezed,
    Object? access = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      refresh: refresh == freezed
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as String?,
      access: access == freezed
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as String?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
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
abstract class _$UserResponseCopyWith<$Res>
    implements $UserResponseCopyWith<$Res> {
  factory _$UserResponseCopyWith(
          _UserResponse value, $Res Function(_UserResponse) then) =
      __$UserResponseCopyWithImpl<$Res>;
  @override
  $Res call({String? refresh, String? access, User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$UserResponseCopyWithImpl<$Res> extends _$UserResponseCopyWithImpl<$Res>
    implements _$UserResponseCopyWith<$Res> {
  __$UserResponseCopyWithImpl(
      _UserResponse _value, $Res Function(_UserResponse) _then)
      : super(_value, (v) => _then(v as _UserResponse));

  @override
  _UserResponse get _value => super._value as _UserResponse;

  @override
  $Res call({
    Object? refresh = freezed,
    Object? access = freezed,
    Object? user = freezed,
  }) {
    return _then(_UserResponse(
      refresh: refresh == freezed
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as String?,
      access: access == freezed
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as String?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserResponse implements _UserResponse {
  const _$_UserResponse({this.refresh, this.access, required this.user});

  factory _$_UserResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UserResponseFromJson(json);

  @override
  final String? refresh;
  @override
  final String? access;
  @override
  final User user;

  @override
  String toString() {
    return 'UserResponse(refresh: $refresh, access: $access, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserResponse &&
            const DeepCollectionEquality().equals(other.refresh, refresh) &&
            const DeepCollectionEquality().equals(other.access, access) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(refresh),
      const DeepCollectionEquality().hash(access),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$UserResponseCopyWith<_UserResponse> get copyWith =>
      __$UserResponseCopyWithImpl<_UserResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserResponseToJson(this);
  }
}

abstract class _UserResponse implements UserResponse {
  const factory _UserResponse(
      {String? refresh, String? access, required User user}) = _$_UserResponse;

  factory _UserResponse.fromJson(Map<String, dynamic> json) =
      _$_UserResponse.fromJson;

  @override
  String? get refresh;
  @override
  String? get access;
  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  _$UserResponseCopyWith<_UserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {required int id,
      String? name,
      String? surname,
      String? phone,
      String? about,
      required int ratings_count,
      required String email,
      UserType? user_type,
      String? avatar}) {
    return _User(
      id: id,
      name: name,
      surname: surname,
      phone: phone,
      about: about,
      ratings_count: ratings_count,
      email: email,
      user_type: user_type,
      avatar: avatar,
    );
  }

  User fromJson(Map<String, Object?> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get surname => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get about => throw _privateConstructorUsedError;
  int get ratings_count => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  UserType? get user_type => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String? name,
      String? surname,
      String? phone,
      String? about,
      int ratings_count,
      String email,
      UserType? user_type,
      String? avatar});

  $UserTypeCopyWith<$Res>? get user_type;
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? surname = freezed,
    Object? phone = freezed,
    Object? about = freezed,
    Object? ratings_count = freezed,
    Object? email = freezed,
    Object? user_type = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      surname: surname == freezed
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      about: about == freezed
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      ratings_count: ratings_count == freezed
          ? _value.ratings_count
          : ratings_count // ignore: cast_nullable_to_non_nullable
              as int,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      user_type: user_type == freezed
          ? _value.user_type
          : user_type // ignore: cast_nullable_to_non_nullable
              as UserType?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $UserTypeCopyWith<$Res>? get user_type {
    if (_value.user_type == null) {
      return null;
    }

    return $UserTypeCopyWith<$Res>(_value.user_type!, (value) {
      return _then(_value.copyWith(user_type: value));
    });
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String? name,
      String? surname,
      String? phone,
      String? about,
      int ratings_count,
      String email,
      UserType? user_type,
      String? avatar});

  @override
  $UserTypeCopyWith<$Res>? get user_type;
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? surname = freezed,
    Object? phone = freezed,
    Object? about = freezed,
    Object? ratings_count = freezed,
    Object? email = freezed,
    Object? user_type = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_User(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      surname: surname == freezed
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      about: about == freezed
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      ratings_count: ratings_count == freezed
          ? _value.ratings_count
          : ratings_count // ignore: cast_nullable_to_non_nullable
              as int,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      user_type: user_type == freezed
          ? _value.user_type
          : user_type // ignore: cast_nullable_to_non_nullable
              as UserType?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  const _$_User(
      {required this.id,
      this.name,
      this.surname,
      this.phone,
      this.about,
      required this.ratings_count,
      required this.email,
      this.user_type,
      this.avatar});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  @override
  final String? surname;
  @override
  final String? phone;
  @override
  final String? about;
  @override
  final int ratings_count;
  @override
  final String email;
  @override
  final UserType? user_type;
  @override
  final String? avatar;

  @override
  String toString() {
    return 'User(id: $id, name: $name, surname: $surname, phone: $phone, about: $about, ratings_count: $ratings_count, email: $email, user_type: $user_type, avatar: $avatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.surname, surname) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.about, about) &&
            const DeepCollectionEquality()
                .equals(other.ratings_count, ratings_count) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.user_type, user_type) &&
            const DeepCollectionEquality().equals(other.avatar, avatar));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(surname),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(about),
      const DeepCollectionEquality().hash(ratings_count),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(user_type),
      const DeepCollectionEquality().hash(avatar));

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(this);
  }
}

abstract class _User implements User {
  const factory _User(
      {required int id,
      String? name,
      String? surname,
      String? phone,
      String? about,
      required int ratings_count,
      required String email,
      UserType? user_type,
      String? avatar}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  int get id;
  @override
  String? get name;
  @override
  String? get surname;
  @override
  String? get phone;
  @override
  String? get about;
  @override
  int get ratings_count;
  @override
  String get email;
  @override
  UserType? get user_type;
  @override
  String? get avatar;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}

UserType _$UserTypeFromJson(Map<String, dynamic> json) {
  return _UserType.fromJson(json);
}

/// @nodoc
class _$UserTypeTearOff {
  const _$UserTypeTearOff();

  _UserType call({required int id, String? name}) {
    return _UserType(
      id: id,
      name: name,
    );
  }

  UserType fromJson(Map<String, Object?> json) {
    return UserType.fromJson(json);
  }
}

/// @nodoc
const $UserType = _$UserTypeTearOff();

/// @nodoc
mixin _$UserType {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserTypeCopyWith<UserType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTypeCopyWith<$Res> {
  factory $UserTypeCopyWith(UserType value, $Res Function(UserType) then) =
      _$UserTypeCopyWithImpl<$Res>;
  $Res call({int id, String? name});
}

/// @nodoc
class _$UserTypeCopyWithImpl<$Res> implements $UserTypeCopyWith<$Res> {
  _$UserTypeCopyWithImpl(this._value, this._then);

  final UserType _value;
  // ignore: unused_field
  final $Res Function(UserType) _then;

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
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UserTypeCopyWith<$Res> implements $UserTypeCopyWith<$Res> {
  factory _$UserTypeCopyWith(_UserType value, $Res Function(_UserType) then) =
      __$UserTypeCopyWithImpl<$Res>;
  @override
  $Res call({int id, String? name});
}

/// @nodoc
class __$UserTypeCopyWithImpl<$Res> extends _$UserTypeCopyWithImpl<$Res>
    implements _$UserTypeCopyWith<$Res> {
  __$UserTypeCopyWithImpl(_UserType _value, $Res Function(_UserType) _then)
      : super(_value, (v) => _then(v as _UserType));

  @override
  _UserType get _value => super._value as _UserType;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_UserType(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserType implements _UserType {
  const _$_UserType({required this.id, this.name});

  factory _$_UserType.fromJson(Map<String, dynamic> json) =>
      _$$_UserTypeFromJson(json);

  @override
  final int id;
  @override
  final String? name;

  @override
  String toString() {
    return 'UserType(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserType &&
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
  _$UserTypeCopyWith<_UserType> get copyWith =>
      __$UserTypeCopyWithImpl<_UserType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserTypeToJson(this);
  }
}

abstract class _UserType implements UserType {
  const factory _UserType({required int id, String? name}) = _$_UserType;

  factory _UserType.fromJson(Map<String, dynamic> json) = _$_UserType.fromJson;

  @override
  int get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$UserTypeCopyWith<_UserType> get copyWith =>
      throw _privateConstructorUsedError;
}

NotificationType _$NotificationTypeFromJson(Map<String, dynamic> json) {
  return _NotificationType.fromJson(json);
}

/// @nodoc
class _$NotificationTypeTearOff {
  const _$NotificationTypeTearOff();

  _NotificationType call({required int id, required String name}) {
    return _NotificationType(
      id: id,
      name: name,
    );
  }

  NotificationType fromJson(Map<String, Object?> json) {
    return NotificationType.fromJson(json);
  }
}

/// @nodoc
const $NotificationType = _$NotificationTypeTearOff();

/// @nodoc
mixin _$NotificationType {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationTypeCopyWith<NotificationType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationTypeCopyWith<$Res> {
  factory $NotificationTypeCopyWith(
          NotificationType value, $Res Function(NotificationType) then) =
      _$NotificationTypeCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$NotificationTypeCopyWithImpl<$Res>
    implements $NotificationTypeCopyWith<$Res> {
  _$NotificationTypeCopyWithImpl(this._value, this._then);

  final NotificationType _value;
  // ignore: unused_field
  final $Res Function(NotificationType) _then;

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
abstract class _$NotificationTypeCopyWith<$Res>
    implements $NotificationTypeCopyWith<$Res> {
  factory _$NotificationTypeCopyWith(
          _NotificationType value, $Res Function(_NotificationType) then) =
      __$NotificationTypeCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$NotificationTypeCopyWithImpl<$Res>
    extends _$NotificationTypeCopyWithImpl<$Res>
    implements _$NotificationTypeCopyWith<$Res> {
  __$NotificationTypeCopyWithImpl(
      _NotificationType _value, $Res Function(_NotificationType) _then)
      : super(_value, (v) => _then(v as _NotificationType));

  @override
  _NotificationType get _value => super._value as _NotificationType;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_NotificationType(
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
class _$_NotificationType implements _NotificationType {
  const _$_NotificationType({required this.id, required this.name});

  factory _$_NotificationType.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationTypeFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'NotificationType(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotificationType &&
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
  _$NotificationTypeCopyWith<_NotificationType> get copyWith =>
      __$NotificationTypeCopyWithImpl<_NotificationType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationTypeToJson(this);
  }
}

abstract class _NotificationType implements NotificationType {
  const factory _NotificationType({required int id, required String name}) =
      _$_NotificationType;

  factory _NotificationType.fromJson(Map<String, dynamic> json) =
      _$_NotificationType.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$NotificationTypeCopyWith<_NotificationType> get copyWith =>
      throw _privateConstructorUsedError;
}

Notification _$NotificationFromJson(Map<String, dynamic> json) {
  return _Notification.fromJson(json);
}

/// @nodoc
class _$NotificationTearOff {
  const _$NotificationTearOff();

  _Notification call(
      {required int id,
      required User user,
      required User author,
      String? text,
      required bool is_readed,
      required DateTime created_at}) {
    return _Notification(
      id: id,
      user: user,
      author: author,
      text: text,
      is_readed: is_readed,
      created_at: created_at,
    );
  }

  Notification fromJson(Map<String, Object?> json) {
    return Notification.fromJson(json);
  }
}

/// @nodoc
const $Notification = _$NotificationTearOff();

/// @nodoc
mixin _$Notification {
  int get id => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  User get author => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  bool get is_readed => throw _privateConstructorUsedError;
  DateTime get created_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationCopyWith<Notification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationCopyWith<$Res> {
  factory $NotificationCopyWith(
          Notification value, $Res Function(Notification) then) =
      _$NotificationCopyWithImpl<$Res>;
  $Res call(
      {int id,
      User user,
      User author,
      String? text,
      bool is_readed,
      DateTime created_at});

  $UserCopyWith<$Res> get user;
  $UserCopyWith<$Res> get author;
}

/// @nodoc
class _$NotificationCopyWithImpl<$Res> implements $NotificationCopyWith<$Res> {
  _$NotificationCopyWithImpl(this._value, this._then);

  final Notification _value;
  // ignore: unused_field
  final $Res Function(Notification) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? author = freezed,
    Object? text = freezed,
    Object? is_readed = freezed,
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
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as User,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      is_readed: is_readed == freezed
          ? _value.is_readed
          : is_readed // ignore: cast_nullable_to_non_nullable
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

  @override
  $UserCopyWith<$Res> get author {
    return $UserCopyWith<$Res>(_value.author, (value) {
      return _then(_value.copyWith(author: value));
    });
  }
}

/// @nodoc
abstract class _$NotificationCopyWith<$Res>
    implements $NotificationCopyWith<$Res> {
  factory _$NotificationCopyWith(
          _Notification value, $Res Function(_Notification) then) =
      __$NotificationCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      User user,
      User author,
      String? text,
      bool is_readed,
      DateTime created_at});

  @override
  $UserCopyWith<$Res> get user;
  @override
  $UserCopyWith<$Res> get author;
}

/// @nodoc
class __$NotificationCopyWithImpl<$Res> extends _$NotificationCopyWithImpl<$Res>
    implements _$NotificationCopyWith<$Res> {
  __$NotificationCopyWithImpl(
      _Notification _value, $Res Function(_Notification) _then)
      : super(_value, (v) => _then(v as _Notification));

  @override
  _Notification get _value => super._value as _Notification;

  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? author = freezed,
    Object? text = freezed,
    Object? is_readed = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_Notification(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as User,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      is_readed: is_readed == freezed
          ? _value.is_readed
          : is_readed // ignore: cast_nullable_to_non_nullable
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
class _$_Notification implements _Notification {
  const _$_Notification(
      {required this.id,
      required this.user,
      required this.author,
      this.text,
      required this.is_readed,
      required this.created_at});

  factory _$_Notification.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationFromJson(json);

  @override
  final int id;
  @override
  final User user;
  @override
  final User author;
  @override
  final String? text;
  @override
  final bool is_readed;
  @override
  final DateTime created_at;

  @override
  String toString() {
    return 'Notification(id: $id, user: $user, author: $author, text: $text, is_readed: $is_readed, created_at: $created_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Notification &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.is_readed, is_readed) &&
            const DeepCollectionEquality()
                .equals(other.created_at, created_at));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(is_readed),
      const DeepCollectionEquality().hash(created_at));

  @JsonKey(ignore: true)
  @override
  _$NotificationCopyWith<_Notification> get copyWith =>
      __$NotificationCopyWithImpl<_Notification>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationToJson(this);
  }
}

abstract class _Notification implements Notification {
  const factory _Notification(
      {required int id,
      required User user,
      required User author,
      String? text,
      required bool is_readed,
      required DateTime created_at}) = _$_Notification;

  factory _Notification.fromJson(Map<String, dynamic> json) =
      _$_Notification.fromJson;

  @override
  int get id;
  @override
  User get user;
  @override
  User get author;
  @override
  String? get text;
  @override
  bool get is_readed;
  @override
  DateTime get created_at;
  @override
  @JsonKey(ignore: true)
  _$NotificationCopyWith<_Notification> get copyWith =>
      throw _privateConstructorUsedError;
}

Rating _$RatingFromJson(Map<String, dynamic> json) {
  return _Rating.fromJson(json);
}

/// @nodoc
class _$RatingTearOff {
  const _$RatingTearOff();

  _Rating call(
      {required int id,
      required User user,
      required User author,
      String? text,
      double? ball,
      required DateTime created_at}) {
    return _Rating(
      id: id,
      user: user,
      author: author,
      text: text,
      ball: ball,
      created_at: created_at,
    );
  }

  Rating fromJson(Map<String, Object?> json) {
    return Rating.fromJson(json);
  }
}

/// @nodoc
const $Rating = _$RatingTearOff();

/// @nodoc
mixin _$Rating {
  int get id => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  User get author => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  double? get ball => throw _privateConstructorUsedError;
  DateTime get created_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingCopyWith<Rating> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingCopyWith<$Res> {
  factory $RatingCopyWith(Rating value, $Res Function(Rating) then) =
      _$RatingCopyWithImpl<$Res>;
  $Res call(
      {int id,
      User user,
      User author,
      String? text,
      double? ball,
      DateTime created_at});

  $UserCopyWith<$Res> get user;
  $UserCopyWith<$Res> get author;
}

/// @nodoc
class _$RatingCopyWithImpl<$Res> implements $RatingCopyWith<$Res> {
  _$RatingCopyWithImpl(this._value, this._then);

  final Rating _value;
  // ignore: unused_field
  final $Res Function(Rating) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? author = freezed,
    Object? text = freezed,
    Object? ball = freezed,
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
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as User,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      ball: ball == freezed
          ? _value.ball
          : ball // ignore: cast_nullable_to_non_nullable
              as double?,
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

  @override
  $UserCopyWith<$Res> get author {
    return $UserCopyWith<$Res>(_value.author, (value) {
      return _then(_value.copyWith(author: value));
    });
  }
}

/// @nodoc
abstract class _$RatingCopyWith<$Res> implements $RatingCopyWith<$Res> {
  factory _$RatingCopyWith(_Rating value, $Res Function(_Rating) then) =
      __$RatingCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      User user,
      User author,
      String? text,
      double? ball,
      DateTime created_at});

  @override
  $UserCopyWith<$Res> get user;
  @override
  $UserCopyWith<$Res> get author;
}

/// @nodoc
class __$RatingCopyWithImpl<$Res> extends _$RatingCopyWithImpl<$Res>
    implements _$RatingCopyWith<$Res> {
  __$RatingCopyWithImpl(_Rating _value, $Res Function(_Rating) _then)
      : super(_value, (v) => _then(v as _Rating));

  @override
  _Rating get _value => super._value as _Rating;

  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? author = freezed,
    Object? text = freezed,
    Object? ball = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_Rating(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as User,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      ball: ball == freezed
          ? _value.ball
          : ball // ignore: cast_nullable_to_non_nullable
              as double?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Rating implements _Rating {
  const _$_Rating(
      {required this.id,
      required this.user,
      required this.author,
      this.text,
      this.ball,
      required this.created_at});

  factory _$_Rating.fromJson(Map<String, dynamic> json) =>
      _$$_RatingFromJson(json);

  @override
  final int id;
  @override
  final User user;
  @override
  final User author;
  @override
  final String? text;
  @override
  final double? ball;
  @override
  final DateTime created_at;

  @override
  String toString() {
    return 'Rating(id: $id, user: $user, author: $author, text: $text, ball: $ball, created_at: $created_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Rating &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.ball, ball) &&
            const DeepCollectionEquality()
                .equals(other.created_at, created_at));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(ball),
      const DeepCollectionEquality().hash(created_at));

  @JsonKey(ignore: true)
  @override
  _$RatingCopyWith<_Rating> get copyWith =>
      __$RatingCopyWithImpl<_Rating>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RatingToJson(this);
  }
}

abstract class _Rating implements Rating {
  const factory _Rating(
      {required int id,
      required User user,
      required User author,
      String? text,
      double? ball,
      required DateTime created_at}) = _$_Rating;

  factory _Rating.fromJson(Map<String, dynamic> json) = _$_Rating.fromJson;

  @override
  int get id;
  @override
  User get user;
  @override
  User get author;
  @override
  String? get text;
  @override
  double? get ball;
  @override
  DateTime get created_at;
  @override
  @JsonKey(ignore: true)
  _$RatingCopyWith<_Rating> get copyWith => throw _privateConstructorUsedError;
}
