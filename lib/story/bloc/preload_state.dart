part of 'preload_bloc.dart';

@freezed
class PreloadState with _$PreloadState {
  factory PreloadState(
      {required List<Story> stories,
      required int focusedIndex,
      required bool loaded}) = _PreloadState;

  factory PreloadState.initial() =>
      PreloadState(focusedIndex: 0, stories: [], loaded: false);
}
