// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'story_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StoryEventTearOff {
  const _$StoryEventTearOff();

  StoryEventFetch fetch() {
    return const StoryEventFetch();
  }
}

/// @nodoc
const $StoryEvent = _$StoryEventTearOff();

/// @nodoc
mixin _$StoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoryEventFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoryEventFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoryEventFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoryEventCopyWith<$Res> {
  factory $StoryEventCopyWith(
          StoryEvent value, $Res Function(StoryEvent) then) =
      _$StoryEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$StoryEventCopyWithImpl<$Res> implements $StoryEventCopyWith<$Res> {
  _$StoryEventCopyWithImpl(this._value, this._then);

  final StoryEvent _value;
  // ignore: unused_field
  final $Res Function(StoryEvent) _then;
}

/// @nodoc
abstract class $StoryEventFetchCopyWith<$Res> {
  factory $StoryEventFetchCopyWith(
          StoryEventFetch value, $Res Function(StoryEventFetch) then) =
      _$StoryEventFetchCopyWithImpl<$Res>;
}

/// @nodoc
class _$StoryEventFetchCopyWithImpl<$Res> extends _$StoryEventCopyWithImpl<$Res>
    implements $StoryEventFetchCopyWith<$Res> {
  _$StoryEventFetchCopyWithImpl(
      StoryEventFetch _value, $Res Function(StoryEventFetch) _then)
      : super(_value, (v) => _then(v as StoryEventFetch));

  @override
  StoryEventFetch get _value => super._value as StoryEventFetch;
}

/// @nodoc

class _$StoryEventFetch
    with DiagnosticableTreeMixin
    implements StoryEventFetch {
  const _$StoryEventFetch();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StoryEvent.fetch()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'StoryEvent.fetch'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is StoryEventFetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoryEventFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoryEventFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoryEventFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class StoryEventFetch implements StoryEvent {
  const factory StoryEventFetch() = _$StoryEventFetch;
}

/// @nodoc
class _$StoryStateTearOff {
  const _$StoryStateTearOff();

  StoryStateLoading loading() {
    return const StoryStateLoading();
  }

  StoryStateLoaded loaded({required List<Story> storyResponse}) {
    return StoryStateLoaded(
      storyResponse: storyResponse,
    );
  }

  StoryStateError error() {
    return const StoryStateError();
  }
}

/// @nodoc
const $StoryState = _$StoryStateTearOff();

/// @nodoc
mixin _$StoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Story> storyResponse) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Story> storyResponse)? loaded,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Story> storyResponse)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoryStateLoading value) loading,
    required TResult Function(StoryStateLoaded value) loaded,
    required TResult Function(StoryStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoryStateLoading value)? loading,
    TResult Function(StoryStateLoaded value)? loaded,
    TResult Function(StoryStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoryStateLoading value)? loading,
    TResult Function(StoryStateLoaded value)? loaded,
    TResult Function(StoryStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoryStateCopyWith<$Res> {
  factory $StoryStateCopyWith(
          StoryState value, $Res Function(StoryState) then) =
      _$StoryStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$StoryStateCopyWithImpl<$Res> implements $StoryStateCopyWith<$Res> {
  _$StoryStateCopyWithImpl(this._value, this._then);

  final StoryState _value;
  // ignore: unused_field
  final $Res Function(StoryState) _then;
}

/// @nodoc
abstract class $StoryStateLoadingCopyWith<$Res> {
  factory $StoryStateLoadingCopyWith(
          StoryStateLoading value, $Res Function(StoryStateLoading) then) =
      _$StoryStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$StoryStateLoadingCopyWithImpl<$Res>
    extends _$StoryStateCopyWithImpl<$Res>
    implements $StoryStateLoadingCopyWith<$Res> {
  _$StoryStateLoadingCopyWithImpl(
      StoryStateLoading _value, $Res Function(StoryStateLoading) _then)
      : super(_value, (v) => _then(v as StoryStateLoading));

  @override
  StoryStateLoading get _value => super._value as StoryStateLoading;
}

/// @nodoc

class _$StoryStateLoading
    with DiagnosticableTreeMixin
    implements StoryStateLoading {
  const _$StoryStateLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StoryState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'StoryState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is StoryStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Story> storyResponse) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Story> storyResponse)? loaded,
    TResult Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Story> storyResponse)? loaded,
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
    required TResult Function(StoryStateLoading value) loading,
    required TResult Function(StoryStateLoaded value) loaded,
    required TResult Function(StoryStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoryStateLoading value)? loading,
    TResult Function(StoryStateLoaded value)? loaded,
    TResult Function(StoryStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoryStateLoading value)? loading,
    TResult Function(StoryStateLoaded value)? loaded,
    TResult Function(StoryStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class StoryStateLoading implements StoryState {
  const factory StoryStateLoading() = _$StoryStateLoading;
}

/// @nodoc
abstract class $StoryStateLoadedCopyWith<$Res> {
  factory $StoryStateLoadedCopyWith(
          StoryStateLoaded value, $Res Function(StoryStateLoaded) then) =
      _$StoryStateLoadedCopyWithImpl<$Res>;
  $Res call({List<Story> storyResponse});
}

/// @nodoc
class _$StoryStateLoadedCopyWithImpl<$Res>
    extends _$StoryStateCopyWithImpl<$Res>
    implements $StoryStateLoadedCopyWith<$Res> {
  _$StoryStateLoadedCopyWithImpl(
      StoryStateLoaded _value, $Res Function(StoryStateLoaded) _then)
      : super(_value, (v) => _then(v as StoryStateLoaded));

  @override
  StoryStateLoaded get _value => super._value as StoryStateLoaded;

  @override
  $Res call({
    Object? storyResponse = freezed,
  }) {
    return _then(StoryStateLoaded(
      storyResponse: storyResponse == freezed
          ? _value.storyResponse
          : storyResponse // ignore: cast_nullable_to_non_nullable
              as List<Story>,
    ));
  }
}

/// @nodoc

class _$StoryStateLoaded
    with DiagnosticableTreeMixin
    implements StoryStateLoaded {
  const _$StoryStateLoaded({required this.storyResponse});

  @override
  final List<Story> storyResponse;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StoryState.loaded(storyResponse: $storyResponse)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StoryState.loaded'))
      ..add(DiagnosticsProperty('storyResponse', storyResponse));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StoryStateLoaded &&
            const DeepCollectionEquality()
                .equals(other.storyResponse, storyResponse));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(storyResponse));

  @JsonKey(ignore: true)
  @override
  $StoryStateLoadedCopyWith<StoryStateLoaded> get copyWith =>
      _$StoryStateLoadedCopyWithImpl<StoryStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Story> storyResponse) loaded,
    required TResult Function() error,
  }) {
    return loaded(storyResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Story> storyResponse)? loaded,
    TResult Function()? error,
  }) {
    return loaded?.call(storyResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Story> storyResponse)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(storyResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoryStateLoading value) loading,
    required TResult Function(StoryStateLoaded value) loaded,
    required TResult Function(StoryStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoryStateLoading value)? loading,
    TResult Function(StoryStateLoaded value)? loaded,
    TResult Function(StoryStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoryStateLoading value)? loading,
    TResult Function(StoryStateLoaded value)? loaded,
    TResult Function(StoryStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class StoryStateLoaded implements StoryState {
  const factory StoryStateLoaded({required List<Story> storyResponse}) =
      _$StoryStateLoaded;

  List<Story> get storyResponse;
  @JsonKey(ignore: true)
  $StoryStateLoadedCopyWith<StoryStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoryStateErrorCopyWith<$Res> {
  factory $StoryStateErrorCopyWith(
          StoryStateError value, $Res Function(StoryStateError) then) =
      _$StoryStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$StoryStateErrorCopyWithImpl<$Res> extends _$StoryStateCopyWithImpl<$Res>
    implements $StoryStateErrorCopyWith<$Res> {
  _$StoryStateErrorCopyWithImpl(
      StoryStateError _value, $Res Function(StoryStateError) _then)
      : super(_value, (v) => _then(v as StoryStateError));

  @override
  StoryStateError get _value => super._value as StoryStateError;
}

/// @nodoc

class _$StoryStateError
    with DiagnosticableTreeMixin
    implements StoryStateError {
  const _$StoryStateError();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StoryState.error()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'StoryState.error'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is StoryStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Story> storyResponse) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Story> storyResponse)? loaded,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Story> storyResponse)? loaded,
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
    required TResult Function(StoryStateLoading value) loading,
    required TResult Function(StoryStateLoaded value) loaded,
    required TResult Function(StoryStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoryStateLoading value)? loading,
    TResult Function(StoryStateLoaded value)? loaded,
    TResult Function(StoryStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoryStateLoading value)? loading,
    TResult Function(StoryStateLoaded value)? loaded,
    TResult Function(StoryStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class StoryStateError implements StoryState {
  const factory StoryStateError() = _$StoryStateError;
}
