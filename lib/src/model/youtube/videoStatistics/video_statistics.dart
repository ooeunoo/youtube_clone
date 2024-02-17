import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_statistics.freezed.dart';
part 'video_statistics.g.dart';

@freezed
class VideoStatistics  with _$VideoStatistics{
  factory VideoStatistics({
    required String viewCount,
    required String likeCount,
    required String favoriteCount,
    required String commentCount,
  }) = _VideoStatistics;

  factory VideoStatistics.fromJson(Map<String, dynamic> json) =>
      _$VideoStatisticsFromJson(json);
}
