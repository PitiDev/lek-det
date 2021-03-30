// To parse this JSON data, do
//
//     final lekLaosModel = lekLaosModelFromJson(jsonString);

import 'dart:convert';

LekLaosModel lekLaosModelFromJson(String str) => LekLaosModel.fromJson(json.decode(str));

String lekLaosModelToJson(LekLaosModel data) => json.encode(data.toJson());

class LekLaosModel {
  LekLaosModel({
    this.date,
    this.sixdigit,
    this.fiveDigit,
    this.fourDigit,
    this.threeDigit,
    this.twoDigit,
    this.name,
  });

  String date;
  String sixdigit;
  String fiveDigit;
  String fourDigit;
  String threeDigit;
  String twoDigit;
  String name;

  factory LekLaosModel.fromJson(Map<String, dynamic> json) => LekLaosModel(
    date: json["date"] == null ? null : json["date"],
    sixdigit: json["sixdigit"] == null ? null : json["sixdigit"],
    fiveDigit: json["fiveDigit"] == null ? null : json["fiveDigit"],
    fourDigit: json["fourDigit"] == null ? null : json["fourDigit"],
    threeDigit: json["threeDigit"] == null ? null : json["threeDigit"],
    twoDigit: json["twoDigit"] == null ? null : json["twoDigit"],
    name: json["name"] == null ? null : json["name"],
  );

  Map<String, dynamic> toJson() => {
    "date": date == null ? null : date,
    "sixdigit": sixdigit == null ? null : sixdigit,
    "fiveDigit": fiveDigit == null ? null : fiveDigit,
    "fourDigit": fourDigit == null ? null : fourDigit,
    "threeDigit": threeDigit == null ? null : threeDigit,
    "twoDigit": twoDigit == null ? null : twoDigit,
    "name": name == null ? null : name,
  };
}
