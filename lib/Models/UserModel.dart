import 'dart:convert';

import 'package:dio/dio.dart';

class UserModel{
  Future<bool> checkIfExists() async{
    final response = await Dio().get(
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

  Future<bool> register() async{
    final json = new Map<String,String>();
    json['Email'] = this.email!;
    json['Password'] = this.password!;
    json['Name'] = this.name!;
    json['PhoneNumber'] = this.phoneNumber!;

    final response = await Dio().post(
      'http://83.147.245.57/user_add', data: json
    );

    final jsonResponse = response.data as Map<String,dynamic>;

    return jsonResponse['success'];
  }

  Future <bool> forgotPassword() async{
    final response = await Dio().get(
        'http://83.147.245.57/user_ask_reset_password?email=${this.email}'
     );

    final jsonResponse = response.data as Map<String, dynamic>;

    return jsonResponse['success'];
  }

  int? id;
  String? email;
  String? password;
  String? name;
  String? phoneNumber;
}