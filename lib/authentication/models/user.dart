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
      required String email,
      String? avatar}) = _User;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
