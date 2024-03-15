import 'package:RediExpress/ThemesFolder/Theme.dart';
import 'package:RediExpress/core/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
      routes: routes,
      initialRoute: '/Authorization',
    );
  }
}

