import 'package:barinsatu/authentication/bloc/auth_bloc.dart';
import 'package:barinsatu/authentication/bloc/form_bloc.dart';
import 'package:barinsatu/pages/ad/CreatePage.dart';
import 'package:barinsatu/pages/auth/RegisterPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: SingleChildScrollView(
            child: Column(
      children: [
        const SizedBox(
          height: 80,
        ),
        SizedBox(
          width: 207,
          height: 105,
          child: Image.asset('assets/logo.png'),
        ),
        Container(
          margin: const EdgeInsets.only(top: 30),
          child: const Text(
            'Добро пожаловать',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 14),
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: const Text(
            'Чтобы создать публикацию в приложений Barinsatu зарегистрируйтесь ',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: BlocProvider(
            create: (context) => LoginFormBloc(),
            child: Builder(
              builder: (context) {
                final loginFormBloc = context.read<LoginFormBloc>();

                return Container(
                  child: FormBlocListener<LoginFormBloc, String, String>(
                      onSubmitting: (context, state) {
                        print('onSubmit');
                        LoadingDialog.show(context);
                      },
                      onSuccess: (context, state) {
                        print('onSuccess');
                        LoadingDialog.hide(context);
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                elevation: 0,
                                behavior: SnackBarBehavior.floating,
                                content: Text('Успешно вошли !')));

                        context.read<AuthBloc>().add(const AuthEvent.getUser());
                      },
                      onFailure: (context, state) {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                            elevation: 0,
                            behavior: SnackBarBehavior.floating,
                            content: Text(
                                'Что то пошло не так введите правильные данные!')));
                        print('onFailure');
                        LoadingDialog.hide(context);
                      },
                      child: Container(
                        child: Column(
                          children: [
                            TextFieldBlocBuilder(
                              errorBuilder: (context, error) =>
                                  'Введите почту правильно',
                              textFieldBloc: loginFormBloc.email,
                              keyboardType: TextInputType.emailAddress,
                              decoration: const InputDecoration(
                                labelText: 'Почта',
                                prefixIcon: Icon(Icons.email),
                              ),
                            ),
                            TextFieldBlocBuilder(
                              errorBuilder: (context, error) =>
                                  'Введите пароль правильно',
                              textFieldBloc: loginFormBloc.password,
                              keyboardType: TextInputType.visiblePassword,
                              decoration: const InputDecoration(
                                labelText: 'Пароль',
                                prefixIcon: Icon(Icons.password),
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                      onPressed: loginFormBloc.submit,
                                      child: const Text('Войти')),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('Забыли пароль ?'),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        CupertinoPageRoute(
                                            builder: (context) =>
                                                const RegisterPage()));
                                  },
                                  child: Text(
                                    'Создать новый аккаунт',
                                    style: TextStyle(
                                        color: Theme.of(context).primaryColor),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )),
                );
              },
            ),
          ),
        )
      ],
    )));
  }
}
