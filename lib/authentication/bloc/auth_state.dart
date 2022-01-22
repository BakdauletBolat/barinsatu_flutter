part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.loading() = AuthStateLoading;
  const factory AuthState.loaded(
      {required UserResponse userLoaded,
      required String msg}) = AuthStateLoaded;
  const factory AuthState.error({required String msg}) = AdStateError;
}
