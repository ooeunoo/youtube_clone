import 'package:clone_flutter_youtube/src/model/youtube/videoSnippet/video_snippet.dart';
import 'package:clone_flutter_youtube/src/model/youtube/videoStatistics/video_statistics.dart';

class Video {
  String kind;
  String etag;
  String id;
  VideoSnippet snippet;
  VideoStatistics statistics;

  Video({
    required this.kind,
    required this.etag,
    required this.id,
    required this.snippet,
    required this.statistics,
  });

  factory Video.fromJson(Map<String, dynamic> json) => Video(
        kind: json["kind"],
        etag: json["etag"],
        id: json["id"],
        snippet: VideoSnippet.fromJson(json["snippet"]),
        statistics: VideoStatistics.fromJson(json["statistics"]),
      );

  Map<String, dynamic> toJson() => {
        "kind": kind,
        "etag": etag,
        "id": id,
        "snippet": snippet.toJson(),
        "statistics": statistics.toJson(),
      };
}
