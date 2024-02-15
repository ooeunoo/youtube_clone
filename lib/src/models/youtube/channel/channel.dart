import 'package:clone_flutter_youtube/src/models/youtube/channelSnippet/channel_snippet.dart';
import 'package:clone_flutter_youtube/src/models/youtube/channelStatistics/channel_statistics.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'channel.freezed.dart';
part 'channel.g.dart';

@freezed
class Channel  with _$Channel {
  factory Channel({
    required String kind,
    required String etag,
    required String id,
    required ChannelSnippet snippet,
    required ChannelStatistics statistics,
  }) = _Channel;

  factory Channel.fromJson(Map<String, dynamic> json) =>
      _$ChannelFromJson(json);
}
