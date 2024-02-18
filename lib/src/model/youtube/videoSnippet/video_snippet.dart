import 'package:clone_flutter_youtube/src/model/youtube/localized/localized.dart';
import 'package:clone_flutter_youtube/src/model/youtube/thumbnail/thumbnail.dart';
import 'package:clone_flutter_youtube/src/model/youtube/videoThumbnails/video_thumbnails.dart';

class VideoSnippet {
  DateTime publishedAt;
  String channelId;
  String title;
  String description;
  VideoThumbnails thumbnails;
  String channelTitle;
  String categoryId;
  String liveBroadcastContent;
  Localized localized;
  String? defaultAudioLanguage;

  VideoSnippet({
    required this.publishedAt,
    required this.channelId,
    required this.title,
    required this.description,
    required this.thumbnails,
    required this.channelTitle,
    required this.categoryId,
    required this.liveBroadcastContent,
    required this.localized,
    this.defaultAudioLanguage,
  });

  factory VideoSnippet.fromJson(Map<String, dynamic> json) => VideoSnippet(
        publishedAt: DateTime.parse(json["publishedAt"]),
        channelId: json["channelId"],
        title: json["title"],
        description: json["description"],
        thumbnails: VideoThumbnails.fromJson(json["thumbnails"]),
        channelTitle: json["channelTitle"],
        categoryId: json["categoryId"],
        liveBroadcastContent: json["liveBroadcastContent"],
        localized: Localized.fromJson(json["localized"]),
        defaultAudioLanguage: json["defaultAudioLanguage"],
      );

  Map<String, dynamic> toJson() => {
        "publishedAt": publishedAt.toIso8601String(),
        "channelId": channelId,
        "title": title,
        "description": description,
        "thumbnails": thumbnails.toJson(),
        "channelTitle": channelTitle,
        "categoryId": categoryId,
        "liveBroadcastContent": liveBroadcastContent,
        "localized": localized.toJson(),
        "defaultAudioLanguage": defaultAudioLanguage,
      };
}
