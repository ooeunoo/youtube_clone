import 'package:clone_flutter_youtube/src/models/youtube/pageInfo/page_info.dart';
import 'package:clone_flutter_youtube/src/models/youtube/video/video.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_list_response.freezed.dart';
part 'video_list_response.g.dart';

@freezed
class VideoListResponse with _$VideoListResponse {
  factory VideoListResponse({
    required String kind,
    required String etag,
    @Default(null) List<Video>? items,
    required String nextPageToken,
    required PageInfo pageInfo,
  }) = _VideoListResponse;

  factory VideoListResponse.fromJson(Map<String, dynamic> json) =>
      _$VideoListResponseFromJson(json);
}
