import 'package:flutter/material.dart';

import 'pages/LoginPage.dart';
import 'pages/RegisterPage.dart';
import 'package:flutter/cupertino.dart';

import 'pages/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barinsatu',
      home: const HomePage(),

      // home: HomePage(title: 'Barinsatu'),
      theme: ThemeData(
          brightness: Brightness.light,
          colorScheme: const ColorScheme.light(
              primary: Color.fromRGBO(76, 136, 138, 1))),
    );
  }
}
