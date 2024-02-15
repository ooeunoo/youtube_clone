// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'channel_snippet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChannelSnippet _$ChannelSnippetFromJson(Map<String, dynamic> json) {
  return _ChannelSnippet.fromJson(json);
}

/// @nodoc
mixin _$ChannelSnippet {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get publishedAt => throw _privateConstructorUsedError;
  ChannelThumbnails get thumbnails => throw _privateConstructorUsedError;
  Localized get localized => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChannelSnippetCopyWith<ChannelSnippet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelSnippetCopyWith<$Res> {
  factory $ChannelSnippetCopyWith(
          ChannelSnippet value, $Res Function(ChannelSnippet) then) =
      _$ChannelSnippetCopyWithImpl<$Res, ChannelSnippet>;
  @useResult
  $Res call(
      {String title,
      String description,
      DateTime publishedAt,
      ChannelThumbnails thumbnails,
      Localized localized});

  $ChannelThumbnailsCopyWith<$Res> get thumbnails;
  $LocalizedCopyWith<$Res> get localized;
}

/// @nodoc
class _$ChannelSnippetCopyWithImpl<$Res, $Val extends ChannelSnippet>
    implements $ChannelSnippetCopyWith<$Res> {
  _$ChannelSnippetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? publishedAt = null,
    Object? thumbnails = null,
    Object? localized = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      thumbnails: null == thumbnails
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as ChannelThumbnails,
      localized: null == localized
          ? _value.localized
          : localized // ignore: cast_nullable_to_non_nullable
              as Localized,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChannelThumbnailsCopyWith<$Res> get thumbnails {
    return $ChannelThumbnailsCopyWith<$Res>(_value.thumbnails, (value) {
      return _then(_value.copyWith(thumbnails: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocalizedCopyWith<$Res> get localized {
    return $LocalizedCopyWith<$Res>(_value.localized, (value) {
      return _then(_value.copyWith(localized: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChannelSnippetImplCopyWith<$Res>
    implements $ChannelSnippetCopyWith<$Res> {
  factory _$$ChannelSnippetImplCopyWith(_$ChannelSnippetImpl value,
          $Res Function(_$ChannelSnippetImpl) then) =
      __$$ChannelSnippetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      DateTime publishedAt,
      ChannelThumbnails thumbnails,
      Localized localized});

  @override
  $ChannelThumbnailsCopyWith<$Res> get thumbnails;
  @override
  $LocalizedCopyWith<$Res> get localized;
}

/// @nodoc
class __$$ChannelSnippetImplCopyWithImpl<$Res>
    extends _$ChannelSnippetCopyWithImpl<$Res, _$ChannelSnippetImpl>
    implements _$$ChannelSnippetImplCopyWith<$Res> {
  __$$ChannelSnippetImplCopyWithImpl(
      _$ChannelSnippetImpl _value, $Res Function(_$ChannelSnippetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? publishedAt = null,
    Object? thumbnails = null,
    Object? localized = null,
  }) {
    return _then(_$ChannelSnippetImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      thumbnails: null == thumbnails
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as ChannelThumbnails,
      localized: null == localized
          ? _value.localized
          : localized // ignore: cast_nullable_to_non_nullable
              as Localized,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChannelSnippetImpl implements _ChannelSnippet {
  _$ChannelSnippetImpl(
      {required this.title,
      required this.description,
      required this.publishedAt,
      required this.thumbnails,
      required this.localized});

  factory _$ChannelSnippetImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChannelSnippetImplFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final DateTime publishedAt;
  @override
  final ChannelThumbnails thumbnails;
  @override
  final Localized localized;

  @override
  String toString() {
    return 'ChannelSnippet(title: $title, description: $description, publishedAt: $publishedAt, thumbnails: $thumbnails, localized: $localized)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChannelSnippetImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.thumbnails, thumbnails) ||
                other.thumbnails == thumbnails) &&
            (identical(other.localized, localized) ||
                other.localized == localized));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, description, publishedAt, thumbnails, localized);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChannelSnippetImplCopyWith<_$ChannelSnippetImpl> get copyWith =>
      __$$ChannelSnippetImplCopyWithImpl<_$ChannelSnippetImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChannelSnippetImplToJson(
      this,
    );
  }
}

abstract class _ChannelSnippet implements ChannelSnippet {
  factory _ChannelSnippet(
      {required final String title,
      required final String description,
      required final DateTime publishedAt,
      required final ChannelThumbnails thumbnails,
      required final Localized localized}) = _$ChannelSnippetImpl;

  factory _ChannelSnippet.fromJson(Map<String, dynamic> json) =
      _$ChannelSnippetImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  DateTime get publishedAt;
  @override
  ChannelThumbnails get thumbnails;
  @override
  Localized get localized;
  @override
  @JsonKey(ignore: true)
  _$$ChannelSnippetImplCopyWith<_$ChannelSnippetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
