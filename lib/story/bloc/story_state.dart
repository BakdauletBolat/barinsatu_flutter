part of 'story_bloc.dart';

@freezed
class StoryState with _$StoryState {
  const factory StoryState.loading() = StoryStateLoading;
  const factory StoryState.loaded({required StoryResponse storyResponse}) =
      StoryStateLoaded;
  const factory StoryState.error() = StoryStateError;
}
