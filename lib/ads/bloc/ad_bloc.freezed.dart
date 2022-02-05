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

  AdEventFetch fetch({required int offset, required int adType}) {
    return AdEventFetch(
      offset: offset,
      adType: adType,
    );
  }

  AdEventUpdate update({required List<Ad> adsUpdate}) {
    return AdEventUpdate(
      adsUpdate: adsUpdate,
    );
  }

  AdEventLikeAd likeAd({required int ad}) {
    return AdEventLikeAd(
      ad: ad,
    );
  }
}

/// @nodoc
const $AdEvent = _$AdEventTearOff();

/// @nodoc
mixin _$AdEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int offset, int adType) fetch,
    required TResult Function(List<Ad> adsUpdate) update,
    required TResult Function(int ad) likeAd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int offset, int adType)? fetch,
    TResult Function(List<Ad> adsUpdate)? update,
    TResult Function(int ad)? likeAd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int offset, int adType)? fetch,
    TResult Function(List<Ad> adsUpdate)? update,
    TResult Function(int ad)? likeAd,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdEventFetch value) fetch,
    required TResult Function(AdEventUpdate value) update,
    required TResult Function(AdEventLikeAd value) likeAd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AdEventFetch value)? fetch,
    TResult Function(AdEventUpdate value)? update,
    TResult Function(AdEventLikeAd value)? likeAd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdEventFetch value)? fetch,
    TResult Function(AdEventUpdate value)? update,
    TResult Function(AdEventLikeAd value)? likeAd,
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
  $Res call({int offset, int adType});
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
    Object? adType = freezed,
  }) {
    return _then(AdEventFetch(
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      adType: adType == freezed
          ? _value.adType
          : adType // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AdEventFetch with DiagnosticableTreeMixin implements AdEventFetch {
  const _$AdEventFetch({required this.offset, required this.adType});

  @override
  final int offset;
  @override
  final int adType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AdEvent.fetch(offset: $offset, adType: $adType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AdEvent.fetch'))
      ..add(DiagnosticsProperty('offset', offset))
      ..add(DiagnosticsProperty('adType', adType));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdEventFetch &&
            const DeepCollectionEquality().equals(other.offset, offset) &&
            const DeepCollectionEquality().equals(other.adType, adType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(offset),
      const DeepCollectionEquality().hash(adType));

  @JsonKey(ignore: true)
  @override
  $AdEventFetchCopyWith<AdEventFetch> get copyWith =>
      _$AdEventFetchCopyWithImpl<AdEventFetch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int offset, int adType) fetch,
    required TResult Function(List<Ad> adsUpdate) update,
    required TResult Function(int ad) likeAd,
  }) {
    return fetch(offset, adType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int offset, int adType)? fetch,
    TResult Function(List<Ad> adsUpdate)? update,
    TResult Function(int ad)? likeAd,
  }) {
    return fetch?.call(offset, adType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int offset, int adType)? fetch,
    TResult Function(List<Ad> adsUpdate)? update,
    TResult Function(int ad)? likeAd,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(offset, adType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdEventFetch value) fetch,
    required TResult Function(AdEventUpdate value) update,
    required TResult Function(AdEventLikeAd value) likeAd,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AdEventFetch value)? fetch,
    TResult Function(AdEventUpdate value)? update,
    TResult Function(AdEventLikeAd value)? likeAd,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdEventFetch value)? fetch,
    TResult Function(AdEventUpdate value)? update,
    TResult Function(AdEventLikeAd value)? likeAd,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class AdEventFetch implements AdEvent {
  const factory AdEventFetch({required int offset, required int adType}) =
      _$AdEventFetch;

  int get offset;
  int get adType;
  @JsonKey(ignore: true)
  $AdEventFetchCopyWith<AdEventFetch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdEventUpdateCopyWith<$Res> {
  factory $AdEventUpdateCopyWith(
          AdEventUpdate value, $Res Function(AdEventUpdate) then) =
      _$AdEventUpdateCopyWithImpl<$Res>;
  $Res call({List<Ad> adsUpdate});
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
    Object? adsUpdate = freezed,
  }) {
    return _then(AdEventUpdate(
      adsUpdate: adsUpdate == freezed
          ? _value.adsUpdate
          : adsUpdate // ignore: cast_nullable_to_non_nullable
              as List<Ad>,
    ));
  }
}

/// @nodoc

class _$AdEventUpdate with DiagnosticableTreeMixin implements AdEventUpdate {
  const _$AdEventUpdate({required this.adsUpdate});

  @override
  final List<Ad> adsUpdate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AdEvent.update(adsUpdate: $adsUpdate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AdEvent.update'))
      ..add(DiagnosticsProperty('adsUpdate', adsUpdate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdEventUpdate &&
            const DeepCollectionEquality().equals(other.adsUpdate, adsUpdate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(adsUpdate));

  @JsonKey(ignore: true)
  @override
  $AdEventUpdateCopyWith<AdEventUpdate> get copyWith =>
      _$AdEventUpdateCopyWithImpl<AdEventUpdate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int offset, int adType) fetch,
    required TResult Function(List<Ad> adsUpdate) update,
    required TResult Function(int ad) likeAd,
  }) {
    return update(adsUpdate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int offset, int adType)? fetch,
    TResult Function(List<Ad> adsUpdate)? update,
    TResult Function(int ad)? likeAd,
  }) {
    return update?.call(adsUpdate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int offset, int adType)? fetch,
    TResult Function(List<Ad> adsUpdate)? update,
    TResult Function(int ad)? likeAd,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(adsUpdate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdEventFetch value) fetch,
    required TResult Function(AdEventUpdate value) update,
    required TResult Function(AdEventLikeAd value) likeAd,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AdEventFetch value)? fetch,
    TResult Function(AdEventUpdate value)? update,
    TResult Function(AdEventLikeAd value)? likeAd,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdEventFetch value)? fetch,
    TResult Function(AdEventUpdate value)? update,
    TResult Function(AdEventLikeAd value)? likeAd,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class AdEventUpdate implements AdEvent {
  const factory AdEventUpdate({required List<Ad> adsUpdate}) = _$AdEventUpdate;

  List<Ad> get adsUpdate;
  @JsonKey(ignore: true)
  $AdEventUpdateCopyWith<AdEventUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdEventLikeAdCopyWith<$Res> {
  factory $AdEventLikeAdCopyWith(
          AdEventLikeAd value, $Res Function(AdEventLikeAd) then) =
      _$AdEventLikeAdCopyWithImpl<$Res>;
  $Res call({int ad});
}

/// @nodoc
class _$AdEventLikeAdCopyWithImpl<$Res> extends _$AdEventCopyWithImpl<$Res>
    implements $AdEventLikeAdCopyWith<$Res> {
  _$AdEventLikeAdCopyWithImpl(
      AdEventLikeAd _value, $Res Function(AdEventLikeAd) _then)
      : super(_value, (v) => _then(v as AdEventLikeAd));

  @override
  AdEventLikeAd get _value => super._value as AdEventLikeAd;

  @override
  $Res call({
    Object? ad = freezed,
  }) {
    return _then(AdEventLikeAd(
      ad: ad == freezed
          ? _value.ad
          : ad // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AdEventLikeAd with DiagnosticableTreeMixin implements AdEventLikeAd {
  const _$AdEventLikeAd({required this.ad});

  @override
  final int ad;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AdEvent.likeAd(ad: $ad)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AdEvent.likeAd'))
      ..add(DiagnosticsProperty('ad', ad));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdEventLikeAd &&
            const DeepCollectionEquality().equals(other.ad, ad));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(ad));

  @JsonKey(ignore: true)
  @override
  $AdEventLikeAdCopyWith<AdEventLikeAd> get copyWith =>
      _$AdEventLikeAdCopyWithImpl<AdEventLikeAd>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int offset, int adType) fetch,
    required TResult Function(List<Ad> adsUpdate) update,
    required TResult Function(int ad) likeAd,
  }) {
    return likeAd(ad);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int offset, int adType)? fetch,
    TResult Function(List<Ad> adsUpdate)? update,
    TResult Function(int ad)? likeAd,
  }) {
    return likeAd?.call(ad);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int offset, int adType)? fetch,
    TResult Function(List<Ad> adsUpdate)? update,
    TResult Function(int ad)? likeAd,
    required TResult orElse(),
  }) {
    if (likeAd != null) {
      return likeAd(ad);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdEventFetch value) fetch,
    required TResult Function(AdEventUpdate value) update,
    required TResult Function(AdEventLikeAd value) likeAd,
  }) {
    return likeAd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AdEventFetch value)? fetch,
    TResult Function(AdEventUpdate value)? update,
    TResult Function(AdEventLikeAd value)? likeAd,
  }) {
    return likeAd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdEventFetch value)? fetch,
    TResult Function(AdEventUpdate value)? update,
    TResult Function(AdEventLikeAd value)? likeAd,
    required TResult orElse(),
  }) {
    if (likeAd != null) {
      return likeAd(this);
    }
    return orElse();
  }
}

abstract class AdEventLikeAd implements AdEvent {
  const factory AdEventLikeAd({required int ad}) = _$AdEventLikeAd;

  int get ad;
  @JsonKey(ignore: true)
  $AdEventLikeAdCopyWith<AdEventLikeAd> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AdStateTearOff {
  const _$AdStateTearOff();

  AdStateLoading loading() {
    return const AdStateLoading();
  }

  AdStateLoaded loaded({required AdResponse adLoaded}) {
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
    required TResult Function(AdResponse adLoaded) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AdResponse adLoaded)? loaded,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AdResponse adLoaded)? loaded,
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
    required TResult Function(AdResponse adLoaded) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AdResponse adLoaded)? loaded,
    TResult Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AdResponse adLoaded)? loaded,
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
  $Res call({AdResponse adLoaded});

  $AdResponseCopyWith<$Res> get adLoaded;
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

class _$AdStateLoaded with DiagnosticableTreeMixin implements AdStateLoaded {
  const _$AdStateLoaded({required this.adLoaded});

  @override
  final AdResponse adLoaded;

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
    required TResult Function(AdResponse adLoaded) loaded,
    required TResult Function() error,
  }) {
    return loaded(adLoaded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AdResponse adLoaded)? loaded,
    TResult Function()? error,
  }) {
    return loaded?.call(adLoaded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AdResponse adLoaded)? loaded,
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
  const factory AdStateLoaded({required AdResponse adLoaded}) = _$AdStateLoaded;

  AdResponse get adLoaded;
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
    required TResult Function(AdResponse adLoaded) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AdResponse adLoaded)? loaded,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AdResponse adLoaded)? loaded,
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
