import 'package:RediExpress/Models/UserModel/UserModel.dart';
import 'package:dio/dio.dart';

class StaticModel{
  static UserModel staticModel = UserModel(dio: Dio());
}