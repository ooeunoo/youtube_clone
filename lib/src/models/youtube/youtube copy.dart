// import 'dart:convert';

// VideoListResponse videoFromJson(String str) =>
//     VideoListResponse.fromJson(json.decode(str));

// String videoToJson(VideoListResponse data) => json.encode(data.toJson());

// class VideoListResponse {
//   String kind;
//   String etag;
//   List<Video>? items; // Making items nullable
//   String nextPageToken;
//   PageInfo pageInfo;

//   VideoListResponse({
//     required this.kind,
//     required this.etag,
//     this.items, // Nullable parameter
//     required this.nextPageToken,
//     required this.pageInfo,
//   });

//   factory VideoListResponse.fromJson(Map<String, dynamic> json) =>
//       VideoListResponse(
//         kind: json["kind"],
//         etag: json["etag"],
//         items: json["items"] != null
//             ? List<Video>.from(json["items"].map((x) => Video.fromJson(x)))
//             : null,
//         nextPageToken: json["nextPageToken"],
//         pageInfo: PageInfo.fromJson(json["pageInfo"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "kind": kind,
//         "etag": etag,
//         "items": items != null
//             ? List<dynamic>.from(items!.map((x) => x.toJson()))
//             : null,
//         "nextPageToken": nextPageToken,
//         "pageInfo": pageInfo.toJson(),
//       };
// }

// class Video {
//   String kind;
//   String etag;
//   String id;
//   VideoSnippet snippet;
//   VideoStatistics statistics;

//   Video({
//     required this.kind,
//     required this.etag,
//     required this.id,
//     required this.snippet,
//     required this.statistics,
//   });

//   factory Video.fromJson(Map<String, dynamic> json) => Video(
//         kind: json["kind"],
//         etag: json["etag"],
//         id: json["id"],
//         snippet: VideoSnippet.fromJson(json["snippet"]),
//         statistics: VideoStatistics.fromJson(json["statistics"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "kind": kind,
//         "etag": etag,
//         "id": id,
//         "snippet": snippet.toJson(),
//         "statistics": statistics.toJson(),
//       };
// }

// class VideoSnippet {
//   String title;
//   String description;
//   DateTime publishedAt;
//   String channelId;
//   VideoThumbnails thumbnails;
//   String channelTitle;
//   List<String>? tags;
//   String categoryId;
//   String liveBroadcastContent;
//   Localized localized;
//   String? defaultAudioLanguage;
//   String? defaultLanguage;

//   VideoSnippet({
//     required this.publishedAt,
//     required this.channelId,
//     required this.title,
//     required this.description,
//     required this.thumbnails,
//     required this.channelTitle,
//     this.tags,
//     required this.categoryId,
//     required this.liveBroadcastContent,
//     required this.localized,
//     this.defaultAudioLanguage,
//     this.defaultLanguage,
//   });

//   factory VideoSnippet.fromJson(Map<String, dynamic> json) => VideoSnippet(
//         publishedAt: DateTime.parse(json["publishedAt"]),
//         channelId: json["channelId"],
//         title: json["title"],
//         description: json["description"],
//         thumbnails: VideoThumbnails.fromJson(json["thumbnails"]),
//         channelTitle: json["channelTitle"],
//         tags: json["tags"] == null
//             ? []
//             : List<String>.from(json["tags"]!.map((x) => x)),
//         categoryId: json["categoryId"],
//         liveBroadcastContent: json["liveBroadcastContent"],
//         localized: Localized.fromJson(json["localized"]),
//         defaultAudioLanguage: json["defaultAudioLanguage"],
//         defaultLanguage: json["defaultLanguage"],
//       );

//   Map<String, dynamic> toJson() => {
//         "publishedAt": publishedAt.toIso8601String(),
//         "channelId": channelId,
//         "title": title,
//         "description": description,
//         "thumbnails": thumbnails.toJson(),
//         "channelTitle": channelTitle,
//         "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => x)),
//         "categoryId": categoryId,
//         "liveBroadcastContent": liveBroadcastContent,
//         "localized": localized.toJson(),
//         "defaultAudioLanguage": defaultAudioLanguage,
//         "defaultLanguage": defaultLanguage,
//       };
// }

// class Localized {
//   String title;
//   String description;

//   Localized({
//     required this.title,
//     required this.description,
//   });

//   factory Localized.fromJson(Map<String, dynamic> json) => Localized(
//         title: json["title"],
//         description: json["description"],
//       );

//   Map<String, dynamic> toJson() => {
//         "title": title,
//         "description": description,
//       };
// }

// class VideoThumbnails {
//   Thumbnail thumbnailsDefault;
//   Thumbnail medium;
//   Thumbnail high;
//   Thumbnail standard;

//   VideoThumbnails({
//     required this.thumbnailsDefault,
//     required this.medium,
//     required this.high,
//     required this.standard,
//   });

//   factory VideoThumbnails.fromJson(Map<String, dynamic> json) =>
//       VideoThumbnails(
//         thumbnailsDefault: Thumbnail.fromJson(json["default"]),
//         medium: Thumbnail.fromJson(json["medium"]),
//         high: Thumbnail.fromJson(json["high"]),
//         standard: Thumbnail.fromJson(json["standard"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "default": thumbnailsDefault.toJson(),
//         "medium": medium.toJson(),
//         "high": high.toJson(),
//         "standard": standard.toJson(),
//       };
// }

// class Thumbnail {
//   String url;
//   int width;
//   int height;

//   Thumbnail({
//     required this.url,
//     required this.width,
//     required this.height,
//   });

//   factory Thumbnail.fromJson(Map<String, dynamic> json) => Thumbnail(
//         url: json["url"],
//         width: json["width"],
//         height: json["height"],
//       );

//   Map<String, dynamic> toJson() => {
//         "url": url,
//         "width": width,
//         "height": height,
//       };
// }

// class VideoStatistics {
//   String viewCount;
//   String likeCount;
//   String favoriteCount;
//   String commentCount;

//   VideoStatistics({
//     required this.viewCount,
//     required this.likeCount,
//     required this.favoriteCount,
//     required this.commentCount,
//   });

//   factory VideoStatistics.fromJson(Map<String, dynamic> json) =>
//       VideoStatistics(
//         viewCount: json["viewCount"],
//         likeCount: json["likeCount"],
//         favoriteCount: json["favoriteCount"],
//         commentCount: json["commentCount"],
//       );

//   Map<String, dynamic> toJson() => {
//         "viewCount": viewCount,
//         "likeCount": likeCount,
//         "favoriteCount": favoriteCount,
//         "commentCount": commentCount,
//       };
// }

// ChannelResponse channelFromJson(String str) =>
//     ChannelResponse.fromJson(json.decode(str));

// String channelToJson(ChannelResponse data) => json.encode(data.toJson());

// class ChannelResponse {
//   String kind;
//   String etag;
//   PageInfo pageInfo;
//   List<Channel> items;

//   ChannelResponse({
//     required this.kind,
//     required this.etag,
//     required this.pageInfo,
//     required this.items,
//   });

//   factory ChannelResponse.fromJson(Map<String, dynamic> json) =>
//       ChannelResponse(
//         kind: json["kind"],
//         etag: json["etag"],
//         pageInfo: PageInfo.fromJson(json["pageInfo"]),
//         items:
//             List<Channel>.from(json["items"].map((x) => Channel.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "kind": kind,
//         "etag": etag,
//         "pageInfo": pageInfo.toJson(),
//         "items": List<dynamic>.from(items.map((x) => x.toJson())),
//       };
// }

// class Channel {
//   String kind;
//   String etag;
//   String id;
//   ChannelSnippet snippet;
//   ChannelStatistics statistics;

//   Channel({
//     required this.kind,
//     required this.etag,
//     required this.id,
//     required this.snippet,
//     required this.statistics,
//   });

//   factory Channel.fromJson(Map<String, dynamic> json) => Channel(
//         kind: json["kind"],
//         etag: json["etag"],
//         id: json["id"],
//         snippet: ChannelSnippet.fromJson(json["snippet"]),
//         statistics: ChannelStatistics.fromJson(json["statistics"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "kind": kind,
//         "etag": etag,
//         "id": id,
//         "snippet": snippet.toJson(),
//         "statistics": statistics.toJson(),
//       };
// }

// class ChannelSnippet {
//   String title;
//   String description;
//   DateTime publishedAt;
//   ChannelThumbnails thumbnails;
//   Localized localized;

//   ChannelSnippet({
//     required this.title,
//     required this.description,
//     required this.publishedAt,
//     required this.thumbnails,
//     required this.localized,
//   });

//   factory ChannelSnippet.fromJson(Map<String, dynamic> json) => ChannelSnippet(
//         title: json["title"],
//         description: json["description"],
//         publishedAt: DateTime.parse(json["publishedAt"]),
//         thumbnails: ChannelThumbnails.fromJson(json["thumbnails"]),
//         localized: Localized.fromJson(json["localized"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "title": title,
//         "description": description,
//         "publishedAt": publishedAt.toIso8601String(),
//         "thumbnails": thumbnails.toJson(),
//         "localized": localized.toJson(),
//       };
// }

// class ChannelThumbnails {
//   Thumbnail thumbnailsDefault;
//   Thumbnail medium;
//   Thumbnail high;

//   ChannelThumbnails({
//     required this.thumbnailsDefault,
//     required this.medium,
//     required this.high,
//   });

//   factory ChannelThumbnails.fromJson(Map<String, dynamic> json) =>
//       ChannelThumbnails(
//         thumbnailsDefault: Thumbnail.fromJson(json["default"]),
//         medium: Thumbnail.fromJson(json["medium"]),
//         high: Thumbnail.fromJson(json["high"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "default": thumbnailsDefault.toJson(),
//         "medium": medium.toJson(),
//         "high": high.toJson(),
//       };
// }

// class ChannelStatistics {
//   String viewCount;
//   String subscriberCount;
//   bool hiddenSubscriberCount;
//   String videoCount;

//   ChannelStatistics({
//     required this.viewCount,
//     required this.subscriberCount,
//     required this.hiddenSubscriberCount,
//     required this.videoCount,
//   });

//   factory ChannelStatistics.fromJson(Map<String, dynamic> json) =>
//       ChannelStatistics(
//         viewCount: json["viewCount"],
//         subscriberCount: json["subscriberCount"],
//         hiddenSubscriberCount: json["hiddenSubscriberCount"],
//         videoCount: json["videoCount"],
//       );

//   Map<String, dynamic> toJson() => {
//         "viewCount": viewCount,
//         "subscriberCount": subscriberCount,
//         "hiddenSubscriberCount": hiddenSubscriberCount,
//         "videoCount": videoCount,
//       };
// }

// class PageInfo {
//   int totalResults;
//   int resultsPerPage;

//   PageInfo({
//     required this.totalResults,
//     required this.resultsPerPage,
//   });

//   factory PageInfo.fromJson(Map<String, dynamic> json) => PageInfo(
//         totalResults: json["totalResults"],
//         resultsPerPage: json["resultsPerPage"],
//       );

//   Map<String, dynamic> toJson() => {
//         "totalResults": totalResults,
//         "resultsPerPage": resultsPerPage,
//       };
// }
