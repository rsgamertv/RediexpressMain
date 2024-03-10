import 'package:RediExpress/Models/UserModel.dart';
import 'package:flutter/material.dart';
import 'package:RediExpress/ThemesFolder/Style.dart';
import 'package:RediExpress/ThemesFolder/TextStyles.dart';

class Registration extends StatefulWidget{
  const Registration({super.key});

  @override
  State<Registration> createState() => RegistrationWindowState();
}
class RegistrationWindowState extends State<Registration> {
  bool passwordVisible = false;
  bool? isChecked = false;
  final _firstpassword = TextEditingController();
  final _secondpassword = TextEditingController();
  final _fullname = TextEditingController();
  final _phonenum = TextEditingController();
  final _email = TextEditingController();
  UserModel userModel = new UserModel();
  void updatePasswordType(bool passwordVisible) => setState(() {
    this.passwordVisible = passwordVisible;
  });
    _changeName(){
      if(_firstpassword == _secondpassword){
        print('da');
      }
      else(print('net')); 
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(25, 50, 25, 0),
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
                  TextField(
                    controller: _fullname,
                    decoration:field_decoration('Ivan Ivanov'))
                ],
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 15, 0, 0)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Phone number', style: small_grey()),
                  Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 0)),
                  TextField(
                    controller: _phonenum,
                    decoration:field_decoration('+7(999)999-99-99'))
                ],
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 15, 0, 0)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Email address', style: small_grey()),
                  Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 0)),
                  TextField(
                    controller: _email,
                    decoration:field_decoration('********@mail.com'))
                ],
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 15, 0, 0)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Password', style: small_grey()),
                  Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 0)),
                  TextField(
                    controller: _firstpassword,
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
                    controller: _secondpassword,
                    decoration:password_field_decoration('*******', passwordVisible, updatePasswordType),
                    obscureText: passwordVisible,
                  )
                ],
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                         Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(value: isChecked, onChanged: (newBool){setState(() {
                    isChecked = newBool;
                  });}, activeColor: Colors.blueAccent,),
                  Text('By ticking this box, you agree to our ', style: small_grey()),
                  Text('Terms ', style: small_orange()),
                ],
              ),
                  ],

              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
              Container(
                decoration: filledboxdecoration(),
                height: 50,
                child: TextButton(
                  onPressed: registration,
                  child: Text('Sign Up', style: button_white()), 
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account? ', style: small_grey()),
                  TextButton(onPressed: (){
                      Navigator.of(context).pushNamed('/Authorization');
                  }, child: Text('Sign in' , style: button_blue(),))
                ],
              ),
            ],
          ),
      )
    );
  }
    Future<void> registration() async {
    userModel.email = _email.text.toString();
    userModel.password = _firstpassword.text.toString();
    userModel.name = _fullname.text.toString();
    userModel.phoneNumber = _phonenum.text.toString();


    if (_email != null && _phonenum != null && _fullname != null  && _firstpassword != null &&  _secondpassword != null && _firstpassword.text == _secondpassword.text && await userModel.register() ) {
          print('user added'); 
        }
    else {
      print('denie');
    }
  }
}