import 'package:RediExpress/Models/UserModel/user_model.dart';
import 'package:RediExpress/StaticClasses/current_user_class.dart';
import 'package:RediExpress/ThemesFolder/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:RediExpress/core/Styles/style.dart';

class ForgotPassword extends StatefulWidget{
  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: EdgeInsets.fromLTRB(25, 180, 25, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
                  Text('Forgot Password', style: large_black(),),
                  Text('Enter your email address', style: small_grey(),),
                        Padding(padding: EdgeInsets.fromLTRB(0, 80, 0, 0)),
                    Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Email address', style: small_grey()),
                  Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 0)),
                  TextField(
                    controller: _emailController,
                    decoration:field_decoration('********@mail.com'))
                  ],
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(0, 40, 0, 0)),
                  Container(
                    decoration: filledboxdecoration(),
                      child: 
                      TextButton(onPressed: () {
                        forgotPassword();
                      }, child: Text('Send OTP', style: button_white(),),)
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                          Text('Remember password? Back to', style: small_grey(),),
                          TextButton(onPressed: (){
                            Navigator.of(context).pushNamed('/Authorization');
                          },
                           child: Text('Sign in', style: button_blue(),))
                      ],
                  )
            ],
          ),
        ),
    );
  }
    Future<void> forgotPassword() async {
    CurrentUserClass.user.email = _emailController.text.toString();

    if (await CurrentUserClass.user.forgotPassword() == 'success') {
      Navigator.of(context).pushNamed('/OtpPassword');
    }
    else{
      print('не вышло');
    }
  }
}