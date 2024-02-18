import 'dart:convert';

import 'package:clone_flutter_youtube/src/model/youtube/pageInfo/page_info.dart';
import 'package:clone_flutter_youtube/src/model/youtube/video/video.dart';

VideoListResponse emptyFromJson(String str) =>
    VideoListResponse.fromJson(json.decode(str));

String emptyToJson(VideoListResponse data) => json.encode(data.toJson());

class VideoListResponse {
  String kind;
  String etag;
  List<Video> items;
  String nextPageToken;
  PageInfo pageInfo;

  VideoListResponse({
    required this.kind,
    required this.etag,
    required this.items,
    required this.nextPageToken,
    required this.pageInfo,
  });

  factory VideoListResponse.fromJson(Map<String, dynamic> json) =>
      VideoListResponse(
        kind: json["kind"],
        etag: json["etag"],
        items: List<Video>.from(json["items"].map((x) => Video.fromJson(x))),
        nextPageToken: json["nextPageToken"],
        pageInfo: PageInfo.fromJson(json["pageInfo"]),
      );

  Map<String, dynamic> toJson() => {
        "kind": kind,
        "etag": etag,
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
        "nextPageToken": nextPageToken,
        "pageInfo": pageInfo.toJson(),
      };
}
