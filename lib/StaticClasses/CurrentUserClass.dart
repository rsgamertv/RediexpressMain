import 'package:RediExpress/Models/UserModel/UserModel.dart';
import 'package:dio/dio.dart';

class CurrentUserClass {
   static UserModel user = new UserModel(dio: Dio());
}