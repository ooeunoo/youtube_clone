import 'package:clone_flutter_youtube/src/model/youtube/channelThumbnails/channel_thumbnails.dart';
import 'package:clone_flutter_youtube/src/model/youtube/localized/localized.dart';

class ChannelSnippet {
  String title;
  String description;
  String customUrl;
  DateTime publishedAt;
  ChannelThumbnails thumbnails;
  Localized localized;
  String country;

  ChannelSnippet({
    required this.title,
    required this.description,
    required this.customUrl,
    required this.publishedAt,
    required this.thumbnails,
    required this.localized,
    required this.country,
  });

  factory ChannelSnippet.fromJson(Map<String, dynamic> json) => ChannelSnippet(
        title: json["title"],
        description: json["description"],
        customUrl: json["customUrl"],
        publishedAt: DateTime.parse(json["publishedAt"]),
        thumbnails: ChannelThumbnails.fromJson(json["thumbnails"]),
        localized: Localized.fromJson(json["localized"]),
        country: json["country"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
        "customUrl": customUrl,
        "publishedAt": publishedAt.toIso8601String(),
        "thumbnails": thumbnails.toJson(),
        "localized": localized.toJson(),
        "country": country,
      };
}
