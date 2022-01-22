import 'package:barinsatu/pages/RegisterPage.dart';
import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  _login() {
    final form = _formKey.currentState!;
    if (form.validate()) {
      print('formValid');
    }
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CupertinoButton(
              child: Text('Register Page!'),
              onPressed: () => Navigator.push(
                    context,
                    CupertinoPageRoute(
                      title: "Setting",
                      builder: (BuildContext context) => RegisterPage(),
                      settings: RouteSettings(name: "register"),
                    ),
                  )),
        ],
      ),
    );
  }
}
