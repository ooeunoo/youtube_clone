// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VideoListResponse _$VideoListResponseFromJson(Map<String, dynamic> json) {
  return _VideoListResponse.fromJson(json);
}

/// @nodoc
mixin _$VideoListResponse {
  String get kind => throw _privateConstructorUsedError;
  String get etag => throw _privateConstructorUsedError;
  List<Video>? get items => throw _privateConstructorUsedError;
  String get nextPageToken => throw _privateConstructorUsedError;
  PageInfo get pageInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoListResponseCopyWith<VideoListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoListResponseCopyWith<$Res> {
  factory $VideoListResponseCopyWith(
          VideoListResponse value, $Res Function(VideoListResponse) then) =
      _$VideoListResponseCopyWithImpl<$Res, VideoListResponse>;
  @useResult
  $Res call(
      {String kind,
      String etag,
      List<Video>? items,
      String nextPageToken,
      PageInfo pageInfo});

  $PageInfoCopyWith<$Res> get pageInfo;
}

/// @nodoc
class _$VideoListResponseCopyWithImpl<$Res, $Val extends VideoListResponse>
    implements $VideoListResponseCopyWith<$Res> {
  _$VideoListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? etag = null,
    Object? items = freezed,
    Object? nextPageToken = null,
    Object? pageInfo = null,
  }) {
    return _then(_value.copyWith(
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      etag: null == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Video>?,
      nextPageToken: null == nextPageToken
          ? _value.nextPageToken
          : nextPageToken // ignore: cast_nullable_to_non_nullable
              as String,
      pageInfo: null == pageInfo
          ? _value.pageInfo
          : pageInfo // ignore: cast_nullable_to_non_nullable
              as PageInfo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PageInfoCopyWith<$Res> get pageInfo {
    return $PageInfoCopyWith<$Res>(_value.pageInfo, (value) {
      return _then(_value.copyWith(pageInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VideoListResponseImplCopyWith<$Res>
    implements $VideoListResponseCopyWith<$Res> {
  factory _$$VideoListResponseImplCopyWith(_$VideoListResponseImpl value,
          $Res Function(_$VideoListResponseImpl) then) =
      __$$VideoListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String kind,
      String etag,
      List<Video>? items,
      String nextPageToken,
      PageInfo pageInfo});

  @override
  $PageInfoCopyWith<$Res> get pageInfo;
}

/// @nodoc
class __$$VideoListResponseImplCopyWithImpl<$Res>
    extends _$VideoListResponseCopyWithImpl<$Res, _$VideoListResponseImpl>
    implements _$$VideoListResponseImplCopyWith<$Res> {
  __$$VideoListResponseImplCopyWithImpl(_$VideoListResponseImpl _value,
      $Res Function(_$VideoListResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? etag = null,
    Object? items = freezed,
    Object? nextPageToken = null,
    Object? pageInfo = null,
  }) {
    return _then(_$VideoListResponseImpl(
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      etag: null == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Video>?,
      nextPageToken: null == nextPageToken
          ? _value.nextPageToken
          : nextPageToken // ignore: cast_nullable_to_non_nullable
              as String,
      pageInfo: null == pageInfo
          ? _value.pageInfo
          : pageInfo // ignore: cast_nullable_to_non_nullable
              as PageInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoListResponseImpl implements _VideoListResponse {
  _$VideoListResponseImpl(
      {required this.kind,
      required this.etag,
      final List<Video>? items = null,
      required this.nextPageToken,
      required this.pageInfo})
      : _items = items;

  factory _$VideoListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoListResponseImplFromJson(json);

  @override
  final String kind;
  @override
  final String etag;
  final List<Video>? _items;
  @override
  @JsonKey()
  List<Video>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String nextPageToken;
  @override
  final PageInfo pageInfo;

  @override
  String toString() {
    return 'VideoListResponse(kind: $kind, etag: $etag, items: $items, nextPageToken: $nextPageToken, pageInfo: $pageInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoListResponseImpl &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.etag, etag) || other.etag == etag) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.nextPageToken, nextPageToken) ||
                other.nextPageToken == nextPageToken) &&
            (identical(other.pageInfo, pageInfo) ||
                other.pageInfo == pageInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, kind, etag,
      const DeepCollectionEquality().hash(_items), nextPageToken, pageInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoListResponseImplCopyWith<_$VideoListResponseImpl> get copyWith =>
      __$$VideoListResponseImplCopyWithImpl<_$VideoListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoListResponseImplToJson(
      this,
    );
  }
}

abstract class _VideoListResponse implements VideoListResponse {
  factory _VideoListResponse(
      {required final String kind,
      required final String etag,
      final List<Video>? items,
      required final String nextPageToken,
      required final PageInfo pageInfo}) = _$VideoListResponseImpl;

  factory _VideoListResponse.fromJson(Map<String, dynamic> json) =
      _$VideoListResponseImpl.fromJson;

  @override
  String get kind;
  @override
  String get etag;
  @override
  List<Video>? get items;
  @override
  String get nextPageToken;
  @override
  PageInfo get pageInfo;
  @override
  @JsonKey(ignore: true)
  _$$VideoListResponseImplCopyWith<_$VideoListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
