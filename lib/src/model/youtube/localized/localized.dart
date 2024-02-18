// To parse this JSON data, do
//
//     final localized = localizedFromJson(jsonString);

import 'dart:convert';

Localized localizedFromJson(String str) => Localized.fromJson(json.decode(str));

String localizedToJson(Localized data) => json.encode(data.toJson());

class Localized {
  String title;
  String description;

  Localized({
    required this.title,
    required this.description,
  });

  factory Localized.fromJson(Map<String, dynamic> json) => Localized(
        title: json["title"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
      };
}
