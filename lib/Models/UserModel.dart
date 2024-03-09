class UserModel{
  UserModel({
    required this.id,
    required this.email,
    required this.password,
    required this.name,
    required this.phoneNumber
  });

  int id;
  String email;
  String password;
  String name;
  String phoneNumber;

  factory UserModel.fromJson(Map<String, dynamic> json){
    return UserModel(id: json["Id"], email: json["Email"], password: json["Password"], name: json["Name"], phoneNumber: json["PhoneNumber"]);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
      "Id": id,
      "Email": email,
      "Password": password,
      "Name": name,
      "PhoneNumber": phoneNumber,
    };
}