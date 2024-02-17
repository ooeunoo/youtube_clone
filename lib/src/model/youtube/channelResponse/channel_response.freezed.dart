// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'channel_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChannelResponse _$ChannelResponseFromJson(Map<String, dynamic> json) {
  return _ChannelResponse.fromJson(json);
}

/// @nodoc
mixin _$ChannelResponse {
  String get kind => throw _privateConstructorUsedError;
  String get etag => throw _privateConstructorUsedError;
  PageInfo get pageInfo => throw _privateConstructorUsedError;
  List<Channel> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChannelResponseCopyWith<ChannelResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelResponseCopyWith<$Res> {
  factory $ChannelResponseCopyWith(
          ChannelResponse value, $Res Function(ChannelResponse) then) =
      _$ChannelResponseCopyWithImpl<$Res, ChannelResponse>;
  @useResult
  $Res call({String kind, String etag, PageInfo pageInfo, List<Channel> items});

  $PageInfoCopyWith<$Res> get pageInfo;
}

/// @nodoc
class _$ChannelResponseCopyWithImpl<$Res, $Val extends ChannelResponse>
    implements $ChannelResponseCopyWith<$Res> {
  _$ChannelResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? etag = null,
    Object? pageInfo = null,
    Object? items = null,
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
      pageInfo: null == pageInfo
          ? _value.pageInfo
          : pageInfo // ignore: cast_nullable_to_non_nullable
              as PageInfo,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Channel>,
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
abstract class _$$ChannelResponseImplCopyWith<$Res>
    implements $ChannelResponseCopyWith<$Res> {
  factory _$$ChannelResponseImplCopyWith(_$ChannelResponseImpl value,
          $Res Function(_$ChannelResponseImpl) then) =
      __$$ChannelResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String kind, String etag, PageInfo pageInfo, List<Channel> items});

  @override
  $PageInfoCopyWith<$Res> get pageInfo;
}

/// @nodoc
class __$$ChannelResponseImplCopyWithImpl<$Res>
    extends _$ChannelResponseCopyWithImpl<$Res, _$ChannelResponseImpl>
    implements _$$ChannelResponseImplCopyWith<$Res> {
  __$$ChannelResponseImplCopyWithImpl(
      _$ChannelResponseImpl _value, $Res Function(_$ChannelResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? etag = null,
    Object? pageInfo = null,
    Object? items = null,
  }) {
    return _then(_$ChannelResponseImpl(
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      etag: null == etag
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String,
      pageInfo: null == pageInfo
          ? _value.pageInfo
          : pageInfo // ignore: cast_nullable_to_non_nullable
              as PageInfo,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Channel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChannelResponseImpl implements _ChannelResponse {
  _$ChannelResponseImpl(
      {required this.kind,
      required this.etag,
      required this.pageInfo,
      required final List<Channel> items})
      : _items = items;

  factory _$ChannelResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChannelResponseImplFromJson(json);

  @override
  final String kind;
  @override
  final String etag;
  @override
  final PageInfo pageInfo;
  final List<Channel> _items;
  @override
  List<Channel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'ChannelResponse(kind: $kind, etag: $etag, pageInfo: $pageInfo, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChannelResponseImpl &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.etag, etag) || other.etag == etag) &&
            (identical(other.pageInfo, pageInfo) ||
                other.pageInfo == pageInfo) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, kind, etag, pageInfo,
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChannelResponseImplCopyWith<_$ChannelResponseImpl> get copyWith =>
      __$$ChannelResponseImplCopyWithImpl<_$ChannelResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChannelResponseImplToJson(
      this,
    );
  }
}

abstract class _ChannelResponse implements ChannelResponse {
  factory _ChannelResponse(
      {required final String kind,
      required final String etag,
      required final PageInfo pageInfo,
      required final List<Channel> items}) = _$ChannelResponseImpl;

  factory _ChannelResponse.fromJson(Map<String, dynamic> json) =
      _$ChannelResponseImpl.fromJson;

  @override
  String get kind;
  @override
  String get etag;
  @override
  PageInfo get pageInfo;
  @override
  List<Channel> get items;
  @override
  @JsonKey(ignore: true)
  _$$ChannelResponseImplCopyWith<_$ChannelResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
