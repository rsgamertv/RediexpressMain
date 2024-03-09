import 'package:RediExpress/Authorization/Authorization.dart';
import 'package:flutter/material.dart';
import 'package:RediExpress/Boards/OnBoard1.dart';
import 'package:RediExpress/Boards/OnBoard2.dart';
import 'package:RediExpress/Boards/OnBoard3.dart';
import 'package:RediExpress/Boards/RegistrationWindow.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
      ),
      routes: {
          '/':(context) => OnBoard1(),
          '/OnBoard2':(context) => OnBoard2(),
          '/OnBoard3': (context) => OnBoard3(),
          '/Registration': (context) => RegistrationWindow(),
          '/Authorization':(context) => Authorization(),
      },
    );
  }
}