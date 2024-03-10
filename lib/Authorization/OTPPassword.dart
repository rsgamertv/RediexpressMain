import 'package:RediExpress/ThemesFolder/TextStyles.dart';
import 'package:flutter/material.dart';

class OTPPassword extends StatefulWidget{
  @override
  State<OTPPassword> createState() => _OTPPasswordState();
}

class _OTPPasswordState extends State<OTPPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: EdgeInsets.fromLTRB(25, 180, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('OTP Verification', style: large_black(),),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
              Text('Enter the 6 digit numbers sent to your email' , style: small_grey(),)
            ],
          ),
        ),
    );
  }
}