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
                    Padding(padding: EdgeInsets.fromLTRB(0, 25, 0, 0)),
                    Text('Password', style: small_grey()),
                    Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 0)),
                    TextField(decoration:field_decoration('***********')),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            child: Row(
                                children: [
                                   Checkbox(value: false, onChanged: null),
                                   Text('Remember password', style: smallest_grey(),),
                              ],
                            ),
                        ),
                         Text('Forgot Password?', style: button_blue(),)
                      ]
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                    Container(
                    width: 350,
                    height: 50,
                     decoration: filledboxdecoration(),
                       child: TextButton(onPressed: (){
                    // Navigator.of(context).pushNamed('/Registration');
                     }, child: Text('Log in', style: button_white()),)
                      ),
                        ],
                    ),
                      Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            Text('Already have an account?' , style: smallest_grey(),),
                            TextButton(onPressed: () {
                            }, child: Text('Sign Up', style: button_blue(),))
                        ],
                      )
                ],
            ),
      ),
    );
  }
}