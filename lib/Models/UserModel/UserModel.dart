import 'dart:async';
import 'dart:convert';

import 'package:RediExpress/Models/UserModel/AbstractUserModel.dart';
import 'package:RediExpress/StaticClasses/CurrentUserClass.dart';
import 'package:dio/dio.dart';

class UserModel extends AbstractUserModel{
  final Dio dio;

  UserModel({required this.dio});
  @override
  Future<bool> checkIfExists() async{
    final response = await dio.get(
      'http://83.147.245.57/user_get?email=${this.email}&password=${this.password}'
    );

    final json = response.data as Map<String, dynamic>;

    if(!json['success']){
      return false;
    }

    this.id = json['data']['Id'];
    this.email = json['data']['Email'];
    this.password = json['data']['Password'];
    this.name = json['data']['Name'];
    this.phoneNumber = json['data']['PhoneNumber'];

    return true;
  }
  @override
  Future<bool> register() async{
    final json = new Map<String,String>();

    json['Email'] = this.email!;
    json['Password'] = this.password!;
    json['Name'] = this.name!;
    json['PhoneNumber'] = this.phoneNumber!;

    final response = await dio.post(
      'http://83.147.245.57/user_add', data: json
    );

    final jsonResponse = response.data as Map<String,dynamic>;

    return jsonResponse['success'];
  }
  @override
  Future <bool> forgotPassword() async{
    final response = await dio.get(
        'http://83.147.245.57/user_ask_reset_password?email=${this.email}'
     );
    final jsonResponse = response.data as Map<String, dynamic>;
    return jsonResponse['success'];
  }
  @override
  Future <bool> otpPassword() async{
    verCode = pin1.toString() + pin2.toString() + pin3.toString() + pin4.toString() + pin5.toString() + pin6.toString();

    final response = await dio.get(
      'http://83.147.245.57/user_check_verification_code?email=${this.email}&verification_code=${this.verCode}'
    );

    final jsonResponse = response.data as Map<String, dynamic>;

    return jsonResponse['success'];
  }
  @override
  Future <bool> newPasswordSet() async{
    final response = await dio.get(
      'http://83.147.245.57/user_reset_password?email=${this.email}&verification_code=${this.verCode}&new_password=${this.password}'
    );

    final jsonResponse = response.data as Map<String, dynamic>;

    return jsonResponse['success'];
  }

}