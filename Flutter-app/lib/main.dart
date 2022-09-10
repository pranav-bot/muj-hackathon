import 'package:flutter/material.dart';
import 'package:mujhackathon/views/loginview.dart';
import 'package:mujhackathon/views/registerview.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'register': (context) => MyRegister(),
      'login': (context) => LoginView()
    },
  ));
}
