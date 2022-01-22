import 'package:barinsatu/authentication/models/user.dart';
import 'package:barinsatu/authentication/repositories/auth_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.dart';
part 'auth_event.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepo authRepo;

  AuthBloc({required this.authRepo}) : super(const AuthState.loading()) {
    on<AuthEventLogin>((event, emit) async {
      emit(const AuthState.loading());
      try {
        UserResponse _userLoaded = await authRepo.login(event.body);
        emit(AuthState.loaded(userLoaded: _userLoaded, msg: 'Success'));
      } catch (_) {
        emit(const AuthState.error(msg: 'Error'));
      }
    });
  }
}
