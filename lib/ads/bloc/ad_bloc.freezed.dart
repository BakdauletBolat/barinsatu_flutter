// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ad_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AdEventTearOff {
  const _$AdEventTearOff();

  AdEventFetch fetch({required int offset}) {
    return AdEventFetch(
      offset: offset,
    );
  }

  AdEventUpdate update({required Ad adUpdate}) {
    return AdEventUpdate(
      adUpdate: adUpdate,
    );
  }
}

/// @nodoc
const $AdEvent = _$AdEventTearOff();

/// @nodoc
mixin _$AdEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int offset) fetch,
    required TResult Function(Ad adUpdate) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int offset)? fetch,
    TResult Function(Ad adUpdate)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int offset)? fetch,
    TResult Function(Ad adUpdate)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdEventFetch value) fetch,
    required TResult Function(AdEventUpdate value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AdEventFetch value)? fetch,
    TResult Function(AdEventUpdate value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdEventFetch value)? fetch,
    TResult Function(AdEventUpdate value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdEventCopyWith<$Res> {
  factory $AdEventCopyWith(AdEvent value, $Res Function(AdEvent) then) =
      _$AdEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AdEventCopyWithImpl<$Res> implements $AdEventCopyWith<$Res> {
  _$AdEventCopyWithImpl(this._value, this._then);

  final AdEvent _value;
  // ignore: unused_field
  final $Res Function(AdEvent) _then;
}

/// @nodoc
abstract class $AdEventFetchCopyWith<$Res> {
  factory $AdEventFetchCopyWith(
          AdEventFetch value, $Res Function(AdEventFetch) then) =
      _$AdEventFetchCopyWithImpl<$Res>;
  $Res call({int offset});
}

/// @nodoc
class _$AdEventFetchCopyWithImpl<$Res> extends _$AdEventCopyWithImpl<$Res>
    implements $AdEventFetchCopyWith<$Res> {
  _$AdEventFetchCopyWithImpl(
      AdEventFetch _value, $Res Function(AdEventFetch) _then)
      : super(_value, (v) => _then(v as AdEventFetch));

  @override
  AdEventFetch get _value => super._value as AdEventFetch;

  @override
  $Res call({
    Object? offset = freezed,
  }) {
    return _then(AdEventFetch(
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AdEventFetch with DiagnosticableTreeMixin implements AdEventFetch {
  const _$AdEventFetch({required this.offset});

  @override
  final int offset;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AdEvent.fetch(offset: $offset)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AdEvent.fetch'))
      ..add(DiagnosticsProperty('offset', offset));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdEventFetch &&
            const DeepCollectionEquality().equals(other.offset, offset));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(offset));

  @JsonKey(ignore: true)
  @override
  $AdEventFetchCopyWith<AdEventFetch> get copyWith =>
      _$AdEventFetchCopyWithImpl<AdEventFetch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int offset) fetch,
    required TResult Function(Ad adUpdate) update,
  }) {
    return fetch(offset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int offset)? fetch,
    TResult Function(Ad adUpdate)? update,
  }) {
    return fetch?.call(offset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int offset)? fetch,
    TResult Function(Ad adUpdate)? update,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(offset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdEventFetch value) fetch,
    required TResult Function(AdEventUpdate value) update,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AdEventFetch value)? fetch,
    TResult Function(AdEventUpdate value)? update,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdEventFetch value)? fetch,
    TResult Function(AdEventUpdate value)? update,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class AdEventFetch implements AdEvent {
  const factory AdEventFetch({required int offset}) = _$AdEventFetch;

  int get offset;
  @JsonKey(ignore: true)
  $AdEventFetchCopyWith<AdEventFetch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdEventUpdateCopyWith<$Res> {
  factory $AdEventUpdateCopyWith(
          AdEventUpdate value, $Res Function(AdEventUpdate) then) =
      _$AdEventUpdateCopyWithImpl<$Res>;
  $Res call({Ad adUpdate});

  $AdCopyWith<$Res> get adUpdate;
}

/// @nodoc
class _$AdEventUpdateCopyWithImpl<$Res> extends _$AdEventCopyWithImpl<$Res>
    implements $AdEventUpdateCopyWith<$Res> {
  _$AdEventUpdateCopyWithImpl(
      AdEventUpdate _value, $Res Function(AdEventUpdate) _then)
      : super(_value, (v) => _then(v as AdEventUpdate));

  @override
  AdEventUpdate get _value => super._value as AdEventUpdate;

  @override
  $Res call({
    Object? adUpdate = freezed,
  }) {
    return _then(AdEventUpdate(
      adUpdate: adUpdate == freezed
          ? _value.adUpdate
          : adUpdate // ignore: cast_nullable_to_non_nullable
              as Ad,
    ));
  }

  @override
  $AdCopyWith<$Res> get adUpdate {
    return $AdCopyWith<$Res>(_value.adUpdate, (value) {
      return _then(_value.copyWith(adUpdate: value));
    });
  }
}

/// @nodoc

class _$AdEventUpdate with DiagnosticableTreeMixin implements AdEventUpdate {
  const _$AdEventUpdate({required this.adUpdate});

  @override
  final Ad adUpdate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AdEvent.update(adUpdate: $adUpdate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AdEvent.update'))
      ..add(DiagnosticsProperty('adUpdate', adUpdate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdEventUpdate &&
            const DeepCollectionEquality().equals(other.adUpdate, adUpdate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(adUpdate));

  @JsonKey(ignore: true)
  @override
  $AdEventUpdateCopyWith<AdEventUpdate> get copyWith =>
      _$AdEventUpdateCopyWithImpl<AdEventUpdate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int offset) fetch,
    required TResult Function(Ad adUpdate) update,
  }) {
    return update(adUpdate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int offset)? fetch,
    TResult Function(Ad adUpdate)? update,
  }) {
    return update?.call(adUpdate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int offset)? fetch,
    TResult Function(Ad adUpdate)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(adUpdate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdEventFetch value) fetch,
    required TResult Function(AdEventUpdate value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AdEventFetch value)? fetch,
    TResult Function(AdEventUpdate value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdEventFetch value)? fetch,
    TResult Function(AdEventUpdate value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class AdEventUpdate implements AdEvent {
  const factory AdEventUpdate({required Ad adUpdate}) = _$AdEventUpdate;

  Ad get adUpdate;
  @JsonKey(ignore: true)
  $AdEventUpdateCopyWith<AdEventUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AdStateTearOff {
  const _$AdStateTearOff();

  AdStateLoading loading() {
    return const AdStateLoading();
  }

  AdStateLoaded loaded({required List<Ad> adLoaded}) {
    return AdStateLoaded(
      adLoaded: adLoaded,
    );
  }

  AdStateError error() {
    return const AdStateError();
  }
}

/// @nodoc
const $AdState = _$AdStateTearOff();

/// @nodoc
mixin _$AdState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Ad> adLoaded) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Ad> adLoaded)? loaded,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Ad> adLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdStateLoading value) loading,
    required TResult Function(AdStateLoaded value) loaded,
    required TResult Function(AdStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AdStateLoading value)? loading,
    TResult Function(AdStateLoaded value)? loaded,
    TResult Function(AdStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdStateLoading value)? loading,
    TResult Function(AdStateLoaded value)? loaded,
    TResult Function(AdStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdStateCopyWith<$Res> {
  factory $AdStateCopyWith(AdState value, $Res Function(AdState) then) =
      _$AdStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AdStateCopyWithImpl<$Res> implements $AdStateCopyWith<$Res> {
  _$AdStateCopyWithImpl(this._value, this._then);

  final AdState _value;
  // ignore: unused_field
  final $Res Function(AdState) _then;
}

/// @nodoc
abstract class $AdStateLoadingCopyWith<$Res> {
  factory $AdStateLoadingCopyWith(
          AdStateLoading value, $Res Function(AdStateLoading) then) =
      _$AdStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$AdStateLoadingCopyWithImpl<$Res> extends _$AdStateCopyWithImpl<$Res>
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
    return 'AdState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AdState.loading'));
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
    required TResult Function(List<Ad> adLoaded) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Ad> adLoaded)? loaded,
    TResult Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Ad> adLoaded)? loaded,
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
    required TResult Function(AdStateLoaded value) loaded,
    required TResult Function(AdStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AdStateLoading value)? loading,
    TResult Function(AdStateLoaded value)? loaded,
    TResult Function(AdStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdStateLoading value)? loading,
    TResult Function(AdStateLoaded value)? loaded,
    TResult Function(AdStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AdStateLoading implements AdState {
  const factory AdStateLoading() = _$AdStateLoading;
}

/// @nodoc
abstract class $AdStateLoadedCopyWith<$Res> {
  factory $AdStateLoadedCopyWith(
          AdStateLoaded value, $Res Function(AdStateLoaded) then) =
      _$AdStateLoadedCopyWithImpl<$Res>;
  $Res call({List<Ad> adLoaded});
}

/// @nodoc
class _$AdStateLoadedCopyWithImpl<$Res> extends _$AdStateCopyWithImpl<$Res>
    implements $AdStateLoadedCopyWith<$Res> {
  _$AdStateLoadedCopyWithImpl(
      AdStateLoaded _value, $Res Function(AdStateLoaded) _then)
      : super(_value, (v) => _then(v as AdStateLoaded));

  @override
  AdStateLoaded get _value => super._value as AdStateLoaded;

  @override
  $Res call({
    Object? adLoaded = freezed,
  }) {
    return _then(AdStateLoaded(
      adLoaded: adLoaded == freezed
          ? _value.adLoaded
          : adLoaded // ignore: cast_nullable_to_non_nullable
              as List<Ad>,
    ));
  }
}

/// @nodoc

class _$AdStateLoaded with DiagnosticableTreeMixin implements AdStateLoaded {
  const _$AdStateLoaded({required this.adLoaded});

  @override
  final List<Ad> adLoaded;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AdState.loaded(adLoaded: $adLoaded)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AdState.loaded'))
      ..add(DiagnosticsProperty('adLoaded', adLoaded));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdStateLoaded &&
            const DeepCollectionEquality().equals(other.adLoaded, adLoaded));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(adLoaded));

  @JsonKey(ignore: true)
  @override
  $AdStateLoadedCopyWith<AdStateLoaded> get copyWith =>
      _$AdStateLoadedCopyWithImpl<AdStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Ad> adLoaded) loaded,
    required TResult Function() error,
  }) {
    return loaded(adLoaded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Ad> adLoaded)? loaded,
    TResult Function()? error,
  }) {
    return loaded?.call(adLoaded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Ad> adLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(adLoaded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdStateLoading value) loading,
    required TResult Function(AdStateLoaded value) loaded,
    required TResult Function(AdStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AdStateLoading value)? loading,
    TResult Function(AdStateLoaded value)? loaded,
    TResult Function(AdStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdStateLoading value)? loading,
    TResult Function(AdStateLoaded value)? loaded,
    TResult Function(AdStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class AdStateLoaded implements AdState {
  const factory AdStateLoaded({required List<Ad> adLoaded}) = _$AdStateLoaded;

  List<Ad> get adLoaded;
  @JsonKey(ignore: true)
  $AdStateLoadedCopyWith<AdStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdStateErrorCopyWith<$Res> {
  factory $AdStateErrorCopyWith(
          AdStateError value, $Res Function(AdStateError) then) =
      _$AdStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$AdStateErrorCopyWithImpl<$Res> extends _$AdStateCopyWithImpl<$Res>
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
    return 'AdState.error()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AdState.error'));
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
    required TResult Function(List<Ad> adLoaded) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Ad> adLoaded)? loaded,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Ad> adLoaded)? loaded,
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
    required TResult Function(AdStateLoaded value) loaded,
    required TResult Function(AdStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AdStateLoading value)? loading,
    TResult Function(AdStateLoaded value)? loaded,
    TResult Function(AdStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdStateLoading value)? loading,
    TResult Function(AdStateLoaded value)? loaded,
    TResult Function(AdStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AdStateError implements AdState {
  const factory AdStateError() = _$AdStateError;
}
