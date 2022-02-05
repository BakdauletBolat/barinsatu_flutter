part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login({required dynamic body}) = AuthEventLogin;
  const factory AuthEvent.getUser() = AuthEventGetUser;
  const factory AuthEvent.logoutUser() = AuthEventLogoutUser;
}
