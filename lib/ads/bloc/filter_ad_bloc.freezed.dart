// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'filter_ad_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FilterAdEventTearOff {
  const _$FilterAdEventTearOff();

  FilterAdFetch filterAdsFetch(
      {required int offset, required F.FilterData data}) {
    return FilterAdFetch(
      offset: offset,
      data: data,
    );
  }

  FilterAdAdsUpdate filterAdsUpdate({required List<Ad> adsUpdate}) {
    return FilterAdAdsUpdate(
      adsUpdate: adsUpdate,
    );
  }
}

/// @nodoc
const $FilterAdEvent = _$FilterAdEventTearOff();

/// @nodoc
mixin _$FilterAdEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int offset, F.FilterData data) filterAdsFetch,
    required TResult Function(List<Ad> adsUpdate) filterAdsUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int offset, F.FilterData data)? filterAdsFetch,
    TResult Function(List<Ad> adsUpdate)? filterAdsUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int offset, F.FilterData data)? filterAdsFetch,
    TResult Function(List<Ad> adsUpdate)? filterAdsUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FilterAdFetch value) filterAdsFetch,
    required TResult Function(FilterAdAdsUpdate value) filterAdsUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FilterAdFetch value)? filterAdsFetch,
    TResult Function(FilterAdAdsUpdate value)? filterAdsUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterAdFetch value)? filterAdsFetch,
    TResult Function(FilterAdAdsUpdate value)? filterAdsUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterAdEventCopyWith<$Res> {
  factory $FilterAdEventCopyWith(
          FilterAdEvent value, $Res Function(FilterAdEvent) then) =
      _$FilterAdEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FilterAdEventCopyWithImpl<$Res>
    implements $FilterAdEventCopyWith<$Res> {
  _$FilterAdEventCopyWithImpl(this._value, this._then);

  final FilterAdEvent _value;
  // ignore: unused_field
  final $Res Function(FilterAdEvent) _then;
}

/// @nodoc
abstract class $FilterAdFetchCopyWith<$Res> {
  factory $FilterAdFetchCopyWith(
          FilterAdFetch value, $Res Function(FilterAdFetch) then) =
      _$FilterAdFetchCopyWithImpl<$Res>;
  $Res call({int offset, F.FilterData data});
}

/// @nodoc
class _$FilterAdFetchCopyWithImpl<$Res>
    extends _$FilterAdEventCopyWithImpl<$Res>
    implements $FilterAdFetchCopyWith<$Res> {
  _$FilterAdFetchCopyWithImpl(
      FilterAdFetch _value, $Res Function(FilterAdFetch) _then)
      : super(_value, (v) => _then(v as FilterAdFetch));

  @override
  FilterAdFetch get _value => super._value as FilterAdFetch;

  @override
  $Res call({
    Object? offset = freezed,
    Object? data = freezed,
  }) {
    return _then(FilterAdFetch(
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as F.FilterData,
    ));
  }
}

/// @nodoc

class _$FilterAdFetch with DiagnosticableTreeMixin implements FilterAdFetch {
  const _$FilterAdFetch({required this.offset, required this.data});

  @override
  final int offset;
  @override
  final F.FilterData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FilterAdEvent.filterAdsFetch(offset: $offset, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FilterAdEvent.filterAdsFetch'))
      ..add(DiagnosticsProperty('offset', offset))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FilterAdFetch &&
            const DeepCollectionEquality().equals(other.offset, offset) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(offset),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  $FilterAdFetchCopyWith<FilterAdFetch> get copyWith =>
      _$FilterAdFetchCopyWithImpl<FilterAdFetch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int offset, F.FilterData data) filterAdsFetch,
    required TResult Function(List<Ad> adsUpdate) filterAdsUpdate,
  }) {
    return filterAdsFetch(offset, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int offset, F.FilterData data)? filterAdsFetch,
    TResult Function(List<Ad> adsUpdate)? filterAdsUpdate,
  }) {
    return filterAdsFetch?.call(offset, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int offset, F.FilterData data)? filterAdsFetch,
    TResult Function(List<Ad> adsUpdate)? filterAdsUpdate,
    required TResult orElse(),
  }) {
    if (filterAdsFetch != null) {
      return filterAdsFetch(offset, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FilterAdFetch value) filterAdsFetch,
    required TResult Function(FilterAdAdsUpdate value) filterAdsUpdate,
  }) {
    return filterAdsFetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FilterAdFetch value)? filterAdsFetch,
    TResult Function(FilterAdAdsUpdate value)? filterAdsUpdate,
  }) {
    return filterAdsFetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterAdFetch value)? filterAdsFetch,
    TResult Function(FilterAdAdsUpdate value)? filterAdsUpdate,
    required TResult orElse(),
  }) {
    if (filterAdsFetch != null) {
      return filterAdsFetch(this);
    }
    return orElse();
  }
}

abstract class FilterAdFetch implements FilterAdEvent {
  const factory FilterAdFetch(
      {required int offset, required F.FilterData data}) = _$FilterAdFetch;

  int get offset;
  F.FilterData get data;
  @JsonKey(ignore: true)
  $FilterAdFetchCopyWith<FilterAdFetch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterAdAdsUpdateCopyWith<$Res> {
  factory $FilterAdAdsUpdateCopyWith(
          FilterAdAdsUpdate value, $Res Function(FilterAdAdsUpdate) then) =
      _$FilterAdAdsUpdateCopyWithImpl<$Res>;
  $Res call({List<Ad> adsUpdate});
}

/// @nodoc
class _$FilterAdAdsUpdateCopyWithImpl<$Res>
    extends _$FilterAdEventCopyWithImpl<$Res>
    implements $FilterAdAdsUpdateCopyWith<$Res> {
  _$FilterAdAdsUpdateCopyWithImpl(
      FilterAdAdsUpdate _value, $Res Function(FilterAdAdsUpdate) _then)
      : super(_value, (v) => _then(v as FilterAdAdsUpdate));

  @override
  FilterAdAdsUpdate get _value => super._value as FilterAdAdsUpdate;

  @override
  $Res call({
    Object? adsUpdate = freezed,
  }) {
    return _then(FilterAdAdsUpdate(
      adsUpdate: adsUpdate == freezed
          ? _value.adsUpdate
          : adsUpdate // ignore: cast_nullable_to_non_nullable
              as List<Ad>,
    ));
  }
}

/// @nodoc

class _$FilterAdAdsUpdate
    with DiagnosticableTreeMixin
    implements FilterAdAdsUpdate {
  const _$FilterAdAdsUpdate({required this.adsUpdate});

  @override
  final List<Ad> adsUpdate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FilterAdEvent.filterAdsUpdate(adsUpdate: $adsUpdate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FilterAdEvent.filterAdsUpdate'))
      ..add(DiagnosticsProperty('adsUpdate', adsUpdate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FilterAdAdsUpdate &&
            const DeepCollectionEquality().equals(other.adsUpdate, adsUpdate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(adsUpdate));

  @JsonKey(ignore: true)
  @override
  $FilterAdAdsUpdateCopyWith<FilterAdAdsUpdate> get copyWith =>
      _$FilterAdAdsUpdateCopyWithImpl<FilterAdAdsUpdate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int offset, F.FilterData data) filterAdsFetch,
    required TResult Function(List<Ad> adsUpdate) filterAdsUpdate,
  }) {
    return filterAdsUpdate(adsUpdate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int offset, F.FilterData data)? filterAdsFetch,
    TResult Function(List<Ad> adsUpdate)? filterAdsUpdate,
  }) {
    return filterAdsUpdate?.call(adsUpdate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int offset, F.FilterData data)? filterAdsFetch,
    TResult Function(List<Ad> adsUpdate)? filterAdsUpdate,
    required TResult orElse(),
  }) {
    if (filterAdsUpdate != null) {
      return filterAdsUpdate(adsUpdate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FilterAdFetch value) filterAdsFetch,
    required TResult Function(FilterAdAdsUpdate value) filterAdsUpdate,
  }) {
    return filterAdsUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FilterAdFetch value)? filterAdsFetch,
    TResult Function(FilterAdAdsUpdate value)? filterAdsUpdate,
  }) {
    return filterAdsUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterAdFetch value)? filterAdsFetch,
    TResult Function(FilterAdAdsUpdate value)? filterAdsUpdate,
    required TResult orElse(),
  }) {
    if (filterAdsUpdate != null) {
      return filterAdsUpdate(this);
    }
    return orElse();
  }
}

abstract class FilterAdAdsUpdate implements FilterAdEvent {
  const factory FilterAdAdsUpdate({required List<Ad> adsUpdate}) =
      _$FilterAdAdsUpdate;

  List<Ad> get adsUpdate;
  @JsonKey(ignore: true)
  $FilterAdAdsUpdateCopyWith<FilterAdAdsUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FilterAdStateTearOff {
  const _$FilterAdStateTearOff();

  FilterAdLoading loading() {
    return const FilterAdLoading();
  }

  FilterAdUserLoaded filterAdsLoaded({required AdResponse adLoaded}) {
    return FilterAdUserLoaded(
      adLoaded: adLoaded,
    );
  }

  FilterAdError error() {
    return const FilterAdError();
  }
}

/// @nodoc
const $FilterAdState = _$FilterAdStateTearOff();

/// @nodoc
mixin _$FilterAdState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AdResponse adLoaded) filterAdsLoaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AdResponse adLoaded)? filterAdsLoaded,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AdResponse adLoaded)? filterAdsLoaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FilterAdLoading value) loading,
    required TResult Function(FilterAdUserLoaded value) filterAdsLoaded,
    required TResult Function(FilterAdError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FilterAdLoading value)? loading,
    TResult Function(FilterAdUserLoaded value)? filterAdsLoaded,
    TResult Function(FilterAdError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterAdLoading value)? loading,
    TResult Function(FilterAdUserLoaded value)? filterAdsLoaded,
    TResult Function(FilterAdError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterAdStateCopyWith<$Res> {
  factory $FilterAdStateCopyWith(
          FilterAdState value, $Res Function(FilterAdState) then) =
      _$FilterAdStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FilterAdStateCopyWithImpl<$Res>
    implements $FilterAdStateCopyWith<$Res> {
  _$FilterAdStateCopyWithImpl(this._value, this._then);

  final FilterAdState _value;
  // ignore: unused_field
  final $Res Function(FilterAdState) _then;
}

/// @nodoc
abstract class $FilterAdLoadingCopyWith<$Res> {
  factory $FilterAdLoadingCopyWith(
          FilterAdLoading value, $Res Function(FilterAdLoading) then) =
      _$FilterAdLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$FilterAdLoadingCopyWithImpl<$Res>
    extends _$FilterAdStateCopyWithImpl<$Res>
    implements $FilterAdLoadingCopyWith<$Res> {
  _$FilterAdLoadingCopyWithImpl(
      FilterAdLoading _value, $Res Function(FilterAdLoading) _then)
      : super(_value, (v) => _then(v as FilterAdLoading));

  @override
  FilterAdLoading get _value => super._value as FilterAdLoading;
}

/// @nodoc

class _$FilterAdLoading
    with DiagnosticableTreeMixin
    implements FilterAdLoading {
  const _$FilterAdLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FilterAdState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'FilterAdState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FilterAdLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AdResponse adLoaded) filterAdsLoaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AdResponse adLoaded)? filterAdsLoaded,
    TResult Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AdResponse adLoaded)? filterAdsLoaded,
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
    required TResult Function(FilterAdLoading value) loading,
    required TResult Function(FilterAdUserLoaded value) filterAdsLoaded,
    required TResult Function(FilterAdError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FilterAdLoading value)? loading,
    TResult Function(FilterAdUserLoaded value)? filterAdsLoaded,
    TResult Function(FilterAdError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterAdLoading value)? loading,
    TResult Function(FilterAdUserLoaded value)? filterAdsLoaded,
    TResult Function(FilterAdError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FilterAdLoading implements FilterAdState {
  const factory FilterAdLoading() = _$FilterAdLoading;
}

/// @nodoc
abstract class $FilterAdUserLoadedCopyWith<$Res> {
  factory $FilterAdUserLoadedCopyWith(
          FilterAdUserLoaded value, $Res Function(FilterAdUserLoaded) then) =
      _$FilterAdUserLoadedCopyWithImpl<$Res>;
  $Res call({AdResponse adLoaded});

  $AdResponseCopyWith<$Res> get adLoaded;
}

/// @nodoc
class _$FilterAdUserLoadedCopyWithImpl<$Res>
    extends _$FilterAdStateCopyWithImpl<$Res>
    implements $FilterAdUserLoadedCopyWith<$Res> {
  _$FilterAdUserLoadedCopyWithImpl(
      FilterAdUserLoaded _value, $Res Function(FilterAdUserLoaded) _then)
      : super(_value, (v) => _then(v as FilterAdUserLoaded));

  @override
  FilterAdUserLoaded get _value => super._value as FilterAdUserLoaded;

  @override
  $Res call({
    Object? adLoaded = freezed,
  }) {
    return _then(FilterAdUserLoaded(
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

class _$FilterAdUserLoaded
    with DiagnosticableTreeMixin
    implements FilterAdUserLoaded {
  const _$FilterAdUserLoaded({required this.adLoaded});

  @override
  final AdResponse adLoaded;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FilterAdState.filterAdsLoaded(adLoaded: $adLoaded)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FilterAdState.filterAdsLoaded'))
      ..add(DiagnosticsProperty('adLoaded', adLoaded));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FilterAdUserLoaded &&
            const DeepCollectionEquality().equals(other.adLoaded, adLoaded));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(adLoaded));

  @JsonKey(ignore: true)
  @override
  $FilterAdUserLoadedCopyWith<FilterAdUserLoaded> get copyWith =>
      _$FilterAdUserLoadedCopyWithImpl<FilterAdUserLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AdResponse adLoaded) filterAdsLoaded,
    required TResult Function() error,
  }) {
    return filterAdsLoaded(adLoaded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AdResponse adLoaded)? filterAdsLoaded,
    TResult Function()? error,
  }) {
    return filterAdsLoaded?.call(adLoaded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AdResponse adLoaded)? filterAdsLoaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (filterAdsLoaded != null) {
      return filterAdsLoaded(adLoaded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FilterAdLoading value) loading,
    required TResult Function(FilterAdUserLoaded value) filterAdsLoaded,
    required TResult Function(FilterAdError value) error,
  }) {
    return filterAdsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FilterAdLoading value)? loading,
    TResult Function(FilterAdUserLoaded value)? filterAdsLoaded,
    TResult Function(FilterAdError value)? error,
  }) {
    return filterAdsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterAdLoading value)? loading,
    TResult Function(FilterAdUserLoaded value)? filterAdsLoaded,
    TResult Function(FilterAdError value)? error,
    required TResult orElse(),
  }) {
    if (filterAdsLoaded != null) {
      return filterAdsLoaded(this);
    }
    return orElse();
  }
}

abstract class FilterAdUserLoaded implements FilterAdState {
  const factory FilterAdUserLoaded({required AdResponse adLoaded}) =
      _$FilterAdUserLoaded;

  AdResponse get adLoaded;
  @JsonKey(ignore: true)
  $FilterAdUserLoadedCopyWith<FilterAdUserLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterAdErrorCopyWith<$Res> {
  factory $FilterAdErrorCopyWith(
          FilterAdError value, $Res Function(FilterAdError) then) =
      _$FilterAdErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$FilterAdErrorCopyWithImpl<$Res>
    extends _$FilterAdStateCopyWithImpl<$Res>
    implements $FilterAdErrorCopyWith<$Res> {
  _$FilterAdErrorCopyWithImpl(
      FilterAdError _value, $Res Function(FilterAdError) _then)
      : super(_value, (v) => _then(v as FilterAdError));

  @override
  FilterAdError get _value => super._value as FilterAdError;
}

/// @nodoc

class _$FilterAdError with DiagnosticableTreeMixin implements FilterAdError {
  const _$FilterAdError();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FilterAdState.error()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'FilterAdState.error'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FilterAdError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AdResponse adLoaded) filterAdsLoaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AdResponse adLoaded)? filterAdsLoaded,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AdResponse adLoaded)? filterAdsLoaded,
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
    required TResult Function(FilterAdLoading value) loading,
    required TResult Function(FilterAdUserLoaded value) filterAdsLoaded,
    required TResult Function(FilterAdError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FilterAdLoading value)? loading,
    TResult Function(FilterAdUserLoaded value)? filterAdsLoaded,
    TResult Function(FilterAdError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterAdLoading value)? loading,
    TResult Function(FilterAdUserLoaded value)? filterAdsLoaded,
    TResult Function(FilterAdError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FilterAdError implements FilterAdState {
  const factory FilterAdError() = _$FilterAdError;
}
