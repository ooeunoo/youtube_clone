// To parse this JSON data, do
//
//     final channelThumbnails = channelThumbnailsFromJson(jsonString);

import 'dart:convert';

import 'package:clone_flutter_youtube/src/model/youtube/thumbnail/thumbnail.dart';

ChannelThumbnails channelThumbnailsFromJson(String str) =>
    ChannelThumbnails.fromJson(json.decode(str));

String channelThumbnailsToJson(ChannelThumbnails data) =>
    json.encode(data.toJson());

class ChannelThumbnails {
  Thumbnail medium;
  Thumbnail high;

  ChannelThumbnails({
    required this.medium,
    required this.high,
  });

  factory ChannelThumbnails.fromJson(Map<String, dynamic> json) =>
      ChannelThumbnails(
        medium: Thumbnail.fromJson(json["medium"]),
        high: Thumbnail.fromJson(json["high"]),
      );

  Map<String, dynamic> toJson() => {
        "medium": medium.toJson(),
        "high": high.toJson(),
      };
}
