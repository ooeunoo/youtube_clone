// To parse this JSON data, do
//
//     final asset = assetFromJson(jsonString);

import 'dart:convert';

Asset assetFromJson(String str) => Asset.fromJson(json.decode(str));

String assetToJson(Asset data) => json.encode(data.toJson());

class Asset {
  String path;

  Asset({
    required this.path,
  });

  factory Asset.fromJson(Map<String, dynamic> json) => Asset(
        path: json["path"],
      );

  Map<String, dynamic> toJson() => {
        "path": path,
      };
}
