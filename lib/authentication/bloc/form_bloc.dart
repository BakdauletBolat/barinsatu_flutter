import 'dart:io';
import 'package:barinsatu/authentication/models/login.dart';
import 'package:barinsatu/authentication/models/user.dart';
import 'package:barinsatu/authentication/repositories/auth_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginFormBloc extends FormBloc<String, String> {
  final email = TextFieldBloc(
    validators: [
      FieldBlocValidators.required,
      FieldBlocValidators.email,
    ],
  );

  final password = TextFieldBloc(
    validators: [
      FieldBlocValidators.required,
    ],
  );

  final showSuccessResponse = BooleanFieldBloc();

  final AuthRepo authRepo = AuthRepo();
  LoginFormBloc() {
    addFieldBlocs(
      fieldBlocs: [
        email,
        password,
        showSuccessResponse,
      ],
    );
  }

  @override
  void onSubmitting() async {
    // print(email.value);
    // print(password.value);
    // print(showSuccessResponse.value);

    Login login = Login(email: email.value, password: password.value);
    dynamic loginBody = login.toJson();
    try {
      final UserResponse user = await authRepo.login(loginBody);
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('userToken', user.access.toString());
      emitSuccess();
    } catch (e) {
      print('ed');
      emitFailure();
    }
  }
}
