// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChannelResponseImpl _$$ChannelResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ChannelResponseImpl(
      kind: json['kind'] as String,
      etag: json['etag'] as String,
      pageInfo: PageInfo.fromJson(json['pageInfo'] as Map<String, dynamic>),
      items: (json['items'] as List<dynamic>)
          .map((e) => Channel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ChannelResponseImplToJson(
        _$ChannelResponseImpl instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'etag': instance.etag,
      'pageInfo': instance.pageInfo,
      'items': instance.items,
    };
