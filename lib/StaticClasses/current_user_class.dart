import 'package:RediExpress/Models/UserModel/user_model.dart';
import 'package:dio/dio.dart';

class CurrentUserClass {
   static UserModel user = new UserModel(dio: Dio());
}