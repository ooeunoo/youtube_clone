// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_snippet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChannelSnippetImpl _$$ChannelSnippetImplFromJson(Map<String, dynamic> json) =>
    _$ChannelSnippetImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      publishedAt: DateTime.parse(json['publishedAt'] as String),
      thumbnails: ChannelThumbnails.fromJson(
          json['thumbnails'] as Map<String, dynamic>),
      localized: Localized.fromJson(json['localized'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChannelSnippetImplToJson(
        _$ChannelSnippetImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'publishedAt': instance.publishedAt.toIso8601String(),
      'thumbnails': instance.thumbnails,
      'localized': instance.localized,
    };
