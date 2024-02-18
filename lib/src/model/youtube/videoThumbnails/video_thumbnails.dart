// To parse this JSON data, do
//
//     final videoThumbnails = videoThumbnailsFromJson(jsonString);

import 'dart:convert';

import 'package:clone_flutter_youtube/src/model/youtube/thumbnail/thumbnail.dart';

VideoThumbnails videoThumbnailsFromJson(String str) =>
    VideoThumbnails.fromJson(json.decode(str));

String videoThumbnailsToJson(VideoThumbnails data) =>
    json.encode(data.toJson());

class VideoThumbnails {
  Thumbnail medium;
  Thumbnail high;
  Thumbnail standard;

  VideoThumbnails({
    required this.medium,
    required this.high,
    required this.standard,
  });

  factory VideoThumbnails.fromJson(Map<String, dynamic> json) =>
      VideoThumbnails(
        medium: Thumbnail.fromJson(json["medium"]),
        high: Thumbnail.fromJson(json["high"]),
        standard: Thumbnail.fromJson(json["standard"]),
      );

  Map<String, dynamic> toJson() => {
        "medium": medium.toJson(),
        "high": high.toJson(),
        "standard": standard.toJson(),
      };
}
