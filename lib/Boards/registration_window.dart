import 'package:flutter/material.dart';
import 'package:RediExpress/ThemesFolder/style.dart';
import 'package:RediExpress/ThemesFolder/text_styles.dart';

class registration_window extends StatefulWidget{
  @override
  State<registration_window> createState() => _registration_windowState();
}

class _registration_windowState extends State<registration_window> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(25, 40, 25, 0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Create an account', style: large_black()),
              Text('Complete the sign up process to get started', style: small_grey()),
              Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 0)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Full name', style: small_grey()),
                  Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 0)),
                  TextField(decoration:field_decoration('Ivan Ivanov'))
                ],
              )
            ],
          ),
      )
    );
  }
}