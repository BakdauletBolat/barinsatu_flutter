// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'map_ad_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MapAdEventTearOff {
  const _$MapAdEventTearOff();

  MapAdFetch mapAdsFetch() {
    return const MapAdFetch();
  }
}

/// @nodoc
const $MapAdEvent = _$MapAdEventTearOff();

/// @nodoc
mixin _$MapAdEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() mapAdsFetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? mapAdsFetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? mapAdsFetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MapAdFetch value) mapAdsFetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MapAdFetch value)? mapAdsFetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MapAdFetch value)? mapAdsFetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapAdEventCopyWith<$Res> {
  factory $MapAdEventCopyWith(
          MapAdEvent value, $Res Function(MapAdEvent) then) =
      _$MapAdEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MapAdEventCopyWithImpl<$Res> implements $MapAdEventCopyWith<$Res> {
  _$MapAdEventCopyWithImpl(this._value, this._then);

  final MapAdEvent _value;
  // ignore: unused_field
  final $Res Function(MapAdEvent) _then;
}

/// @nodoc
abstract class $MapAdFetchCopyWith<$Res> {
  factory $MapAdFetchCopyWith(
          MapAdFetch value, $Res Function(MapAdFetch) then) =
      _$MapAdFetchCopyWithImpl<$Res>;
}

/// @nodoc
class _$MapAdFetchCopyWithImpl<$Res> extends _$MapAdEventCopyWithImpl<$Res>
    implements $MapAdFetchCopyWith<$Res> {
  _$MapAdFetchCopyWithImpl(MapAdFetch _value, $Res Function(MapAdFetch) _then)
      : super(_value, (v) => _then(v as MapAdFetch));

  @override
  MapAdFetch get _value => super._value as MapAdFetch;
}

/// @nodoc

class _$MapAdFetch with DiagnosticableTreeMixin implements MapAdFetch {
  const _$MapAdFetch();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MapAdEvent.mapAdsFetch()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'MapAdEvent.mapAdsFetch'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MapAdFetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() mapAdsFetch,
  }) {
    return mapAdsFetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? mapAdsFetch,
  }) {
    return mapAdsFetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? mapAdsFetch,
    required TResult orElse(),
  }) {
    if (mapAdsFetch != null) {
      return mapAdsFetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MapAdFetch value) mapAdsFetch,
  }) {
    return mapAdsFetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MapAdFetch value)? mapAdsFetch,
  }) {
    return mapAdsFetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MapAdFetch value)? mapAdsFetch,
    required TResult orElse(),
  }) {
    if (mapAdsFetch != null) {
      return mapAdsFetch(this);
    }
    return orElse();
  }
}

abstract class MapAdFetch implements MapAdEvent {
  const factory MapAdFetch() = _$MapAdFetch;
}

/// @nodoc
class _$MapAdStateTearOff {
  const _$MapAdStateTearOff();

  MapAdLoading loading() {
    return const MapAdLoading();
  }

  MapAdUserLoaded mapAdsLoaded({required List<Ad> adLoaded}) {
    return MapAdUserLoaded(
      adLoaded: adLoaded,
    );
  }

  MapAdError error() {
    return const MapAdError();
  }
}

/// @nodoc
const $MapAdState = _$MapAdStateTearOff();

/// @nodoc
mixin _$MapAdState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Ad> adLoaded) mapAdsLoaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Ad> adLoaded)? mapAdsLoaded,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Ad> adLoaded)? mapAdsLoaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MapAdLoading value) loading,
    required TResult Function(MapAdUserLoaded value) mapAdsLoaded,
    required TResult Function(MapAdError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MapAdLoading value)? loading,
    TResult Function(MapAdUserLoaded value)? mapAdsLoaded,
    TResult Function(MapAdError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MapAdLoading value)? loading,
    TResult Function(MapAdUserLoaded value)? mapAdsLoaded,
    TResult Function(MapAdError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapAdStateCopyWith<$Res> {
  factory $MapAdStateCopyWith(
          MapAdState value, $Res Function(MapAdState) then) =
      _$MapAdStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MapAdStateCopyWithImpl<$Res> implements $MapAdStateCopyWith<$Res> {
  _$MapAdStateCopyWithImpl(this._value, this._then);

  final MapAdState _value;
  // ignore: unused_field
  final $Res Function(MapAdState) _then;
}

/// @nodoc
abstract class $MapAdLoadingCopyWith<$Res> {
  factory $MapAdLoadingCopyWith(
          MapAdLoading value, $Res Function(MapAdLoading) then) =
      _$MapAdLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$MapAdLoadingCopyWithImpl<$Res> extends _$MapAdStateCopyWithImpl<$Res>
    implements $MapAdLoadingCopyWith<$Res> {
  _$MapAdLoadingCopyWithImpl(
      MapAdLoading _value, $Res Function(MapAdLoading) _then)
      : super(_value, (v) => _then(v as MapAdLoading));

  @override
  MapAdLoading get _value => super._value as MapAdLoading;
}

/// @nodoc

class _$MapAdLoading with DiagnosticableTreeMixin implements MapAdLoading {
  const _$MapAdLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MapAdState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'MapAdState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MapAdLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Ad> adLoaded) mapAdsLoaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Ad> adLoaded)? mapAdsLoaded,
    TResult Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Ad> adLoaded)? mapAdsLoaded,
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
    required TResult Function(MapAdLoading value) loading,
    required TResult Function(MapAdUserLoaded value) mapAdsLoaded,
    required TResult Function(MapAdError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MapAdLoading value)? loading,
    TResult Function(MapAdUserLoaded value)? mapAdsLoaded,
    TResult Function(MapAdError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MapAdLoading value)? loading,
    TResult Function(MapAdUserLoaded value)? mapAdsLoaded,
    TResult Function(MapAdError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MapAdLoading implements MapAdState {
  const factory MapAdLoading() = _$MapAdLoading;
}

/// @nodoc
abstract class $MapAdUserLoadedCopyWith<$Res> {
  factory $MapAdUserLoadedCopyWith(
          MapAdUserLoaded value, $Res Function(MapAdUserLoaded) then) =
      _$MapAdUserLoadedCopyWithImpl<$Res>;
  $Res call({List<Ad> adLoaded});
}

/// @nodoc
class _$MapAdUserLoadedCopyWithImpl<$Res> extends _$MapAdStateCopyWithImpl<$Res>
    implements $MapAdUserLoadedCopyWith<$Res> {
  _$MapAdUserLoadedCopyWithImpl(
      MapAdUserLoaded _value, $Res Function(MapAdUserLoaded) _then)
      : super(_value, (v) => _then(v as MapAdUserLoaded));

  @override
  MapAdUserLoaded get _value => super._value as MapAdUserLoaded;

  @override
  $Res call({
    Object? adLoaded = freezed,
  }) {
    return _then(MapAdUserLoaded(
      adLoaded: adLoaded == freezed
          ? _value.adLoaded
          : adLoaded // ignore: cast_nullable_to_non_nullable
              as List<Ad>,
    ));
  }
}

/// @nodoc

class _$MapAdUserLoaded
    with DiagnosticableTreeMixin
    implements MapAdUserLoaded {
  const _$MapAdUserLoaded({required this.adLoaded});

  @override
  final List<Ad> adLoaded;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MapAdState.mapAdsLoaded(adLoaded: $adLoaded)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MapAdState.mapAdsLoaded'))
      ..add(DiagnosticsProperty('adLoaded', adLoaded));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MapAdUserLoaded &&
            const DeepCollectionEquality().equals(other.adLoaded, adLoaded));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(adLoaded));

  @JsonKey(ignore: true)
  @override
  $MapAdUserLoadedCopyWith<MapAdUserLoaded> get copyWith =>
      _$MapAdUserLoadedCopyWithImpl<MapAdUserLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Ad> adLoaded) mapAdsLoaded,
    required TResult Function() error,
  }) {
    return mapAdsLoaded(adLoaded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Ad> adLoaded)? mapAdsLoaded,
    TResult Function()? error,
  }) {
    return mapAdsLoaded?.call(adLoaded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Ad> adLoaded)? mapAdsLoaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (mapAdsLoaded != null) {
      return mapAdsLoaded(adLoaded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MapAdLoading value) loading,
    required TResult Function(MapAdUserLoaded value) mapAdsLoaded,
    required TResult Function(MapAdError value) error,
  }) {
    return mapAdsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MapAdLoading value)? loading,
    TResult Function(MapAdUserLoaded value)? mapAdsLoaded,
    TResult Function(MapAdError value)? error,
  }) {
    return mapAdsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MapAdLoading value)? loading,
    TResult Function(MapAdUserLoaded value)? mapAdsLoaded,
    TResult Function(MapAdError value)? error,
    required TResult orElse(),
  }) {
    if (mapAdsLoaded != null) {
      return mapAdsLoaded(this);
    }
    return orElse();
  }
}

abstract class MapAdUserLoaded implements MapAdState {
  const factory MapAdUserLoaded({required List<Ad> adLoaded}) =
      _$MapAdUserLoaded;

  List<Ad> get adLoaded;
  @JsonKey(ignore: true)
  $MapAdUserLoadedCopyWith<MapAdUserLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapAdErrorCopyWith<$Res> {
  factory $MapAdErrorCopyWith(
          MapAdError value, $Res Function(MapAdError) then) =
      _$MapAdErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$MapAdErrorCopyWithImpl<$Res> extends _$MapAdStateCopyWithImpl<$Res>
    implements $MapAdErrorCopyWith<$Res> {
  _$MapAdErrorCopyWithImpl(MapAdError _value, $Res Function(MapAdError) _then)
      : super(_value, (v) => _then(v as MapAdError));

  @override
  MapAdError get _value => super._value as MapAdError;
}

/// @nodoc

class _$MapAdError with DiagnosticableTreeMixin implements MapAdError {
  const _$MapAdError();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MapAdState.error()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'MapAdState.error'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MapAdError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Ad> adLoaded) mapAdsLoaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Ad> adLoaded)? mapAdsLoaded,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Ad> adLoaded)? mapAdsLoaded,
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
    required TResult Function(MapAdLoading value) loading,
    required TResult Function(MapAdUserLoaded value) mapAdsLoaded,
    required TResult Function(MapAdError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MapAdLoading value)? loading,
    TResult Function(MapAdUserLoaded value)? mapAdsLoaded,
    TResult Function(MapAdError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MapAdLoading value)? loading,
    TResult Function(MapAdUserLoaded value)? mapAdsLoaded,
    TResult Function(MapAdError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MapAdError implements MapAdState {
  const factory MapAdError() = _$MapAdError;
}
