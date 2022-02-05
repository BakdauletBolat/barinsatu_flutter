// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:video_player/video_player.dart';
part 'story.freezed.dart';
part 'story.g.dart';

@freezed
class StoryResponse with _$StoryResponse {
  const factory StoryResponse({required List<Story> data}) = _StoryResponse;

  factory StoryResponse.fromJson(Map<String, dynamic> json) =>
      _$StoryResponseFromJson(json);
}

@freezed
class Story with _$Story {
  const factory Story(
      {required int id,
      required bool isLiked,
      required int favoriteUsers,
      required String video}) = _Story;

  factory Story.fromJson(Map<String, dynamic> json) => _$StoryFromJson(json);
}
