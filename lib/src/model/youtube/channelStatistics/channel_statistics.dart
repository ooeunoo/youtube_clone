import 'package:freezed_annotation/freezed_annotation.dart';

part 'channel_statistics.freezed.dart';
part 'channel_statistics.g.dart';

@freezed
class ChannelStatistics  with _$ChannelStatistics{
  factory ChannelStatistics({
    required String viewCount,
    required String subscriberCount,
    required bool hiddenSubscriberCount,
    required String videoCount,
  }) = _ChannelStatistics;

  factory ChannelStatistics.fromJson(Map<String, dynamic> json) =>
      _$ChannelStatisticsFromJson(json);
}
