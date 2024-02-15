// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_thumbnails.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VideoThumbnailsImpl _$$VideoThumbnailsImplFromJson(
        Map<String, dynamic> json) =>
    _$VideoThumbnailsImpl(
      medium: Thumbnail.fromJson(json['medium'] as Map<String, dynamic>),
      high: Thumbnail.fromJson(json['high'] as Map<String, dynamic>),
      standard: Thumbnail.fromJson(json['standard'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VideoThumbnailsImplToJson(
        _$VideoThumbnailsImpl instance) =>
    <String, dynamic>{
      'medium': instance.medium,
      'high': instance.high,
      'standard': instance.standard,
    };
