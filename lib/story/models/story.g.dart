// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoryResponse _$$_StoryResponseFromJson(Map<String, dynamic> json) =>
    _$_StoryResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => Story.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_StoryResponseToJson(_$_StoryResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_Story _$$_StoryFromJson(Map<String, dynamic> json) => _$_Story(
      id: json['id'] as int,
      author: User.fromJson(json['author'] as Map<String, dynamic>),
      created_at: DateTime.parse(json['created_at'] as String),
      updated_at: DateTime.parse(json['updated_at'] as String),
      video: json['video'] as String,
      story_likes: (json['story_likes'] as List<dynamic>)
          .map((e) => StoryLike.fromJson(e as Map<String, dynamic>))
          .toList(),
      story_comments: (json['story_comments'] as List<dynamic>)
          .map((e) => StoryComment.fromJson(e as Map<String, dynamic>))
          .toList(),
      thumb: json['thumb'] as String?,
    );

Map<String, dynamic> _$$_StoryToJson(_$_Story instance) => <String, dynamic>{
      'id': instance.id,
      'author': instance.author,
      'created_at': instance.created_at.toIso8601String(),
      'updated_at': instance.updated_at.toIso8601String(),
      'video': instance.video,
      'story_likes': instance.story_likes,
      'story_comments': instance.story_comments,
      'thumb': instance.thumb,
    };

_$_StoryLike _$$_StoryLikeFromJson(Map<String, dynamic> json) => _$_StoryLike(
      id: json['id'] as int,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      story: json['story'] as int,
      isLiked: json['isLiked'] as bool,
      created_at: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$_StoryLikeToJson(_$_StoryLike instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'story': instance.story,
      'isLiked': instance.isLiked,
      'created_at': instance.created_at.toIso8601String(),
    };

_$_StoryComment _$$_StoryCommentFromJson(Map<String, dynamic> json) =>
    _$_StoryComment(
      text: json['text'] as String,
      id: json['id'] as int,
      author: User.fromJson(json['author'] as Map<String, dynamic>),
      story: json['story'] as int,
      created_at: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$_StoryCommentToJson(_$_StoryComment instance) =>
    <String, dynamic>{
      'text': instance.text,
      'id': instance.id,
      'author': instance.author,
      'story': instance.story,
      'created_at': instance.created_at.toIso8601String(),
    };
