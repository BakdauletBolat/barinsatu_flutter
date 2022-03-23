import 'package:barinsatu/story/models/story.dart';
import 'package:barinsatu/story/repositories/story_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'story_bloc.freezed.dart';

// part 'ad_bloc.g.dart';

part 'story_event.dart';
part 'story_state.dart';

class StoryBloc extends Bloc<StoryEvent, StoryState> {
  final StoryRepo storyRepo;

  StoryBloc({required StoryRepo this.storyRepo})
      : super(const StoryState.loading()) {
    on<StoryEventFetch>((event, emit) async {
      emit(const StoryState.loading());
      try {
        List<Story> storyResponse = await storyRepo.getStories();

        emit(StoryState.loaded(storyResponse: storyResponse));
      } catch (e) {
        emit(const StoryState.error());
      }
    });
  }
}
