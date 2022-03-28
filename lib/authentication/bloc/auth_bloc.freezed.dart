// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  AuthStateLoading loading() {
    return const AuthStateLoading();
  }

  AuthStateLoaded loaded(
      {required UserResponse userLoaded, required String msg}) {
    return AuthStateLoaded(
      userLoaded: userLoaded,
      msg: msg,
    );
  }

  AdStateUnAuth unauth() {
    return const AdStateUnAuth();
  }

  AdStateError error({required String msg}) {
    return AdStateError(
      msg: msg,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(UserResponse userLoaded, String msg) loaded,
    required TResult Function() unauth,
    required TResult Function(String msg) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserResponse userLoaded, String msg)? loaded,
    TResult Function()? unauth,
    TResult Function(String msg)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserResponse userLoaded, String msg)? loaded,
    TResult Function()? unauth,
    TResult Function(String msg)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateLoaded value) loaded,
    required TResult Function(AdStateUnAuth value) unauth,
    required TResult Function(AdStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateLoaded value)? loaded,
    TResult Function(AdStateUnAuth value)? unauth,
    TResult Function(AdStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateLoaded value)? loaded,
    TResult Function(AdStateUnAuth value)? unauth,
    TResult Function(AdStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class $AuthStateLoadingCopyWith<$Res> {
  factory $AuthStateLoadingCopyWith(
          AuthStateLoading value, $Res Function(AuthStateLoading) then) =
      _$AuthStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateLoadingCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateLoadingCopyWith<$Res> {
  _$AuthStateLoadingCopyWithImpl(
      AuthStateLoading _value, $Res Function(AuthStateLoading) _then)
      : super(_value, (v) => _then(v as AuthStateLoading));

  @override
  AuthStateLoading get _value => super._value as AuthStateLoading;
}

/// @nodoc

class _$AuthStateLoading implements AuthStateLoading {
  const _$AuthStateLoading();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(UserResponse userLoaded, String msg) loaded,
    required TResult Function() unauth,
    required TResult Function(String msg) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserResponse userLoaded, String msg)? loaded,
    TResult Function()? unauth,
    TResult Function(String msg)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserResponse userLoaded, String msg)? loaded,
    TResult Function()? unauth,
    TResult Function(String msg)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateLoaded value) loaded,
    required TResult Function(AdStateUnAuth value) unauth,
    required TResult Function(AdStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateLoaded value)? loaded,
    TResult Function(AdStateUnAuth value)? unauth,
    TResult Function(AdStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateLoaded value)? loaded,
    TResult Function(AdStateUnAuth value)? unauth,
    TResult Function(AdStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AuthStateLoading implements AuthState {
  const factory AuthStateLoading() = _$AuthStateLoading;
}

/// @nodoc
abstract class $AuthStateLoadedCopyWith<$Res> {
  factory $AuthStateLoadedCopyWith(
          AuthStateLoaded value, $Res Function(AuthStateLoaded) then) =
      _$AuthStateLoadedCopyWithImpl<$Res>;
  $Res call({UserResponse userLoaded, String msg});

  $UserResponseCopyWith<$Res> get userLoaded;
}

/// @nodoc
class _$AuthStateLoadedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateLoadedCopyWith<$Res> {
  _$AuthStateLoadedCopyWithImpl(
      AuthStateLoaded _value, $Res Function(AuthStateLoaded) _then)
      : super(_value, (v) => _then(v as AuthStateLoaded));

  @override
  AuthStateLoaded get _value => super._value as AuthStateLoaded;

  @override
  $Res call({
    Object? userLoaded = freezed,
    Object? msg = freezed,
  }) {
    return _then(AuthStateLoaded(
      userLoaded: userLoaded == freezed
          ? _value.userLoaded
          : userLoaded // ignore: cast_nullable_to_non_nullable
              as UserResponse,
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $UserResponseCopyWith<$Res> get userLoaded {
    return $UserResponseCopyWith<$Res>(_value.userLoaded, (value) {
      return _then(_value.copyWith(userLoaded: value));
    });
  }
}

/// @nodoc

class _$AuthStateLoaded implements AuthStateLoaded {
  const _$AuthStateLoaded({required this.userLoaded, required this.msg});

  @override
  final UserResponse userLoaded;
  @override
  final String msg;

  @override
  String toString() {
    return 'AuthState.loaded(userLoaded: $userLoaded, msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthStateLoaded &&
            const DeepCollectionEquality()
                .equals(other.userLoaded, userLoaded) &&
            const DeepCollectionEquality().equals(other.msg, msg));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userLoaded),
      const DeepCollectionEquality().hash(msg));

  @JsonKey(ignore: true)
  @override
  $AuthStateLoadedCopyWith<AuthStateLoaded> get copyWith =>
      _$AuthStateLoadedCopyWithImpl<AuthStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(UserResponse userLoaded, String msg) loaded,
    required TResult Function() unauth,
    required TResult Function(String msg) error,
  }) {
    return loaded(userLoaded, msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserResponse userLoaded, String msg)? loaded,
    TResult Function()? unauth,
    TResult Function(String msg)? error,
  }) {
    return loaded?.call(userLoaded, msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserResponse userLoaded, String msg)? loaded,
    TResult Function()? unauth,
    TResult Function(String msg)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(userLoaded, msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateLoaded value) loaded,
    required TResult Function(AdStateUnAuth value) unauth,
    required TResult Function(AdStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateLoaded value)? loaded,
    TResult Function(AdStateUnAuth value)? unauth,
    TResult Function(AdStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateLoaded value)? loaded,
    TResult Function(AdStateUnAuth value)? unauth,
    TResult Function(AdStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class AuthStateLoaded implements AuthState {
  const factory AuthStateLoaded(
      {required UserResponse userLoaded,
      required String msg}) = _$AuthStateLoaded;

  UserResponse get userLoaded;
  String get msg;
  @JsonKey(ignore: true)
  $AuthStateLoadedCopyWith<AuthStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdStateUnAuthCopyWith<$Res> {
  factory $AdStateUnAuthCopyWith(
          AdStateUnAuth value, $Res Function(AdStateUnAuth) then) =
      _$AdStateUnAuthCopyWithImpl<$Res>;
}

/// @nodoc
class _$AdStateUnAuthCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AdStateUnAuthCopyWith<$Res> {
  _$AdStateUnAuthCopyWithImpl(
      AdStateUnAuth _value, $Res Function(AdStateUnAuth) _then)
      : super(_value, (v) => _then(v as AdStateUnAuth));

  @override
  AdStateUnAuth get _value => super._value as AdStateUnAuth;
}

/// @nodoc

class _$AdStateUnAuth implements AdStateUnAuth {
  const _$AdStateUnAuth();

  @override
  String toString() {
    return 'AuthState.unauth()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AdStateUnAuth);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(UserResponse userLoaded, String msg) loaded,
    required TResult Function() unauth,
    required TResult Function(String msg) error,
  }) {
    return unauth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserResponse userLoaded, String msg)? loaded,
    TResult Function()? unauth,
    TResult Function(String msg)? error,
  }) {
    return unauth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserResponse userLoaded, String msg)? loaded,
    TResult Function()? unauth,
    TResult Function(String msg)? error,
    required TResult orElse(),
  }) {
    if (unauth != null) {
      return unauth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateLoaded value) loaded,
    required TResult Function(AdStateUnAuth value) unauth,
    required TResult Function(AdStateError value) error,
  }) {
    return unauth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateLoaded value)? loaded,
    TResult Function(AdStateUnAuth value)? unauth,
    TResult Function(AdStateError value)? error,
  }) {
    return unauth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateLoaded value)? loaded,
    TResult Function(AdStateUnAuth value)? unauth,
    TResult Function(AdStateError value)? error,
    required TResult orElse(),
  }) {
    if (unauth != null) {
      return unauth(this);
    }
    return orElse();
  }
}

abstract class AdStateUnAuth implements AuthState {
  const factory AdStateUnAuth() = _$AdStateUnAuth;
}

/// @nodoc
abstract class $AdStateErrorCopyWith<$Res> {
  factory $AdStateErrorCopyWith(
          AdStateError value, $Res Function(AdStateError) then) =
      _$AdStateErrorCopyWithImpl<$Res>;
  $Res call({String msg});
}

/// @nodoc
class _$AdStateErrorCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AdStateErrorCopyWith<$Res> {
  _$AdStateErrorCopyWithImpl(
      AdStateError _value, $Res Function(AdStateError) _then)
      : super(_value, (v) => _then(v as AdStateError));

  @override
  AdStateError get _value => super._value as AdStateError;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(AdStateError(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AdStateError implements AdStateError {
  const _$AdStateError({required this.msg});

  @override
  final String msg;

  @override
  String toString() {
    return 'AuthState.error(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdStateError &&
            const DeepCollectionEquality().equals(other.msg, msg));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(msg));

  @JsonKey(ignore: true)
  @override
  $AdStateErrorCopyWith<AdStateError> get copyWith =>
      _$AdStateErrorCopyWithImpl<AdStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(UserResponse userLoaded, String msg) loaded,
    required TResult Function() unauth,
    required TResult Function(String msg) error,
  }) {
    return error(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserResponse userLoaded, String msg)? loaded,
    TResult Function()? unauth,
    TResult Function(String msg)? error,
  }) {
    return error?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserResponse userLoaded, String msg)? loaded,
    TResult Function()? unauth,
    TResult Function(String msg)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateLoaded value) loaded,
    required TResult Function(AdStateUnAuth value) unauth,
    required TResult Function(AdStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateLoaded value)? loaded,
    TResult Function(AdStateUnAuth value)? unauth,
    TResult Function(AdStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateLoaded value)? loaded,
    TResult Function(AdStateUnAuth value)? unauth,
    TResult Function(AdStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AdStateError implements AuthState {
  const factory AdStateError({required String msg}) = _$AdStateError;

  String get msg;
  @JsonKey(ignore: true)
  $AdStateErrorCopyWith<AdStateError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  AuthEventLogin login({required dynamic body}) {
    return AuthEventLogin(
      body: body,
    );
  }

  AuthEventGetUser getUser() {
    return const AuthEventGetUser();
  }

  AuthEventLogoutUser logoutUser() {
    return const AuthEventLogoutUser();
  }
}

/// @nodoc
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic body) login,
    required TResult Function() getUser,
    required TResult Function() logoutUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(dynamic body)? login,
    TResult Function()? getUser,
    TResult Function()? logoutUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic body)? login,
    TResult Function()? getUser,
    TResult Function()? logoutUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventLogin value) login,
    required TResult Function(AuthEventGetUser value) getUser,
    required TResult Function(AuthEventLogoutUser value) logoutUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthEventLogin value)? login,
    TResult Function(AuthEventGetUser value)? getUser,
    TResult Function(AuthEventLogoutUser value)? logoutUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventLogin value)? login,
    TResult Function(AuthEventGetUser value)? getUser,
    TResult Function(AuthEventLogoutUser value)? logoutUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class $AuthEventLoginCopyWith<$Res> {
  factory $AuthEventLoginCopyWith(
          AuthEventLogin value, $Res Function(AuthEventLogin) then) =
      _$AuthEventLoginCopyWithImpl<$Res>;
  $Res call({dynamic body});
}

/// @nodoc
class _$AuthEventLoginCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthEventLoginCopyWith<$Res> {
  _$AuthEventLoginCopyWithImpl(
      AuthEventLogin _value, $Res Function(AuthEventLogin) _then)
      : super(_value, (v) => _then(v as AuthEventLogin));

  @override
  AuthEventLogin get _value => super._value as AuthEventLogin;

  @override
  $Res call({
    Object? body = freezed,
  }) {
    return _then(AuthEventLogin(
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$AuthEventLogin implements AuthEventLogin {
  const _$AuthEventLogin({required this.body});

  @override
  final dynamic body;

  @override
  String toString() {
    return 'AuthEvent.login(body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthEventLogin &&
            const DeepCollectionEquality().equals(other.body, body));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(body));

  @JsonKey(ignore: true)
  @override
  $AuthEventLoginCopyWith<AuthEventLogin> get copyWith =>
      _$AuthEventLoginCopyWithImpl<AuthEventLogin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic body) login,
    required TResult Function() getUser,
    required TResult Function() logoutUser,
  }) {
    return login(body);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(dynamic body)? login,
    TResult Function()? getUser,
    TResult Function()? logoutUser,
  }) {
    return login?.call(body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic body)? login,
    TResult Function()? getUser,
    TResult Function()? logoutUser,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventLogin value) login,
    required TResult Function(AuthEventGetUser value) getUser,
    required TResult Function(AuthEventLogoutUser value) logoutUser,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthEventLogin value)? login,
    TResult Function(AuthEventGetUser value)? getUser,
    TResult Function(AuthEventLogoutUser value)? logoutUser,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventLogin value)? login,
    TResult Function(AuthEventGetUser value)? getUser,
    TResult Function(AuthEventLogoutUser value)? logoutUser,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class AuthEventLogin implements AuthEvent {
  const factory AuthEventLogin({required dynamic body}) = _$AuthEventLogin;

  dynamic get body;
  @JsonKey(ignore: true)
  $AuthEventLoginCopyWith<AuthEventLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventGetUserCopyWith<$Res> {
  factory $AuthEventGetUserCopyWith(
          AuthEventGetUser value, $Res Function(AuthEventGetUser) then) =
      _$AuthEventGetUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventGetUserCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthEventGetUserCopyWith<$Res> {
  _$AuthEventGetUserCopyWithImpl(
      AuthEventGetUser _value, $Res Function(AuthEventGetUser) _then)
      : super(_value, (v) => _then(v as AuthEventGetUser));

  @override
  AuthEventGetUser get _value => super._value as AuthEventGetUser;
}

/// @nodoc

class _$AuthEventGetUser implements AuthEventGetUser {
  const _$AuthEventGetUser();

  @override
  String toString() {
    return 'AuthEvent.getUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthEventGetUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic body) login,
    required TResult Function() getUser,
    required TResult Function() logoutUser,
  }) {
    return getUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(dynamic body)? login,
    TResult Function()? getUser,
    TResult Function()? logoutUser,
  }) {
    return getUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic body)? login,
    TResult Function()? getUser,
    TResult Function()? logoutUser,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventLogin value) login,
    required TResult Function(AuthEventGetUser value) getUser,
    required TResult Function(AuthEventLogoutUser value) logoutUser,
  }) {
    return getUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthEventLogin value)? login,
    TResult Function(AuthEventGetUser value)? getUser,
    TResult Function(AuthEventLogoutUser value)? logoutUser,
  }) {
    return getUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventLogin value)? login,
    TResult Function(AuthEventGetUser value)? getUser,
    TResult Function(AuthEventLogoutUser value)? logoutUser,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser(this);
    }
    return orElse();
  }
}

abstract class AuthEventGetUser implements AuthEvent {
  const factory AuthEventGetUser() = _$AuthEventGetUser;
}

/// @nodoc
abstract class $AuthEventLogoutUserCopyWith<$Res> {
  factory $AuthEventLogoutUserCopyWith(
          AuthEventLogoutUser value, $Res Function(AuthEventLogoutUser) then) =
      _$AuthEventLogoutUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventLogoutUserCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthEventLogoutUserCopyWith<$Res> {
  _$AuthEventLogoutUserCopyWithImpl(
      AuthEventLogoutUser _value, $Res Function(AuthEventLogoutUser) _then)
      : super(_value, (v) => _then(v as AuthEventLogoutUser));

  @override
  AuthEventLogoutUser get _value => super._value as AuthEventLogoutUser;
}

/// @nodoc

class _$AuthEventLogoutUser implements AuthEventLogoutUser {
  const _$AuthEventLogoutUser();

  @override
  String toString() {
    return 'AuthEvent.logoutUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthEventLogoutUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic body) login,
    required TResult Function() getUser,
    required TResult Function() logoutUser,
  }) {
    return logoutUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(dynamic body)? login,
    TResult Function()? getUser,
    TResult Function()? logoutUser,
  }) {
    return logoutUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic body)? login,
    TResult Function()? getUser,
    TResult Function()? logoutUser,
    required TResult orElse(),
  }) {
    if (logoutUser != null) {
      return logoutUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventLogin value) login,
    required TResult Function(AuthEventGetUser value) getUser,
    required TResult Function(AuthEventLogoutUser value) logoutUser,
  }) {
    return logoutUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthEventLogin value)? login,
    TResult Function(AuthEventGetUser value)? getUser,
    TResult Function(AuthEventLogoutUser value)? logoutUser,
  }) {
    return logoutUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventLogin value)? login,
    TResult Function(AuthEventGetUser value)? getUser,
    TResult Function(AuthEventLogoutUser value)? logoutUser,
    required TResult orElse(),
  }) {
    if (logoutUser != null) {
      return logoutUser(this);
    }
    return orElse();
  }
}

abstract class AuthEventLogoutUser implements AuthEvent {
  const factory AuthEventLogoutUser() = _$AuthEventLogoutUser;
}
