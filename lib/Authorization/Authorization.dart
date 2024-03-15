import 'package:RediExpress/Authorization/bloc/bloc/authorization_bloc.dart';
import 'package:RediExpress/Models/UserModel/UserModel.dart';
import 'package:RediExpress/ThemesFolder/TextStyles.dart';
import 'package:RediExpress/core/Styles/Style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class Authorization extends StatefulWidget{
  @override
  State<Authorization> createState() => _AuthorizationState();
}

class _AuthorizationState extends State<Authorization> {
  bool passwordVisible = false;
  bool? isChecked = false;
  final _authorizationbloc = AuthorizationBloc();
  UserModel userModel = new UserModel();
  final emailController = new TextEditingController();
  final passwordController = new TextEditingController();

  void updatePasswordType(bool passwordVisible) => setState(() {
    this.passwordVisible = passwordVisible;
  });
  @override
  void initState() {
    super.initState();
    _authorizationbloc.add(MakeAuthEvent());
  }
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
                    TextField(
                        decoration:field_decoration('***********@mail.com'),
                        controller: emailController,
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(0, 25, 0, 0)),
                    Text('Password', style: small_grey()),
                    Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 0)),
                    TextField(
                      decoration:password_field_decoration('***********', passwordVisible, updatePasswordType),
                      obscureText: passwordVisible,
                      controller: passwordController,
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(0,15, 0 , 0 )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            child: Row(
                              children: [
                                Checkbox(value: false, onChanged: null),
                                Text('Remember password', style: small_grey(),),
                              ],
                            ),
                        ),
                         TextButton(onPressed: (){
                              Navigator.of(context).pushNamed('/ForgotPassword');
                         }, 
                         child: Text('Forgot Password?',style: button_blue(),))
                      ]
                    ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                    Container(
                      width: 3,
                      height: 50,
                       decoration: filledboxdecoration(),
                         child: TextButton(onPressed: authorize, child: Text('Log in', style: button_white()),)
                        ),
                          ],
                    ),
                      Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            Text('Don\'t have an account?' , style: small_grey(),),
                            TextButton(onPressed: (){
                              Navigator.of(context).pushNamed('/Registration');
                            }, child: Text('Sign Up', style: button_blue(),))
                        ],
                      )
                ],
            ),
      ),
    );
  }

  Future<void> authorize() async {
    userModel.email = emailController.text.toString();
    userModel.password = passwordController.text.toString();

    if (await userModel.checkIfExists()) {
      Navigator.of(context).pushNamed('/MainPage');
    }
  }
}