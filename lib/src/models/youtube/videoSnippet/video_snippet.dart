import 'package:clone_flutter_youtube/src/models/youtube/localized/localized.dart';
import 'package:clone_flutter_youtube/src/models/youtube/videoThumbnails/video_thumbnails.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_snippet.freezed.dart';
part 'video_snippet.g.dart';

@freezed
class VideoSnippet with _$VideoSnippet {
  factory VideoSnippet({
    required String title,
    required String description,
    required DateTime publishedAt,
    required String channelId,
    required VideoThumbnails thumbnails,
    required String channelTitle,
    @Default([]) List<String>? tags,
    required String categoryId,
    required String liveBroadcastContent,
    required Localized localized,
    @Default("") String defaultAudioLanguage,
    @Default("") String defaultLanguage,
  }) = _VideoSnippet;

  factory VideoSnippet.fromJson(Map<String, dynamic> json) =>
      _$VideoSnippetFromJson(json);
}
