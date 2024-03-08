import 'package:flutter/material.dart';
import 'package:projecttoreview/Boards/OnBoard1.dart';
import 'package:projecttoreview/Boards/OnBoard2.dart';

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
        textTheme: const TextTheme(
  titleSmall: TextStyle(
      color: Colors.blueAccent,
      fontSize: 14,
      fontWeight: FontWeight.bold
  ),
  titleMedium: TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.bold
  ),
  bodySmall: TextStyle(
    color: Colors.blueAccent,
    fontSize: 25,
    fontWeight: FontWeight.bold
  ),
  bodyMedium: TextStyle(
    color: Colors.black,
    fontSize: 20,
  )

  )
      ),
      routes: {
          '/':(context) => OnBoard1(),
          '/OnBoard2':(context) => OnBoard2(),
      },
    );
  }
}