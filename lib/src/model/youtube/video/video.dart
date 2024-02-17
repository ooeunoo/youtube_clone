import 'package:clone_flutter_youtube/src/model/youtube/videoSnippet/video_snippet.dart';
import 'package:clone_flutter_youtube/src/model/youtube/videoStatistics/video_statistics.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'video.freezed.dart';
part 'video.g.dart';

@freezed
class Video with _$Video {
  factory Video({
    required String kind,
    required String etag,
    required String id,
    required VideoSnippet snippet,
    required VideoStatistics statistics,
  }) = _Video;

  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);
}
