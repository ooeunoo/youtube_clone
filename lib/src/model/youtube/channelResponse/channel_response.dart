// To parse this JSON data, do
//
//     final empty = emptyFromJson(jsonString);

import 'dart:convert';

import 'package:clone_flutter_youtube/src/model/youtube/channel/channel.dart';
import 'package:clone_flutter_youtube/src/model/youtube/pageInfo/page_info.dart';

ChannelResponse emptyFromJson(String str) => ChannelResponse.fromJson(json.decode(str));

String emptyToJson(ChannelResponse data) => json.encode(data.toJson());

class ChannelResponse {
  String kind;
  String etag;
  PageInfo pageInfo;
  List<Channel> items;

  ChannelResponse({
    required this.kind,
    required this.etag,
    required this.pageInfo,
    required this.items,
  });

  factory ChannelResponse.fromJson(Map<String, dynamic> json) => ChannelResponse(
        kind: json["kind"],
        etag: json["etag"],
        pageInfo: PageInfo.fromJson(json["pageInfo"]),
        items: List<Channel>.from(json["items"].map((x) => Channel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "kind": kind,
        "etag": etag,
        "pageInfo": pageInfo.toJson(),
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
      };
}
