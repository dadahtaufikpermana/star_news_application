// To parse this JSON data, do
//
//     final homeNewsModel = homeNewsModelFromJson(jsonString);

import 'dart:convert';

List<HomeNewsModel> homeNewsModelFromJson(String str) => List<HomeNewsModel>.from(json.decode(str).map((x) => HomeNewsModel.fromJson(x)));

String homeNewsModelToJson(List<HomeNewsModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HomeNewsModel {
  HomeNewsModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  int userId;
  int id;
  String title;
  String body;

  factory HomeNewsModel.fromJson(Map<String, dynamic> json) => HomeNewsModel(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "body": body,
  };
}
