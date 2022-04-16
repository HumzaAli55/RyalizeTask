// To parse this JSON data, do
//
//     final signupModel = signupModelFromJson(jsonString);

import 'dart:convert';

AuthModel signupModelFromJson(String str) => AuthModel.fromJson(json.decode(str));

String signupModelToJson(AuthModel data) => json.encode(data.toJson());

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

  Map<String, dynamic> toJson() => {
    "\u0024id": id,
    "code": code,
    "message": message,
    "data": data!.toJson(),
  };
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

  Map<String, dynamic> toJson() => {
    "\u0024id": id,
    "Id": dataId,
    "Name": name,
    "Email": email,
    "Token": token,
  };
}
