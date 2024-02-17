// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_thumbnails.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChannelThumbnailsImpl _$$ChannelThumbnailsImplFromJson(
        Map<String, dynamic> json) =>
    _$ChannelThumbnailsImpl(
      medium: Thumbnail.fromJson(json['medium'] as Map<String, dynamic>),
      high: Thumbnail.fromJson(json['high'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChannelThumbnailsImplToJson(
        _$ChannelThumbnailsImpl instance) =>
    <String, dynamic>{
      'medium': instance.medium,
      'high': instance.high,
    };
