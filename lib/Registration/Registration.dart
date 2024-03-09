import 'package:flutter/material.dart';
import 'package:RediExpress/ThemesFolder/Style.dart';
import 'package:RediExpress/ThemesFolder/TextStyles.dart';

class Registration extends StatefulWidget{
  @override
  State<Registration> createState() => RegistrationWindowState();
}

class RegistrationWindowState extends State<Registration> {
  bool passwordVisible = false;
  bool? isChecked = false;

  void updatePasswordType(bool passwordVisible) => setState(() {
    this.passwordVisible = passwordVisible;
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(25, 40, 25, 0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Create an account', style: large_black()),
              Text('Complete the sign up process to get started', style: small_grey()),
              Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Full name', style: small_grey()),
                  Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 0)),
                  TextField(decoration:field_decoration('Ivan Ivanov'))
                ],
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 15, 0, 0)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Phone number', style: small_grey()),
                  Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 0)),
                  TextField(decoration:field_decoration('+7(999)999-99-99'))
                ],
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 15, 0, 0)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Email address', style: small_grey()),
                  Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 0)),
                  TextField(decoration:field_decoration('********@mail.com'))
                ],
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 15, 0, 0)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Password', style: small_grey()),
                  Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 0)),
                  TextField(
                    decoration:password_field_decoration('*******', passwordVisible, updatePasswordType),
                    obscureText: passwordVisible,
                  )
                ],
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 15, 0, 0)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Confirm password', style: small_grey()),
                  Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 0)),
                  TextField(
                    decoration:password_field_decoration('*******', passwordVisible, updatePasswordType),
                    obscureText: passwordVisible,
                  )
                ],
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(value: isChecked, onChanged: (newBool){setState(() {
                    isChecked = newBool;
                  });}),
                  Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0)),
                  Text('By ticking this box, you agree to our ', style: small_grey()),
                  Text('Terms and conditions and private policy', style: small_orange()),
                ],
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
              Container(
                decoration: filledboxdecoration(),
                height: 50,
                child: TextButton(
                  onPressed: (){},
                  child: Text('Sign Up', style: button_white(),),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.fromLTRB(0, 35, 0, 0)),
                  Text('Already have an account? ', style: small_grey()),
                  Text('Sign in', style: button_blue()),
                ],
              ),
            ],
          ),
      )
    );
  }
}