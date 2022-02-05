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
      isLiked: json['isLiked'] as bool,
      favoriteUsers: json['favoriteUsers'] as int,
      video: json['video'] as String,
    );

Map<String, dynamic> _$$_StoryToJson(_$_Story instance) => <String, dynamic>{
      'id': instance.id,
      'isLiked': instance.isLiked,
      'favoriteUsers': instance.favoriteUsers,
      'video': instance.video,
    };
