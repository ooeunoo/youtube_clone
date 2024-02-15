// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_statistics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChannelStatisticsImpl _$$ChannelStatisticsImplFromJson(
        Map<String, dynamic> json) =>
    _$ChannelStatisticsImpl(
      viewCount: json['viewCount'] as String,
      subscriberCount: json['subscriberCount'] as String,
      hiddenSubscriberCount: json['hiddenSubscriberCount'] as bool,
      videoCount: json['videoCount'] as String,
    );

Map<String, dynamic> _$$ChannelStatisticsImplToJson(
        _$ChannelStatisticsImpl instance) =>
    <String, dynamic>{
      'viewCount': instance.viewCount,
      'subscriberCount': instance.subscriberCount,
      'hiddenSubscriberCount': instance.hiddenSubscriberCount,
      'videoCount': instance.videoCount,
    };
