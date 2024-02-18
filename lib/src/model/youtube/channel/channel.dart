import 'package:clone_flutter_youtube/src/model/youtube/channelSnippet/channel_snippet.dart';
import 'package:clone_flutter_youtube/src/model/youtube/channelStatistics/channel_statistics.dart';

class Channel {
  String kind;
  String etag;
  String id;
  ChannelSnippet snippet;
  ChannelStatistics statistics;

  Channel({
    required this.kind,
    required this.etag,
    required this.id,
    required this.snippet,
    required this.statistics,
  });

  factory Channel.fromJson(Map<String, dynamic> json) => Channel(
        kind: json["kind"],
        etag: json["etag"],
        id: json["id"],
        snippet: ChannelSnippet.fromJson(json["snippet"]),
        statistics: ChannelStatistics.fromJson(json["statistics"]),
      );

  Map<String, dynamic> toJson() => {
        "kind": kind,
        "etag": etag,
        "id": id,
        "snippet": snippet.toJson(),
        "statistics": statistics.toJson(),
      };
}
