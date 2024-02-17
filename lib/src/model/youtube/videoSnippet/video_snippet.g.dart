// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_snippet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VideoSnippetImpl _$$VideoSnippetImplFromJson(Map<String, dynamic> json) =>
    _$VideoSnippetImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      publishedAt: DateTime.parse(json['publishedAt'] as String),
      channelId: json['channelId'] as String,
      thumbnails:
          VideoThumbnails.fromJson(json['thumbnails'] as Map<String, dynamic>),
      channelTitle: json['channelTitle'] as String,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      categoryId: json['categoryId'] as String,
      liveBroadcastContent: json['liveBroadcastContent'] as String,
      localized: Localized.fromJson(json['localized'] as Map<String, dynamic>),
      defaultAudioLanguage: json['defaultAudioLanguage'] as String? ?? "",
      defaultLanguage: json['defaultLanguage'] as String? ?? "",
    );

Map<String, dynamic> _$$VideoSnippetImplToJson(_$VideoSnippetImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'publishedAt': instance.publishedAt.toIso8601String(),
      'channelId': instance.channelId,
      'thumbnails': instance.thumbnails,
      'channelTitle': instance.channelTitle,
      'tags': instance.tags,
      'categoryId': instance.categoryId,
      'liveBroadcastContent': instance.liveBroadcastContent,
      'localized': instance.localized,
      'defaultAudioLanguage': instance.defaultAudioLanguage,
      'defaultLanguage': instance.defaultLanguage,
    };
