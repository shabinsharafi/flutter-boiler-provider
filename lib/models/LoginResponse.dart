// To parse this JSON data, do
//
//     final loginResponse = loginResponseFromJson(jsonString);

import 'package:boiler_plate_app/models/userModel.dart';
import 'package:meta/meta.dart';
import 'dart:convert';

import 'baseModel.dart';

LoginResponse loginResponseFromJson(String str) =>
    LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse implements BaseModel{
  String? token;
  UserModel? user;

  LoginResponse({
     this.token,
     this.user,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        token: json["token"],
        user: UserModel.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "token": token,
        "user": user!.toJson(),
      };

  @override
  fromJson(dynamic json) => LoginResponse(
    token: json["token"],
    user: json["user"]==null?null:UserModel.fromJson(json["user"]),
  );
}
