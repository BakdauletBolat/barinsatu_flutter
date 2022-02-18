// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_ad_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AdUserEventTearOff {
  const _$AdUserEventTearOff();

  AdEventUserFetch userAdsFetch({required int offset, required int userId}) {
    return AdEventUserFetch(
      offset: offset,
      userId: userId,
    );
  }

  AdEventUserAdsUpdate userAdsUpdate({required List<Ad> adsUpdate}) {
    return AdEventUserAdsUpdate(
      adsUpdate: adsUpdate,
    );
  }
}

/// @nodoc
const $AdUserEvent = _$AdUserEventTearOff();

/// @nodoc
mixin _$AdUserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int offset, int userId) userAdsFetch,
    required TResult Function(List<Ad> adsUpdate) userAdsUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int offset, int userId)? userAdsFetch,
    TResult Function(List<Ad> adsUpdate)? userAdsUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int offset, int userId)? userAdsFetch,
    TResult Function(List<Ad> adsUpdate)? userAdsUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdEventUserFetch value) userAdsFetch,
    required TResult Function(AdEventUserAdsUpdate value) userAdsUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AdEventUserFetch value)? userAdsFetch,
    TResult Function(AdEventUserAdsUpdate value)? userAdsUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdEventUserFetch value)? userAdsFetch,
    TResult Function(AdEventUserAdsUpdate value)? userAdsUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdUserEventCopyWith<$Res> {
  factory $AdUserEventCopyWith(
          AdUserEvent value, $Res Function(AdUserEvent) then) =
      _$AdUserEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AdUserEventCopyWithImpl<$Res> implements $AdUserEventCopyWith<$Res> {
  _$AdUserEventCopyWithImpl(this._value, this._then);

  final AdUserEvent _value;
  // ignore: unused_field
  final $Res Function(AdUserEvent) _then;
}

/// @nodoc
abstract class $AdEventUserFetchCopyWith<$Res> {
  factory $AdEventUserFetchCopyWith(
          AdEventUserFetch value, $Res Function(AdEventUserFetch) then) =
      _$AdEventUserFetchCopyWithImpl<$Res>;
  $Res call({int offset, int userId});
}

/// @nodoc
class _$AdEventUserFetchCopyWithImpl<$Res>
    extends _$AdUserEventCopyWithImpl<$Res>
    implements $AdEventUserFetchCopyWith<$Res> {
  _$AdEventUserFetchCopyWithImpl(
      AdEventUserFetch _value, $Res Function(AdEventUserFetch) _then)
      : super(_value, (v) => _then(v as AdEventUserFetch));

  @override
  AdEventUserFetch get _value => super._value as AdEventUserFetch;

  @override
  $Res call({
    Object? offset = freezed,
    Object? userId = freezed,
  }) {
    return _then(AdEventUserFetch(
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AdEventUserFetch
    with DiagnosticableTreeMixin
    implements AdEventUserFetch {
  const _$AdEventUserFetch({required this.offset, required this.userId});

  @override
  final int offset;
  @override
  final int userId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AdUserEvent.userAdsFetch(offset: $offset, userId: $userId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AdUserEvent.userAdsFetch'))
      ..add(DiagnosticsProperty('offset', offset))
      ..add(DiagnosticsProperty('userId', userId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdEventUserFetch &&
            const DeepCollectionEquality().equals(other.offset, offset) &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(offset),
      const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  $AdEventUserFetchCopyWith<AdEventUserFetch> get copyWith =>
      _$AdEventUserFetchCopyWithImpl<AdEventUserFetch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int offset, int userId) userAdsFetch,
    required TResult Function(List<Ad> adsUpdate) userAdsUpdate,
  }) {
    return userAdsFetch(offset, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int offset, int userId)? userAdsFetch,
    TResult Function(List<Ad> adsUpdate)? userAdsUpdate,
  }) {
    return userAdsFetch?.call(offset, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int offset, int userId)? userAdsFetch,
    TResult Function(List<Ad> adsUpdate)? userAdsUpdate,
    required TResult orElse(),
  }) {
    if (userAdsFetch != null) {
      return userAdsFetch(offset, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdEventUserFetch value) userAdsFetch,
    required TResult Function(AdEventUserAdsUpdate value) userAdsUpdate,
  }) {
    return userAdsFetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AdEventUserFetch value)? userAdsFetch,
    TResult Function(AdEventUserAdsUpdate value)? userAdsUpdate,
  }) {
    return userAdsFetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdEventUserFetch value)? userAdsFetch,
    TResult Function(AdEventUserAdsUpdate value)? userAdsUpdate,
    required TResult orElse(),
  }) {
    if (userAdsFetch != null) {
      return userAdsFetch(this);
    }
    return orElse();
  }
}

abstract class AdEventUserFetch implements AdUserEvent {
  const factory AdEventUserFetch({required int offset, required int userId}) =
      _$AdEventUserFetch;

  int get offset;
  int get userId;
  @JsonKey(ignore: true)
  $AdEventUserFetchCopyWith<AdEventUserFetch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdEventUserAdsUpdateCopyWith<$Res> {
  factory $AdEventUserAdsUpdateCopyWith(AdEventUserAdsUpdate value,
          $Res Function(AdEventUserAdsUpdate) then) =
      _$AdEventUserAdsUpdateCopyWithImpl<$Res>;
  $Res call({List<Ad> adsUpdate});
}

/// @nodoc
class _$AdEventUserAdsUpdateCopyWithImpl<$Res>
    extends _$AdUserEventCopyWithImpl<$Res>
    implements $AdEventUserAdsUpdateCopyWith<$Res> {
  _$AdEventUserAdsUpdateCopyWithImpl(
      AdEventUserAdsUpdate _value, $Res Function(AdEventUserAdsUpdate) _then)
      : super(_value, (v) => _then(v as AdEventUserAdsUpdate));

  @override
  AdEventUserAdsUpdate get _value => super._value as AdEventUserAdsUpdate;

  @override
  $Res call({
    Object? adsUpdate = freezed,
  }) {
    return _then(AdEventUserAdsUpdate(
      adsUpdate: adsUpdate == freezed
          ? _value.adsUpdate
          : adsUpdate // ignore: cast_nullable_to_non_nullable
              as List<Ad>,
    ));
  }
}

/// @nodoc

class _$AdEventUserAdsUpdate
    with DiagnosticableTreeMixin
    implements AdEventUserAdsUpdate {
  const _$AdEventUserAdsUpdate({required this.adsUpdate});

  @override
  final List<Ad> adsUpdate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AdUserEvent.userAdsUpdate(adsUpdate: $adsUpdate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AdUserEvent.userAdsUpdate'))
      ..add(DiagnosticsProperty('adsUpdate', adsUpdate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdEventUserAdsUpdate &&
            const DeepCollectionEquality().equals(other.adsUpdate, adsUpdate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(adsUpdate));

  @JsonKey(ignore: true)
  @override
  $AdEventUserAdsUpdateCopyWith<AdEventUserAdsUpdate> get copyWith =>
      _$AdEventUserAdsUpdateCopyWithImpl<AdEventUserAdsUpdate>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int offset, int userId) userAdsFetch,
    required TResult Function(List<Ad> adsUpdate) userAdsUpdate,
  }) {
    return userAdsUpdate(adsUpdate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int offset, int userId)? userAdsFetch,
    TResult Function(List<Ad> adsUpdate)? userAdsUpdate,
  }) {
    return userAdsUpdate?.call(adsUpdate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int offset, int userId)? userAdsFetch,
    TResult Function(List<Ad> adsUpdate)? userAdsUpdate,
    required TResult orElse(),
  }) {
    if (userAdsUpdate != null) {
      return userAdsUpdate(adsUpdate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdEventUserFetch value) userAdsFetch,
    required TResult Function(AdEventUserAdsUpdate value) userAdsUpdate,
  }) {
    return userAdsUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AdEventUserFetch value)? userAdsFetch,
    TResult Function(AdEventUserAdsUpdate value)? userAdsUpdate,
  }) {
    return userAdsUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdEventUserFetch value)? userAdsFetch,
    TResult Function(AdEventUserAdsUpdate value)? userAdsUpdate,
    required TResult orElse(),
  }) {
    if (userAdsUpdate != null) {
      return userAdsUpdate(this);
    }
    return orElse();
  }
}

abstract class AdEventUserAdsUpdate implements AdUserEvent {
  const factory AdEventUserAdsUpdate({required List<Ad> adsUpdate}) =
      _$AdEventUserAdsUpdate;

  List<Ad> get adsUpdate;
  @JsonKey(ignore: true)
  $AdEventUserAdsUpdateCopyWith<AdEventUserAdsUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AdUserStateTearOff {
  const _$AdUserStateTearOff();

  AdStateLoading loading() {
    return const AdStateLoading();
  }

  AdStateUserLoaded userAdsLoaded({required AdResponse adLoaded}) {
    return AdStateUserLoaded(
      adLoaded: adLoaded,
    );
  }

  AdStateError error() {
    return const AdStateError();
  }
}

/// @nodoc
const $AdUserState = _$AdUserStateTearOff();

/// @nodoc
mixin _$AdUserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AdResponse adLoaded) userAdsLoaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AdResponse adLoaded)? userAdsLoaded,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AdResponse adLoaded)? userAdsLoaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdStateLoading value) loading,
    required TResult Function(AdStateUserLoaded value) userAdsLoaded,
    required TResult Function(AdStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AdStateLoading value)? loading,
    TResult Function(AdStateUserLoaded value)? userAdsLoaded,
    TResult Function(AdStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdStateLoading value)? loading,
    TResult Function(AdStateUserLoaded value)? userAdsLoaded,
    TResult Function(AdStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdUserStateCopyWith<$Res> {
  factory $AdUserStateCopyWith(
          AdUserState value, $Res Function(AdUserState) then) =
      _$AdUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AdUserStateCopyWithImpl<$Res> implements $AdUserStateCopyWith<$Res> {
  _$AdUserStateCopyWithImpl(this._value, this._then);

  final AdUserState _value;
  // ignore: unused_field
  final $Res Function(AdUserState) _then;
}

/// @nodoc
abstract class $AdStateLoadingCopyWith<$Res> {
  factory $AdStateLoadingCopyWith(
          AdStateLoading value, $Res Function(AdStateLoading) then) =
      _$AdStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$AdStateLoadingCopyWithImpl<$Res> extends _$AdUserStateCopyWithImpl<$Res>
    implements $AdStateLoadingCopyWith<$Res> {
  _$AdStateLoadingCopyWithImpl(
      AdStateLoading _value, $Res Function(AdStateLoading) _then)
      : super(_value, (v) => _then(v as AdStateLoading));

  @override
  AdStateLoading get _value => super._value as AdStateLoading;
}

/// @nodoc

class _$AdStateLoading with DiagnosticableTreeMixin implements AdStateLoading {
  const _$AdStateLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AdUserState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AdUserState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AdStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AdResponse adLoaded) userAdsLoaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AdResponse adLoaded)? userAdsLoaded,
    TResult Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AdResponse adLoaded)? userAdsLoaded,
    TResult Function()? error,
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
    required TResult Function(AdStateLoading value) loading,
    required TResult Function(AdStateUserLoaded value) userAdsLoaded,
    required TResult Function(AdStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AdStateLoading value)? loading,
    TResult Function(AdStateUserLoaded value)? userAdsLoaded,
    TResult Function(AdStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdStateLoading value)? loading,
    TResult Function(AdStateUserLoaded value)? userAdsLoaded,
    TResult Function(AdStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AdStateLoading implements AdUserState {
  const factory AdStateLoading() = _$AdStateLoading;
}

/// @nodoc
abstract class $AdStateUserLoadedCopyWith<$Res> {
  factory $AdStateUserLoadedCopyWith(
          AdStateUserLoaded value, $Res Function(AdStateUserLoaded) then) =
      _$AdStateUserLoadedCopyWithImpl<$Res>;
  $Res call({AdResponse adLoaded});

  $AdResponseCopyWith<$Res> get adLoaded;
}

/// @nodoc
class _$AdStateUserLoadedCopyWithImpl<$Res>
    extends _$AdUserStateCopyWithImpl<$Res>
    implements $AdStateUserLoadedCopyWith<$Res> {
  _$AdStateUserLoadedCopyWithImpl(
      AdStateUserLoaded _value, $Res Function(AdStateUserLoaded) _then)
      : super(_value, (v) => _then(v as AdStateUserLoaded));

  @override
  AdStateUserLoaded get _value => super._value as AdStateUserLoaded;

  @override
  $Res call({
    Object? adLoaded = freezed,
  }) {
    return _then(AdStateUserLoaded(
      adLoaded: adLoaded == freezed
          ? _value.adLoaded
          : adLoaded // ignore: cast_nullable_to_non_nullable
              as AdResponse,
    ));
  }

  @override
  $AdResponseCopyWith<$Res> get adLoaded {
    return $AdResponseCopyWith<$Res>(_value.adLoaded, (value) {
      return _then(_value.copyWith(adLoaded: value));
    });
  }
}

/// @nodoc

class _$AdStateUserLoaded
    with DiagnosticableTreeMixin
    implements AdStateUserLoaded {
  const _$AdStateUserLoaded({required this.adLoaded});

  @override
  final AdResponse adLoaded;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AdUserState.userAdsLoaded(adLoaded: $adLoaded)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AdUserState.userAdsLoaded'))
      ..add(DiagnosticsProperty('adLoaded', adLoaded));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdStateUserLoaded &&
            const DeepCollectionEquality().equals(other.adLoaded, adLoaded));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(adLoaded));

  @JsonKey(ignore: true)
  @override
  $AdStateUserLoadedCopyWith<AdStateUserLoaded> get copyWith =>
      _$AdStateUserLoadedCopyWithImpl<AdStateUserLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AdResponse adLoaded) userAdsLoaded,
    required TResult Function() error,
  }) {
    return userAdsLoaded(adLoaded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AdResponse adLoaded)? userAdsLoaded,
    TResult Function()? error,
  }) {
    return userAdsLoaded?.call(adLoaded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AdResponse adLoaded)? userAdsLoaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (userAdsLoaded != null) {
      return userAdsLoaded(adLoaded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdStateLoading value) loading,
    required TResult Function(AdStateUserLoaded value) userAdsLoaded,
    required TResult Function(AdStateError value) error,
  }) {
    return userAdsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AdStateLoading value)? loading,
    TResult Function(AdStateUserLoaded value)? userAdsLoaded,
    TResult Function(AdStateError value)? error,
  }) {
    return userAdsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdStateLoading value)? loading,
    TResult Function(AdStateUserLoaded value)? userAdsLoaded,
    TResult Function(AdStateError value)? error,
    required TResult orElse(),
  }) {
    if (userAdsLoaded != null) {
      return userAdsLoaded(this);
    }
    return orElse();
  }
}

abstract class AdStateUserLoaded implements AdUserState {
  const factory AdStateUserLoaded({required AdResponse adLoaded}) =
      _$AdStateUserLoaded;

  AdResponse get adLoaded;
  @JsonKey(ignore: true)
  $AdStateUserLoadedCopyWith<AdStateUserLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdStateErrorCopyWith<$Res> {
  factory $AdStateErrorCopyWith(
          AdStateError value, $Res Function(AdStateError) then) =
      _$AdStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$AdStateErrorCopyWithImpl<$Res> extends _$AdUserStateCopyWithImpl<$Res>
    implements $AdStateErrorCopyWith<$Res> {
  _$AdStateErrorCopyWithImpl(
      AdStateError _value, $Res Function(AdStateError) _then)
      : super(_value, (v) => _then(v as AdStateError));

  @override
  AdStateError get _value => super._value as AdStateError;
}

/// @nodoc

class _$AdStateError with DiagnosticableTreeMixin implements AdStateError {
  const _$AdStateError();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AdUserState.error()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AdUserState.error'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AdStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AdResponse adLoaded) userAdsLoaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AdResponse adLoaded)? userAdsLoaded,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AdResponse adLoaded)? userAdsLoaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdStateLoading value) loading,
    required TResult Function(AdStateUserLoaded value) userAdsLoaded,
    required TResult Function(AdStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AdStateLoading value)? loading,
    TResult Function(AdStateUserLoaded value)? userAdsLoaded,
    TResult Function(AdStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdStateLoading value)? loading,
    TResult Function(AdStateUserLoaded value)? userAdsLoaded,
    TResult Function(AdStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AdStateError implements AdUserState {
  const factory AdStateError() = _$AdStateError;
}
