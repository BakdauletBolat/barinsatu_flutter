import 'package:barinsatu/ads/widgets/CreateStepAd.dart';
import 'package:barinsatu/authentication/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import '../authentication/bloc/form_bloc.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({Key? key}) : super(key: key);

  @override
  _CreatePageState createState() => _CreatePageState();
}

class FormData {
  String? email = '';
  String? password = '';

  void onChangeEmail(value) {
    email = value;
  }

  void onChangePassword(value) {
    password = value;
  }
}

class _CreatePageState extends State<CreatePage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    final userState = context.watch<AuthBloc>().state;

    return Scaffold(
        body: userState.maybeWhen(
            orElse: () => SingleChildScrollView(
                    child: Column(
                  children: [
                    const SizedBox(
                      height: 120,
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
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
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
                              child: FormBlocListener<LoginFormBloc, String,
                                      String>(
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

                                    Future.delayed(const Duration(seconds: 3));
                                    context
                                        .read<AuthBloc>()
                                        .add(const AuthEvent.getUser());
                                  },
                                  onFailure: (context, state) {
                                    print('onFailure');
                                    LoadingDialog.hide(context);
                                  },
                                  child: Container(
                                    child: Column(
                                      children: [
                                        TextFieldBlocBuilder(
                                          textFieldBloc: loginFormBloc.email,
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          decoration: const InputDecoration(
                                            labelText: 'Почта',
                                            prefixIcon: Icon(Icons.email),
                                          ),
                                        ),
                                        TextFieldBlocBuilder(
                                          textFieldBloc: loginFormBloc.password,
                                          keyboardType:
                                              TextInputType.visiblePassword,
                                          decoration: const InputDecoration(
                                            labelText: 'Пароль',
                                            prefixIcon: Icon(Icons.password),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: ElevatedButton(
                                                  onPressed:
                                                      loginFormBloc.submit,
                                                  child: const Text('Войти')),
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
                )),
            loaded: (userLoaded, msg) =>
                Container(child: const CreateStepAd())));
  }
}

class LoadingDialog extends StatelessWidget {
  static void show(BuildContext context, {Key? key}) => showDialog<void>(
        context: context,
        useRootNavigator: false,
        barrierDismissible: false,
        builder: (_) => LoadingDialog(key: key),
      ).then((_) => FocusScope.of(context).requestFocus(FocusNode()));

  static void hide(BuildContext context) => Navigator.pop(context);

  LoadingDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Center(
        child: Card(
          child: Container(
            width: 80,
            height: 80,
            padding: EdgeInsets.all(12.0),
            child: const CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
