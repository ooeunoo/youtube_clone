import 'package:clone_flutter_youtube/src/model/youtube/channelThumbnails/channel_thumbnails.dart';
import 'package:clone_flutter_youtube/src/model/youtube/localized/localized.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'channel_snippet.freezed.dart';
part 'channel_snippet.g.dart';

@freezed
class ChannelSnippet with _$ChannelSnippet {
  factory ChannelSnippet({
    required String title,
    required String description,
    required DateTime publishedAt,
    required ChannelThumbnails thumbnails,
    required Localized localized,
  }) = _ChannelSnippet;

  factory ChannelSnippet.fromJson(Map<String, dynamic> json) =>
      _$ChannelSnippetFromJson(json);
}
