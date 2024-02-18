// To parse this JSON data, do
//
//     final videoStatistics = videoStatisticsFromJson(jsonString);

import 'dart:convert';

VideoStatistics videoStatisticsFromJson(String str) =>
    VideoStatistics.fromJson(json.decode(str));

String videoStatisticsToJson(VideoStatistics data) =>
    json.encode(data.toJson());

class VideoStatistics {
  String viewCount;
  String likeCount;
  String favoriteCount;
  String? commentCount;

  VideoStatistics({
    required this.viewCount,
    required this.likeCount,
    required this.favoriteCount,
    this.commentCount,
  });

  factory VideoStatistics.fromJson(Map<String, dynamic> json) =>
      VideoStatistics(
        viewCount: json["viewCount"],
        likeCount: json["likeCount"],
        favoriteCount: json["favoriteCount"],
        commentCount: json["commentCount"],
      );

  Map<String, dynamic> toJson() => {
        "viewCount": viewCount,
        "likeCount": likeCount,
        "favoriteCount": favoriteCount,
        "commentCount": commentCount,
      };
}
