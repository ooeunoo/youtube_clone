import 'package:clone_flutter_youtube/src/models/youtube/thumbnail/thumbnail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_thumbnails.freezed.dart';
part 'video_thumbnails.g.dart';

@freezed
class VideoThumbnails with _$VideoThumbnails {
  factory VideoThumbnails({
    required Thumbnail medium,
    required Thumbnail high,
    required Thumbnail standard,
  }) = _VideoThumbnails;

  factory VideoThumbnails.fromJson(Map<String, dynamic> json) =>
      _$VideoThumbnailsFromJson(json);
}
