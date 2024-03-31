import 'package:RediExpress/Authorization/bloc/bloc/authorization_bloc.dart';
import 'package:RediExpress/Main/main_page.dart';
import 'package:RediExpress/Models/UserModel/abstract_user_model.dart';
import 'package:RediExpress/Models/UserModel/user_model.dart';
import 'package:RediExpress/ThemesFolder/text_styles.dart';
import 'package:RediExpress/core/Styles/style.dart';
import 'package:RediExpress/helpers.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Authorization extends StatefulWidget {
  @override
  State<Authorization> createState() => _AuthorizationState();
}

class _AuthorizationState extends State<Authorization> {
  bool passwordVisible = false;
  bool? isChecked = false;
  UserModel userModel = UserModel(dio: Dio());
  AbstractUserModel abstractUserModel = GetIt.I<AbstractUserModel>();
  final _authbloc = AuthorizationBloc(GetIt.I<AbstractUserModel>());
  final emailController = new TextEditingController();
  final passwordController = new TextEditingController();

  void updatePasswordType(bool passwordVisible) => setState(() {
        this.passwordVisible = passwordVisible;
      });
  @override
  void initState() {
    super.initState();
    GetIt.I<AbstractUserModel>();
  }

  @override
  Widget build(BuildContext context) {
    bool? isChecked = false;
    final bloccommand = BlocProvider.of<AuthorizationBloc>(context);
    return BlocListener<AuthorizationBloc, AuthorizationState>(
      listener: (BuildContext context, AuthorizationState state) { 
        if(emailController.text.toString() != '' && emailController.text.toString() != null && passwordController.text.toString() != '' && passwordController.text.toString() != null){
        if(state is AuthorizationLoading){
          showLoadingCircle(context);
        }
        if(state is AuthorizationLoaded){
          Navigator.of(context).pop();
          Navigator.of(context).pushNamed('/MainPage');
          showSnackBar(context, 'Вы успешно вошли');
        }
        if(state is AuthorizationFailure){
          Navigator.of(context).pop();
          Navigator.of(context).pushNamed('/Authorization');
          showSnackBar(context, 'Не удалось зайти');
        }
        }
        else{
          showSnackBar(context, 'Введите логин и пароль');
        }
      },
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.fromLTRB(25, 170, 25, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Back',
                style: Theme.of(context).textTheme.displayLarge,
              ),
              Text(
                'Fill in your email and password to continue',
                style: small_grey(),
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
              Text('Email Adress', style: small_grey()),
              Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 0)),
              TextField(
                decoration: field_decoration('***********@mail.com'),
                controller: emailController,
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 25, 0, 0)),
              Text('Password', style: small_grey()),
              Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 0)),
              TextField(
                decoration: password_field_decoration(
                    '***********', passwordVisible, updatePasswordType),
                obscureText: passwordVisible,
                controller: passwordController,
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 15, 0, 0)),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Container(
                  child: Row(
                    children: [
                      Checkbox(
                      value: isChecked,
                      onChanged: (newBool) {
                        setState(() {
                          isChecked = newBool;
                        });
                      },
                      activeColor: Theme.of(context).primaryColor,
                    ),
                      Text(
                        'Remember password',
                        style: small_grey(),
                      ),
                    ],
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/ForgotPassword');
                    },
                    child: Text(
                      'Forgot Password?',
                      style: button_blue(),
                    ))
              ]),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: filledboxdecoration(),
                    child: TextButton(
                      onPressed: () {
                        abstractUserModel.email =
                            emailController.text.toString();
                        abstractUserModel.password =
                            passwordController.text.toString();
                        bloccommand.add(AuthorizationEvent());
                      },
                      child: Text('Log in', style: button_white()),
                    ),
                  )
                ],
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: small_grey(),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/Registration');
                      },
                      child: Text(
                        'Sign Up',
                        style: button_blue(),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
