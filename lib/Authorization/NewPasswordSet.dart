import 'package:RediExpress/Models/UserModel.dart';
import 'package:RediExpress/ThemesFolder/Style.dart';
import 'package:RediExpress/ThemesFolder/TextStyles.dart';
import 'package:flutter/material.dart';

class NewPasswordSet extends StatefulWidget{
  @override
  State<NewPasswordSet> createState() => _NewPasswordSetState();
}

class _NewPasswordSetState extends State<NewPasswordSet> {
   bool passwordVisible = false;
  bool? isChecked = false;
  final _firstPasswordController = TextEditingController();
  final _secondPasswordController = TextEditingController();
  UserModel userModel = new UserModel();
  void updatePasswordType(bool passwordVisible) => setState(() {
  this.passwordVisible = passwordVisible;
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
                Expanded(child: Container(), flex: 13,),
                Expanded(child: Text('New Password', style: large_black(),), flex: 3,),
                Expanded(child: Text('Enter new password',style: small_grey(),) , flex: 3),
                Expanded(flex: 2,child: Text('Password', style: small_grey(),),),
                Expanded(flex: 6,child: TextField(
                  controller: _firstPasswordController,
                  decoration: password_field_decoration('**********', passwordVisible, updatePasswordType),
                  obscureText: passwordVisible,
                )),
                Expanded(flex: 2,child: Text('Confirm Password', style: small_grey()),),
                Expanded(flex: 7,child: TextField(
                  controller: _secondPasswordController,
                  decoration: password_field_decoration('**********', passwordVisible, updatePasswordType),
                  obscureText: passwordVisible,
                )),
                Expanded(flex: 4,child: Container(
                  decoration: filledboxdecoration(),
                  child: 
                  TextButton(
                    onPressed: NewPAssword,child: Text('Log in', style: button_white(),),) )),
                Expanded(child: Container(),flex: 18,)
          ],
        ),
      ),

    );
  }
  Future<void> NewPAssword() async{
    if(_secondPasswordController != _firstPasswordController){
      showAboutDialog(context: context, applicationLegalese: 'Введите одинаковые пароли');
    }
    userModel.password = _firstPasswordController.text.toString();
    if(await userModel.NewPasswordSet()){
      Navigator.of(context).pushNamed('/Authorization');
    }
    else{
      print('denie');
    }
  }
}