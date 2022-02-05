import 'dart:async';
import 'dart:developer';
import 'package:barinsatu/story/models/story.dart';
import 'package:barinsatu/story/repositories/story_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:video_player/video_player.dart';

part 'preload_event.dart';
part 'preload_state.dart';

part 'preload_bloc.freezed.dart';

class PreloadBloc extends Bloc<PreloadEvent, PreloadState> {
  final StoryRepo storyRepo;

  PreloadBloc({required this.storyRepo}) : super(PreloadState.initial()) {
    on<PreloadEventFetch>((event, emit) async {
      StoryResponse response = await storyRepo.getStories();
      emit(state.copyWith(stories: response.data, loaded: true));
    });
    on<_OnVideoIndexChanged>((event, emit) async {
      emit(state.copyWith(focusedIndex: event.index));
    });
  }
}
