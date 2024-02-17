// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VideoListResponseImpl _$$VideoListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$VideoListResponseImpl(
      kind: json['kind'] as String,
      etag: json['etag'] as String,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => Video.fromJson(e as Map<String, dynamic>))
              .toList() ??
          null,
      nextPageToken: json['nextPageToken'] as String,
      pageInfo: PageInfo.fromJson(json['pageInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VideoListResponseImplToJson(
        _$VideoListResponseImpl instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'etag': instance.etag,
      'items': instance.items,
      'nextPageToken': instance.nextPageToken,
      'pageInfo': instance.pageInfo,
    };
