import 'package:clone_flutter_youtube/src/models/youtube/thumbnail/thumbnail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'channel_thumbnails.freezed.dart';
part 'channel_thumbnails.g.dart';

@freezed
class ChannelThumbnails with _$ChannelThumbnails {
  factory ChannelThumbnails({
    required Thumbnail medium,
    required Thumbnail high,
  }) = _ChannelThumbnails;

  factory ChannelThumbnails.fromJson(Map<String, dynamic> json) =>
      _$ChannelThumbnailsFromJson(json);
}
