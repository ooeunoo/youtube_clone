// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_statistics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VideoStatisticsImpl _$$VideoStatisticsImplFromJson(
        Map<String, dynamic> json) =>
    _$VideoStatisticsImpl(
      viewCount: json['viewCount'] as String,
      likeCount: json['likeCount'] as String,
      favoriteCount: json['favoriteCount'] as String,
      commentCount: json['commentCount'] as String,
    );

Map<String, dynamic> _$$VideoStatisticsImplToJson(
        _$VideoStatisticsImpl instance) =>
    <String, dynamic>{
      'viewCount': instance.viewCount,
      'likeCount': instance.likeCount,
      'favoriteCount': instance.favoriteCount,
      'commentCount': instance.commentCount,
    };
