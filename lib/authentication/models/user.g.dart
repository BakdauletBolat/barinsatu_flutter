// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserResponse _$$_UserResponseFromJson(Map<String, dynamic> json) =>
    _$_UserResponse(
      refresh: json['refresh'] as String?,
      access: json['access'] as String?,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserResponseToJson(_$_UserResponse instance) =>
    <String, dynamic>{
      'refresh': instance.refresh,
      'access': instance.access,
      'user': instance.user,
    };

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as int,
      name: json['name'] as String?,
      surname: json['surname'] as String?,
      phone: json['phone'] as String?,
      about: json['about'] as String?,
      ratings_count: json['ratings_count'] as int,
      email: json['email'] as String,
      user_type: json['user_type'] == null
          ? null
          : UserType.fromJson(json['user_type'] as Map<String, dynamic>),
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'surname': instance.surname,
      'phone': instance.phone,
      'about': instance.about,
      'ratings_count': instance.ratings_count,
      'email': instance.email,
      'user_type': instance.user_type,
      'avatar': instance.avatar,
    };

_$_UserType _$$_UserTypeFromJson(Map<String, dynamic> json) => _$_UserType(
      id: json['id'] as int,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_UserTypeToJson(_$_UserType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$_NotificationType _$$_NotificationTypeFromJson(Map<String, dynamic> json) =>
    _$_NotificationType(
      id: json['id'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_NotificationTypeToJson(_$_NotificationType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$_Notification _$$_NotificationFromJson(Map<String, dynamic> json) =>
    _$_Notification(
      id: json['id'] as int,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      author: User.fromJson(json['author'] as Map<String, dynamic>),
      text: json['text'] as String?,
      is_readed: json['is_readed'] as bool,
      created_at: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$_NotificationToJson(_$_Notification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'author': instance.author,
      'text': instance.text,
      'is_readed': instance.is_readed,
      'created_at': instance.created_at.toIso8601String(),
    };

_$_Rating _$$_RatingFromJson(Map<String, dynamic> json) => _$_Rating(
      id: json['id'] as int,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      author: User.fromJson(json['author'] as Map<String, dynamic>),
      text: json['text'] as String?,
      ball: (json['ball'] as num?)?.toDouble(),
      created_at: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$_RatingToJson(_$_Rating instance) => <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'author': instance.author,
      'text': instance.text,
      'ball': instance.ball,
      'created_at': instance.created_at.toIso8601String(),
    };
