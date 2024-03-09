import 'package:RediExpress/ThemesFolder/TextStyles.dart';
import 'package:RediExpress/ThemesFolder/style.dart';
import 'package:flutter/material.dart';

class Authorization extends StatefulWidget{
  @override
  State<Authorization> createState() => _AuthorizationState();
}

class _AuthorizationState extends State<Authorization> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(25, 170, 25, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Text('Welcome Back', style: large_black(),),
                    Text('Fill in your email and password to continue' , style: small_grey(),),
                    Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
                    Text('Email Adress', style: small_grey()),
                    Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 0)),
                    TextField(decoration:field_decoration('***********@mail.com')),
                    Padding(padding: EdgeInsets.fromLTRB(0, 40, 0, 0)),
                    Text('Password', style: small_grey()),
                    Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 0)),
                    TextField(decoration:field_decoration('***********')),


                ],
            ),


      ),
    );
  }
}