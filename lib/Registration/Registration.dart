import 'package:RediExpress/Models/UserModel/AbstractUserModel.dart';
import 'package:RediExpress/Models/UserModel/UserModel.dart';
import 'package:RediExpress/Registration/bloc/registration_bloc.dart';
import 'package:RediExpress/helpers.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:RediExpress/core/Styles/Style.dart';
import 'package:RediExpress/ThemesFolder/text_styles.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => RegistrationWindowState();
}

class RegistrationWindowState extends State<Registration> {
  bool passwordVisible = false;
  bool? isChecked = false;
  final _emailController = TextEditingController();
  final _firstPasswordController = TextEditingController();
  final _secondPasswordController = TextEditingController();
  final _fullNameController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  AbstractUserModel abstractUserModel = GetIt.I<AbstractUserModel>();

  void updatePasswordType(bool passwordVisible) => setState(() {
        this.passwordVisible = passwordVisible;
      });

  @override
  Widget build(BuildContext context) {
    final bloccommand = BlocProvider.of<RegistrationBloc>(context);
    return BlocListener<RegistrationBloc, RegistrationState>(
      listener: (BuildContext context, RegistrationState state) {
        if(state is RegistrationLoading){
          showLoadingCircle(context);
        }
        if(state is REgistrationLoaded){
          Navigator.of(context).pop();
          Navigator.of(context).pushNamed('/Authorization');
          showSnackBar(context, 'Вы успешно зарегегестрировались');
        }
        if(state is RegistrationFailure){
          showSnackBar(context, 'Произошла ошибка');
        }
      },
      child: Scaffold(
          body: Container(
        padding: EdgeInsets.fromLTRB(25, 50, 25, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Create an account',
                style: Theme.of(context).textTheme.displayLarge),
            Text('Complete the sign up process to get started',
                style: small_grey()),
            Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Full name', style: small_grey()),
                Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 0)),
                TextField(
                    controller: _fullNameController,
                    decoration: field_decoration('Ivan Ivanov'))
              ],
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 15, 0, 0)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Phone number', style: small_grey()),
                Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 0)),
                TextField(
                    controller: _phoneNumberController,
                    decoration: field_decoration('+7(999)999-99-99'))
              ],
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 15, 0, 0)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Email address', style: small_grey()),
                Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 0)),
                TextField(
                    controller: _emailController,
                    decoration: field_decoration('********@mail.com'))
              ],
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 15, 0, 0)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Password', style: small_grey()),
                Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 0)),
                TextField(
                  controller: _firstPasswordController,
                  decoration: password_field_decoration(
                      '*******', passwordVisible, updatePasswordType),
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
                  controller: _secondPasswordController,
                  decoration: password_field_decoration(
                      '*******', passwordVisible, updatePasswordType),
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
                    Checkbox(
                      value: isChecked,
                      onChanged: (newBool) {
                        setState(() {
                          isChecked = newBool;
                        });
                      },
                      activeColor: Theme.of(context).primaryColor,
                    ),
                    Text('By ticking this box, you agree to our ',
                        style: small_grey()),
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
                onPressed: () {
                  abstractUserModel.email = _emailController.text.toString();
                  abstractUserModel.phoneNumber =
                      _phoneNumberController.text.toString();
                  abstractUserModel.name = _fullNameController.text.toString();
                  if (_firstPasswordController.text.toString() ==
                      _secondPasswordController.text.toString()) {
                    abstractUserModel.password =
                        _firstPasswordController.text.toString();
                  } else {
                    showAboutDialog(
                        context: context,
                        applicationLegalese: 'Введите одинаковые пароли');
                  }
                  bloccommand.add(RegistrationEvent());
                },
                child: Text('Sign Up', style: button_white()),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account? ', style: small_grey()),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/Authorization');
                    },
                    child: Text(
                      'Sign in',
                      style: button_blue(),
                    ))
              ],
            ),
          ],
        ),
      )),
    );
  }
}
