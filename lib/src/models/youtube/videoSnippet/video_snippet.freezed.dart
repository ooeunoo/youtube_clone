// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_snippet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VideoSnippet _$VideoSnippetFromJson(Map<String, dynamic> json) {
  return _VideoSnippet.fromJson(json);
}

/// @nodoc
mixin _$VideoSnippet {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get publishedAt => throw _privateConstructorUsedError;
  String get channelId => throw _privateConstructorUsedError;
  VideoThumbnails get thumbnails => throw _privateConstructorUsedError;
  String get channelTitle => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;
  String get categoryId => throw _privateConstructorUsedError;
  String get liveBroadcastContent => throw _privateConstructorUsedError;
  Localized get localized => throw _privateConstructorUsedError;
  String get defaultAudioLanguage => throw _privateConstructorUsedError;
  String get defaultLanguage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoSnippetCopyWith<VideoSnippet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoSnippetCopyWith<$Res> {
  factory $VideoSnippetCopyWith(
          VideoSnippet value, $Res Function(VideoSnippet) then) =
      _$VideoSnippetCopyWithImpl<$Res, VideoSnippet>;
  @useResult
  $Res call(
      {String title,
      String description,
      DateTime publishedAt,
      String channelId,
      VideoThumbnails thumbnails,
      String channelTitle,
      List<String>? tags,
      String categoryId,
      String liveBroadcastContent,
      Localized localized,
      String defaultAudioLanguage,
      String defaultLanguage});

  $VideoThumbnailsCopyWith<$Res> get thumbnails;
  $LocalizedCopyWith<$Res> get localized;
}

/// @nodoc
class _$VideoSnippetCopyWithImpl<$Res, $Val extends VideoSnippet>
    implements $VideoSnippetCopyWith<$Res> {
  _$VideoSnippetCopyWithImpl(this._value, this._then);

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
    Object? channelId = null,
    Object? thumbnails = null,
    Object? channelTitle = null,
    Object? tags = freezed,
    Object? categoryId = null,
    Object? liveBroadcastContent = null,
    Object? localized = null,
    Object? defaultAudioLanguage = null,
    Object? defaultLanguage = null,
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
      channelId: null == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnails: null == thumbnails
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as VideoThumbnails,
      channelTitle: null == channelTitle
          ? _value.channelTitle
          : channelTitle // ignore: cast_nullable_to_non_nullable
              as String,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      liveBroadcastContent: null == liveBroadcastContent
          ? _value.liveBroadcastContent
          : liveBroadcastContent // ignore: cast_nullable_to_non_nullable
              as String,
      localized: null == localized
          ? _value.localized
          : localized // ignore: cast_nullable_to_non_nullable
              as Localized,
      defaultAudioLanguage: null == defaultAudioLanguage
          ? _value.defaultAudioLanguage
          : defaultAudioLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      defaultLanguage: null == defaultLanguage
          ? _value.defaultLanguage
          : defaultLanguage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VideoThumbnailsCopyWith<$Res> get thumbnails {
    return $VideoThumbnailsCopyWith<$Res>(_value.thumbnails, (value) {
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
abstract class _$$VideoSnippetImplCopyWith<$Res>
    implements $VideoSnippetCopyWith<$Res> {
  factory _$$VideoSnippetImplCopyWith(
          _$VideoSnippetImpl value, $Res Function(_$VideoSnippetImpl) then) =
      __$$VideoSnippetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      DateTime publishedAt,
      String channelId,
      VideoThumbnails thumbnails,
      String channelTitle,
      List<String>? tags,
      String categoryId,
      String liveBroadcastContent,
      Localized localized,
      String defaultAudioLanguage,
      String defaultLanguage});

  @override
  $VideoThumbnailsCopyWith<$Res> get thumbnails;
  @override
  $LocalizedCopyWith<$Res> get localized;
}

/// @nodoc
class __$$VideoSnippetImplCopyWithImpl<$Res>
    extends _$VideoSnippetCopyWithImpl<$Res, _$VideoSnippetImpl>
    implements _$$VideoSnippetImplCopyWith<$Res> {
  __$$VideoSnippetImplCopyWithImpl(
      _$VideoSnippetImpl _value, $Res Function(_$VideoSnippetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? publishedAt = null,
    Object? channelId = null,
    Object? thumbnails = null,
    Object? channelTitle = null,
    Object? tags = freezed,
    Object? categoryId = null,
    Object? liveBroadcastContent = null,
    Object? localized = null,
    Object? defaultAudioLanguage = null,
    Object? defaultLanguage = null,
  }) {
    return _then(_$VideoSnippetImpl(
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
      channelId: null == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnails: null == thumbnails
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as VideoThumbnails,
      channelTitle: null == channelTitle
          ? _value.channelTitle
          : channelTitle // ignore: cast_nullable_to_non_nullable
              as String,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      liveBroadcastContent: null == liveBroadcastContent
          ? _value.liveBroadcastContent
          : liveBroadcastContent // ignore: cast_nullable_to_non_nullable
              as String,
      localized: null == localized
          ? _value.localized
          : localized // ignore: cast_nullable_to_non_nullable
              as Localized,
      defaultAudioLanguage: null == defaultAudioLanguage
          ? _value.defaultAudioLanguage
          : defaultAudioLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      defaultLanguage: null == defaultLanguage
          ? _value.defaultLanguage
          : defaultLanguage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoSnippetImpl implements _VideoSnippet {
  _$VideoSnippetImpl(
      {required this.title,
      required this.description,
      required this.publishedAt,
      required this.channelId,
      required this.thumbnails,
      required this.channelTitle,
      final List<String>? tags = const [],
      required this.categoryId,
      required this.liveBroadcastContent,
      required this.localized,
      this.defaultAudioLanguage = "",
      this.defaultLanguage = ""})
      : _tags = tags;

  factory _$VideoSnippetImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoSnippetImplFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final DateTime publishedAt;
  @override
  final String channelId;
  @override
  final VideoThumbnails thumbnails;
  @override
  final String channelTitle;
  final List<String>? _tags;
  @override
  @JsonKey()
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String categoryId;
  @override
  final String liveBroadcastContent;
  @override
  final Localized localized;
  @override
  @JsonKey()
  final String defaultAudioLanguage;
  @override
  @JsonKey()
  final String defaultLanguage;

  @override
  String toString() {
    return 'VideoSnippet(title: $title, description: $description, publishedAt: $publishedAt, channelId: $channelId, thumbnails: $thumbnails, channelTitle: $channelTitle, tags: $tags, categoryId: $categoryId, liveBroadcastContent: $liveBroadcastContent, localized: $localized, defaultAudioLanguage: $defaultAudioLanguage, defaultLanguage: $defaultLanguage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoSnippetImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId) &&
            (identical(other.thumbnails, thumbnails) ||
                other.thumbnails == thumbnails) &&
            (identical(other.channelTitle, channelTitle) ||
                other.channelTitle == channelTitle) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.liveBroadcastContent, liveBroadcastContent) ||
                other.liveBroadcastContent == liveBroadcastContent) &&
            (identical(other.localized, localized) ||
                other.localized == localized) &&
            (identical(other.defaultAudioLanguage, defaultAudioLanguage) ||
                other.defaultAudioLanguage == defaultAudioLanguage) &&
            (identical(other.defaultLanguage, defaultLanguage) ||
                other.defaultLanguage == defaultLanguage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      publishedAt,
      channelId,
      thumbnails,
      channelTitle,
      const DeepCollectionEquality().hash(_tags),
      categoryId,
      liveBroadcastContent,
      localized,
      defaultAudioLanguage,
      defaultLanguage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoSnippetImplCopyWith<_$VideoSnippetImpl> get copyWith =>
      __$$VideoSnippetImplCopyWithImpl<_$VideoSnippetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoSnippetImplToJson(
      this,
    );
  }
}

abstract class _VideoSnippet implements VideoSnippet {
  factory _VideoSnippet(
      {required final String title,
      required final String description,
      required final DateTime publishedAt,
      required final String channelId,
      required final VideoThumbnails thumbnails,
      required final String channelTitle,
      final List<String>? tags,
      required final String categoryId,
      required final String liveBroadcastContent,
      required final Localized localized,
      final String defaultAudioLanguage,
      final String defaultLanguage}) = _$VideoSnippetImpl;

  factory _VideoSnippet.fromJson(Map<String, dynamic> json) =
      _$VideoSnippetImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  DateTime get publishedAt;
  @override
  String get channelId;
  @override
  VideoThumbnails get thumbnails;
  @override
  String get channelTitle;
  @override
  List<String>? get tags;
  @override
  String get categoryId;
  @override
  String get liveBroadcastContent;
  @override
  Localized get localized;
  @override
  String get defaultAudioLanguage;
  @override
  String get defaultLanguage;
  @override
  @JsonKey(ignore: true)
  _$$VideoSnippetImplCopyWith<_$VideoSnippetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
