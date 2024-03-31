import 'package:RediExpress/Models/UserModel/user_model.dart';
import 'package:dio/dio.dart';

class StaticModel{
  static UserModel staticModel = UserModel(dio: Dio());
}