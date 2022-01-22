import 'package:flutter/cupertino.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('ads'),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CupertinoButton(
            child: Text('Home :)'),
            onPressed: () =>
                Navigator.popUntil(context, ModalRoute.withName('/')),
          ),
          CupertinoButton(
            child: Text('Deeper!'),
            onPressed: () => Navigator.pushNamed(context, 'deeper'),
          ),
        ],
      ),
    );
  }
}
