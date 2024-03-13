import 'package:RediExpress/Models/UserModel.dart';
import 'package:RediExpress/StaticClasses/CurrentUserClass.dart';
import 'package:RediExpress/ThemesFolder/Style.dart';
import 'package:RediExpress/ThemesFolder/TextStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OTPPassword extends StatefulWidget{
  @override
  State<OTPPassword> createState() => _OTPPasswordState();
}

class _OTPPasswordState extends State<OTPPassword> {
  UserModel userModel = new UserModel();
  final _pin1 = TextEditingController();
    final _pin2 = TextEditingController();
      final _pin3 = TextEditingController();
        final _pin4 = TextEditingController();
          final _pin5 = TextEditingController();
            final _pin6 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(flex: 30, child: Container()),
              Expanded(flex: 4,child: Text('OTP Verification', style: large_black(),)),
              Expanded(flex: 5,child: Text('OTP VerificationEnter the 6 digit numbers sent to your email', style: small_grey(),)),
              Expanded( flex: 4,child: Container()),
              Expanded(flex: 10,child: 
                Form(child:     Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 55,
                      width: 55,
                      child: TextFormField(
                        onChanged: (value){
                          if(value.length == 1){
                            FocusScope.of(context).nextFocus();
                          }
                          else if(value.length == 0 ){
                          FocusScope.of(context).previousFocus();
                          }
                        },
                        controller: _pin1,
                        style: medium_black(),
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: field_decoration(''),
                      ),
                    ),
                                SizedBox(
                      height: 55,
                      width: 55,
                      child: TextFormField(
                        onChanged: (value){
                          if(value.length == 1){
                            FocusScope.of(context).nextFocus();
                          }
                          else if(value.length == 0 ){
                          FocusScope.of(context).previousFocus();
                          }
                        },
                        controller: _pin2,
                        style: medium_black(),
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: field_decoration(''),
                      ),
                    ),
                                SizedBox(
                      height: 55,
                      width: 55,
                      child: TextFormField(
                        onChanged: (value){
                          if(value.length == 1){
                            FocusScope.of(context).nextFocus();
                          }
                          else if(value.length == 0 ){
                          FocusScope.of(context).previousFocus();
                          }
                        },
                        controller: _pin3,
                        style: medium_black(),
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: field_decoration(''),
                      ),
                    ),
                                SizedBox(
                      height: 55,
                      width: 55,
                      child: TextFormField(
                        onChanged: (value){
                          if(value.length == 1){
                            FocusScope.of(context).nextFocus();
                          }
                          else if(value.length == 0 ){
                          FocusScope.of(context).previousFocus();
                          }
                        },
                        controller: _pin4,
                        style: medium_black(),
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: field_decoration(''),
                      ),
                    ),
                                SizedBox(
                      height: 55,
                      width: 55,
                      child: TextFormField(
                        onChanged: (value){
                          if(value.length == 1){
                            FocusScope.of(context).nextFocus();
                          }
                          else if(value.length == 0 ){
                          FocusScope.of(context).previousFocus();
                          }
                        },
                        controller: _pin5,
                        style: medium_black(),
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: field_decoration(''),
                      ),
                    ),
                                SizedBox(
                      height: 55,
                      width: 55,
                      child: TextFormField(
                        onChanged: (value){
                          if(value.length == 1){
                            FocusScope.of(context).nextFocus();
                          }
                          else if(value.length == 0 ){
                          FocusScope.of(context).previousFocus();
                          }
                        },
                        controller: _pin6,
                        style: medium_black(),
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: field_decoration(''),
                      ),
                    ),
            ]),)
              ),
              Expanded(child: Container(),flex: 4,),

              Expanded(flex: 10, child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    decoration: filledboxdecoration(),
                    child: TextButton(onPressed: forgotPassword, child: Text('Click' , style: button_white(),)),
                  )
                ],
              )),
              Expanded(flex :15 ,child:  Container()),
              Expanded(flex: 25, child:  Container())
            ]
          ),
        ),
    );
  }
      Future<void> forgotPassword() async {
       userModel.pin1 = _pin1.text;
       userModel.pin2 = _pin2.text;
       userModel.pin3 = _pin3.text;
       userModel.pin4 = _pin4.text;
       userModel.pin5 = _pin5.text;
       userModel.pin6 = _pin6.text;
        if(await userModel.otpPassword()){
          Navigator.of(context).pushNamed('/NewPasswordSet');
        }
        else(print('плохо'));
    }
  }

