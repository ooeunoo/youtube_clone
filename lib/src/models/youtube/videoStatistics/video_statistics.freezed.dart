// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_statistics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VideoStatistics _$VideoStatisticsFromJson(Map<String, dynamic> json) {
  return _VideoStatistics.fromJson(json);
}

/// @nodoc
mixin _$VideoStatistics {
  String get viewCount => throw _privateConstructorUsedError;
  String get likeCount => throw _privateConstructorUsedError;
  String get favoriteCount => throw _privateConstructorUsedError;
  String get commentCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoStatisticsCopyWith<VideoStatistics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoStatisticsCopyWith<$Res> {
  factory $VideoStatisticsCopyWith(
          VideoStatistics value, $Res Function(VideoStatistics) then) =
      _$VideoStatisticsCopyWithImpl<$Res, VideoStatistics>;
  @useResult
  $Res call(
      {String viewCount,
      String likeCount,
      String favoriteCount,
      String commentCount});
}

/// @nodoc
class _$VideoStatisticsCopyWithImpl<$Res, $Val extends VideoStatistics>
    implements $VideoStatisticsCopyWith<$Res> {
  _$VideoStatisticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewCount = null,
    Object? likeCount = null,
    Object? favoriteCount = null,
    Object? commentCount = null,
  }) {
    return _then(_value.copyWith(
      viewCount: null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as String,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as String,
      favoriteCount: null == favoriteCount
          ? _value.favoriteCount
          : favoriteCount // ignore: cast_nullable_to_non_nullable
              as String,
      commentCount: null == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoStatisticsImplCopyWith<$Res>
    implements $VideoStatisticsCopyWith<$Res> {
  factory _$$VideoStatisticsImplCopyWith(_$VideoStatisticsImpl value,
          $Res Function(_$VideoStatisticsImpl) then) =
      __$$VideoStatisticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String viewCount,
      String likeCount,
      String favoriteCount,
      String commentCount});
}

/// @nodoc
class __$$VideoStatisticsImplCopyWithImpl<$Res>
    extends _$VideoStatisticsCopyWithImpl<$Res, _$VideoStatisticsImpl>
    implements _$$VideoStatisticsImplCopyWith<$Res> {
  __$$VideoStatisticsImplCopyWithImpl(
      _$VideoStatisticsImpl _value, $Res Function(_$VideoStatisticsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewCount = null,
    Object? likeCount = null,
    Object? favoriteCount = null,
    Object? commentCount = null,
  }) {
    return _then(_$VideoStatisticsImpl(
      viewCount: null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as String,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as String,
      favoriteCount: null == favoriteCount
          ? _value.favoriteCount
          : favoriteCount // ignore: cast_nullable_to_non_nullable
              as String,
      commentCount: null == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoStatisticsImpl implements _VideoStatistics {
  _$VideoStatisticsImpl(
      {required this.viewCount,
      required this.likeCount,
      required this.favoriteCount,
      required this.commentCount});

  factory _$VideoStatisticsImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoStatisticsImplFromJson(json);

  @override
  final String viewCount;
  @override
  final String likeCount;
  @override
  final String favoriteCount;
  @override
  final String commentCount;

  @override
  String toString() {
    return 'VideoStatistics(viewCount: $viewCount, likeCount: $likeCount, favoriteCount: $favoriteCount, commentCount: $commentCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoStatisticsImpl &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.favoriteCount, favoriteCount) ||
                other.favoriteCount == favoriteCount) &&
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, viewCount, likeCount, favoriteCount, commentCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoStatisticsImplCopyWith<_$VideoStatisticsImpl> get copyWith =>
      __$$VideoStatisticsImplCopyWithImpl<_$VideoStatisticsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoStatisticsImplToJson(
      this,
    );
  }
}

abstract class _VideoStatistics implements VideoStatistics {
  factory _VideoStatistics(
      {required final String viewCount,
      required final String likeCount,
      required final String favoriteCount,
      required final String commentCount}) = _$VideoStatisticsImpl;

  factory _VideoStatistics.fromJson(Map<String, dynamic> json) =
      _$VideoStatisticsImpl.fromJson;

  @override
  String get viewCount;
  @override
  String get likeCount;
  @override
  String get favoriteCount;
  @override
  String get commentCount;
  @override
  @JsonKey(ignore: true)
  _$$VideoStatisticsImplCopyWith<_$VideoStatisticsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
