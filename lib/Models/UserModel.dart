import 'package:dio/dio.dart';

class UserModel{
  Future<bool> checkIfExists() async{
    final response = await Dio().get(
      'http://83.147.245.57/user_get?email=${this.email}&password=${this.password}'
    );

    final json = response.data as Map<String, dynamic>;

    if(json["response"] == "User not found"){
      return false;
    }

    this.id = json["data"]["Id"];
    this.email = json["data"]["Email"];
    this.password = json["data"]["Password"];
    this.name = json["data"]["Name"];
    this.phoneNumber = json["data"]["PhoneNumber"];

    return true;
  }

  int? id;
  String? email;
  String? password;
  String? name;
  String? phoneNumber;
}