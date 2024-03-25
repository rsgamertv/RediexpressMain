import 'package:RediExpress/Authorization/Authorization.dart';
import 'package:RediExpress/Authorization/bloc/bloc/authorization_bloc.dart';
import 'package:RediExpress/Boards/OnBoard1.dart';
import 'package:RediExpress/Models/UserModel/AbstractUserModel.dart';
import 'package:RediExpress/Models/UserModel/UserModel.dart';
import 'package:RediExpress/ThemesFolder/Theme.dart';
import 'package:RediExpress/core/routes.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

void main() {
  GetIt.I.registerLazySingleton<AbstractUserModel>(() => UserModel(dio: Dio()));
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
          theme: darkTheme,
          debugShowCheckedModeBanner: false,
          routes: routes,
          initialRoute: '/OnBoard1',
        );
  }
}
