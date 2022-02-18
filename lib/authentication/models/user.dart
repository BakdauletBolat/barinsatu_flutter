import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class UserResponse with _$UserResponse {
  const factory UserResponse(
      {String? refresh, String? access, required User user}) = _UserResponse;

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);
}

@freezed
class User with _$User {
  const factory User(
      {required int id,
      String? name,
      String? surname,
      String? phone,
      String? about,
      required int ratings_count,
      required String email,
      UserType? user_type,
      String? avatar}) = _User;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class UserType with _$UserType {
  const factory UserType({required int id, String? name}) = _UserType;
  factory UserType.fromJson(Map<String, dynamic> json) =>
      _$UserTypeFromJson(json);
}

@freezed
class NotificationType with _$NotificationType {
  const factory NotificationType({required int id, required String name}) =
      _NotificationType;
  factory NotificationType.fromJson(Map<String, dynamic> json) =>
      _$NotificationTypeFromJson(json);
}

@freezed
class Notification with _$Notification {
  const factory Notification(
      {required int id,
      required User user,
      required User author,
      String? text,
      required bool is_readed,
      required DateTime created_at}) = _Notification;
  factory Notification.fromJson(Map<String, dynamic> json) =>
      _$NotificationFromJson(json);
}

@freezed
class Rating with _$Rating {
  const factory Rating(
      {required int id,
      required User user,
      required User author,
      String? text,
      double? ball,
      required DateTime created_at}) = _Rating;
  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);
}
