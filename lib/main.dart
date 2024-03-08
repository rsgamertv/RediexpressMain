import 'package:flutter/material.dart';
import 'package:projecttoreview/Boards/OnBoard1.dart';
import 'package:projecttoreview/Boards/OnBoard2.dart';
import 'package:projecttoreview/Boards/OnBoard3.dart';

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
      },
    );
  }
}