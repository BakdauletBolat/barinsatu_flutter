// ignore_for_file: non_constant_identifier_names
import 'package:barinsatu/authentication/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
  const factory Story({
    required int id,
    required User author,
    required DateTime created_at,
    required DateTime updated_at,
    required String video,
    required int views,
    required List<StoryLike> story_likes,
    required List<StoryComment> story_comments,
    String? thumb,
  }) = _Story;

  factory Story.fromJson(Map<String, dynamic> json) => _$StoryFromJson(json);
}

@freezed
class StoryLike with _$StoryLike {
  const factory StoryLike(
      {required int id,
      required User user,
      required int story,
      required bool isLiked,
      required DateTime created_at}) = _StoryLike;

  factory StoryLike.fromJson(Map<String, dynamic> json) =>
      _$StoryLikeFromJson(json);
}

@freezed
class StoryComment with _$StoryComment {
  const factory StoryComment(
      {required String text,
      required int id,
      required User author,
      required int story,
      required DateTime created_at}) = _StoryComment;

  factory StoryComment.fromJson(Map<String, dynamic> json) =>
      _$StoryCommentFromJson(json);
}
