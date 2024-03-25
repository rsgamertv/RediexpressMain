import 'package:flutter/material.dart';
final darkBlue = '#001B3B';
final lightTheme = ThemeData(
        primaryColor: Colors.blueAccent,
        cardColor: Colors.white,
        canvasColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.grey,
        ),
        secondaryHeaderColor: Colors.black,
        appBarTheme: const AppBarTheme(
          shadowColor: Color.fromRGBO(0,27,59,1),
          color: Colors.white,
            elevation: 2,
        ),
        textTheme: const TextTheme(
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
            fontWeight: FontWeight.w600
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
          ),
        ), colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent, brightness: Brightness.light,).copyWith(background: Colors.white),
      );
final darkTheme = ThemeData(
        primaryColor: Colors.blueAccent,
        canvasColor: Color.fromRGBO(0, 13, 29, 1),
        cardColor: Color.fromRGBO(0, 27, 59, 1),
        iconTheme: const IconThemeData(
          color: Colors.white
        ),
        secondaryHeaderColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromRGBO(0,27,59,1),
          surfaceTintColor: Color.fromRGBO(0, 13, 29, 1),
          elevation: 2,
        ),
        
        textTheme: const TextTheme(
          displaySmall: TextStyle(
            fontSize: 14,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
          displayMedium: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w500
          ),
          displayLarge: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.w600
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
          ),
        ), colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent, brightness: Brightness.dark,).copyWith(background: Color.fromRGBO(0, 13, 29, 1)),
);