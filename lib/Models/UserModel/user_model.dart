import 'dart:async';
import 'dart:convert';

import 'package:RediExpress/Models/UserModel/abstract_user_model.dart';
import 'package:RediExpress/StaticClasses/current_user_class.dart';
import 'package:RediExpress/main.dart';
import 'package:dio/dio.dart';

class UserModel extends AbstractUserModel{
  final Dio dio;

  UserModel({required this.dio});
  @override
  Future<bool> checkIfExists() async{
    AbstractUserModel userModel;
    try{
    final response = await dio.get(
      'http://${ip}/users?email=${this.email}&password=${this.password}'
    );
    
    if(response.statusCode == 200){
      final json = response.data as Map<String, dynamic>;

      this.id = json['data']['id'];
      this.email = json['data']['email'];
      this.password = json['data']['password'];
      this.name = json['data']['name'];

      return true;
    } return false;} on DioException catch (error){
      if(error.response != null){
        return false;
      }
      else{
        return false;
      }
    } catch (e){
      return false;
    }
  }

  @override
  Future<bool> register() async{
    final json = new Map<String,dynamic>();

    json['email'] = this.email!;
    json['password'] = this.password!;
    json['name'] = this.name!;
    json['age'] = 0;

    final response = await dio.post(
      'http://${ip}/users', data: json
    );

    final jsonResponse = response.data as Map<String,dynamic>;

    return true;
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