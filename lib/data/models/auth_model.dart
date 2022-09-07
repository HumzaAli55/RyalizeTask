// To parse this JSON data, do
//
//     final signupModel = signupModelFromJson(jsonString);

import 'dart:convert';


class AuthModel {
  AuthModel({
    this.id,
    this.code,
    this.message,
    this.data,
  });

  String? id;
  int? code;
  String? message;
  Data? data;

  factory AuthModel.fromJson(Map<String, dynamic> json) => AuthModel(
    id: json["\u0024id"],
    code: json["code"],
    message: json["message"],
    data: Data.fromJson(json["data"]),
  );

}

class Data {
  Data({
    this.id,
    this.dataId,
    this.name,
    this.email,
    this.token,
  });

  String? id;
  int? dataId;
  String? name;
  String? email;
  String? token;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json["\u0024id"],
    dataId: json["Id"],
    name: json["Name"],
    email: json["Email"],
    token: json["Token"],
  );
}
