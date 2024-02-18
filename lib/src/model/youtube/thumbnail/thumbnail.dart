// To parse this JSON data, do
//
//     final thumbnail = thumbnailFromJson(jsonString);

import 'dart:convert';

Thumbnail thumbnailFromJson(String str) => Thumbnail.fromJson(json.decode(str));

String thumbnailToJson(Thumbnail data) => json.encode(data.toJson());

class Thumbnail {
  String url;
  int width;
  int height;

  Thumbnail({
    required this.url,
    required this.width,
    required this.height,
  });

  factory Thumbnail.fromJson(Map<String, dynamic> json) => Thumbnail(
        url: json["url"],
        width: json["width"],
        height: json["height"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "width": width,
        "height": height,
      };
}
