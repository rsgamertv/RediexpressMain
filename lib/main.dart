import 'package:RediExpress/Authorization/Authorization.dart';
import 'package:RediExpress/Authorization/ForgotPassword.dart';
import 'package:RediExpress/Authorization/OTPPassword.dart';
import 'package:RediExpress/Main/MainPage.dart';
import 'package:RediExpress/Packages/AllPackages.dart';
import 'package:RediExpress/Packages/PackageInfo.dart';
import 'package:RediExpress/Packages/ReadyPackageInfo.dart';
import 'package:flutter/material.dart';
import 'package:RediExpress/Boards/OnBoard1.dart';
import 'package:RediExpress/Boards/OnBoard2.dart';
import 'package:RediExpress/Boards/OnBoard3.dart';
import 'package:RediExpress/Authorization/Registration.dart';

import 'Packages/PackageInfoBase.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:  ThemeData(
        primaryColor: Colors.blueAccent,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        textTheme: TextTheme(
          displaySmall: TextStyle(
            fontSize: 14,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
          displayMedium: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w500
          ),
          displayLarge: TextStyle(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.w500
          ),
          headlineSmall: TextStyle(
            fontSize: 14,
            color: Colors.blueAccent,
            fontWeight: FontWeight.w500
          ),
          headlineMedium: TextStyle(
            fontSize: 18,
            color: Colors.blueAccent,
            fontWeight: FontWeight.w500
          ),
          headlineLarge: TextStyle(
            fontSize: 24,
            color: Colors.blueAccent,
            fontWeight: FontWeight.w500
          ),
          titleSmall: TextStyle(
            fontSize: 14,
            color: Colors.grey,
            fontWeight: FontWeight.w500
          ),
          titleMedium: TextStyle(
            fontSize: 18,
            color: Colors.grey,
            fontWeight: FontWeight.w500
          ),
          titleLarge: TextStyle(
            fontSize: 24,
            color: Colors.grey,
            fontWeight: FontWeight.w500
          )
        )
      ),
      debugShowCheckedModeBanner: false,
      routes: {
          '/OnBoard1':(context) => OnBoard1(),
          '/OnBoard2':(context) => OnBoard2(),
          '/OnBoard3': (context) => OnBoard3(),
          '/Registration': (context) => Registration(),
          '/Authorization':(context) => Authorization(),
          '/ForgotPassword':(context) => ForgotPassword(),
          '/MainPage': (context) => MainPage(),
          '/OtpPassword':(context) => OTPPassword(),
          '/AllPackages':(context) => AllPackages(),
          '/PackageInfoBase':(context) => PackageInfoBase(),
          '/PackageInfo':(context) => PackageInfo(),
          '/ReadyPackageInfo':(context) => ReadyPackageInfo(null),
      },
      initialRoute: '/MainPage',
    );
  }
}