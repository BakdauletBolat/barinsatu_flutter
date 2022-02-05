import 'package:barinsatu/authentication/models/user.dart';
import 'package:barinsatu/authentication/repositories/auth_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    on<AuthEventGetUser>((event, emit) async {
      emit(const AuthState.loading());
      try {
        UserResponse _userLoaded = await authRepo.getUser();
        print(_userLoaded);
        emit(AuthState.loaded(userLoaded: _userLoaded, msg: 'Success'));
      } catch (_) {
        emit(const AuthState.unauth());
      }
    });
    on<AuthEventLogoutUser>((event, emit) async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final token = emit(const AuthState.loading());
      try {
        emit(const AuthState.unauth());
        prefs.setString('userToken', '');
      } catch (_) {
        emit(const AuthState.error(msg: 'Error'));
      }
    });
  }
}
