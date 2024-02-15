import 'package:clone_flutter_youtube/src/models/youtube/channel/channel.dart';
import 'package:clone_flutter_youtube/src/models/youtube/pageInfo/page_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'channel_response.freezed.dart';
part 'channel_response.g.dart';

@freezed
class ChannelResponse  with _$ChannelResponse{
  factory ChannelResponse({
    required String kind,
    required String etag,
    required PageInfo pageInfo,
    required List<Channel> items,
  }) = _ChannelResponse;

  factory ChannelResponse.fromJson(Map<String, dynamic> json) =>
      _$ChannelResponseFromJson(json);
}
