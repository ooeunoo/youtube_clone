// To parse this JSON data, do
//
//     final channelStatistics = channelStatisticsFromJson(jsonString);

import 'dart:convert';

ChannelStatistics channelStatisticsFromJson(String str) =>
    ChannelStatistics.fromJson(json.decode(str));

String channelStatisticsToJson(ChannelStatistics data) =>
    json.encode(data.toJson());

class ChannelStatistics {
  String viewCount;
  String subscriberCount;
  bool hiddenSubscriberCount;
  String videoCount;

  ChannelStatistics({
    required this.viewCount,
    required this.subscriberCount,
    required this.hiddenSubscriberCount,
    required this.videoCount,
  });

  factory ChannelStatistics.fromJson(Map<String, dynamic> json) =>
      ChannelStatistics(
        viewCount: json["viewCount"],
        subscriberCount: json["subscriberCount"],
        hiddenSubscriberCount: json["hiddenSubscriberCount"],
        videoCount: json["videoCount"],
      );

  Map<String, dynamic> toJson() => {
        "viewCount": viewCount,
        "subscriberCount": subscriberCount,
        "hiddenSubscriberCount": hiddenSubscriberCount,
        "videoCount": videoCount,
      };
}
