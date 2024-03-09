import 'package:flutter/material.dart';
import 'package:RediExpress/ThemesFolder/Style.dart';
import 'package:RediExpress/ThemesFolder/TextStyles.dart';

class RegistrationWindow extends StatefulWidget{
  @override
  State<RegistrationWindow> createState() => RegistrationWindowState();
}

class RegistrationWindowState extends State<RegistrationWindow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(25, 80, 25, 0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Create an account', style: large_black()),
              Text('Complete the sign up process to get started', style: small_grey()),
              Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 0)),
                  Text('Full name', style: small_grey()),
                  Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 0)),
                  TextField(decoration:field_decoration('Ivan Ivanov'))
                ],
              )
          ),
      );
  }
}