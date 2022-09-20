// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

import 'package:flutter/material.dart';

LoginModel loginModelFromJson(String str) =>
    LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  LoginModel({
    required this.success,
    required this.user,
    required this.data,
    required this.msg,
  });

  int success;
  User user;
  UserData data;
  String msg;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
    success: json["success"],
    user: User.fromJson(json["user"]),

    msg: json["msg"],
    data: json["data"] !=null ? UserData.fromJson(json['data']) : null);


  Map<String, dynamic> toJson() => {
    "success": success,
    "user": user.toJson(),
    "data": data,
    "msg": msg,
  };
}

class UserData {
  static fromJson(json) {}
}

class User {
  User({
    required this.customerId,
    required this.resetCode,
    required this.image,
    required this.phone,
    required this.name,
    required this.token,
    required this.email,
    required this.password,
    required this.userName,
    required this.latitude,
    required this.longitude,
  });

  int customerId;
  int resetCode;
  String image;
  int phone;
  String name;
  String token;
  String email;
  int password;
  String userName;
  DateTime latitude;
  DateTime longitude;

  

  Map<String, dynamic> toJson() => {
    "customerId": customerId,
    "name": name,
    "resetCode": resetCode,
    "email": email,
    "image": image,
    "token": token,
    "password": password,
    "userName": userName,
    "phone": phone,
 
    
  };

  static fromJson(json) {}
}

