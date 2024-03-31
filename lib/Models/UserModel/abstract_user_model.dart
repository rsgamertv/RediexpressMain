
abstract class AbstractUserModel{
  int? id;
  String? verCode;
  String? pin1,pin2,pin3,pin4,pin5,pin6;
  String? email;
  String? password;
  String? name;
  String? phoneNumber;

  Future<bool> checkIfExists();

  Future<bool> register();

  Future<bool> forgotPassword();

  Future<bool> otpPassword();

  Future<bool> newPasswordSet();
}