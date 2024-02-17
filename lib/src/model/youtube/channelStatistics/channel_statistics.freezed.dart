// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'channel_statistics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChannelStatistics _$ChannelStatisticsFromJson(Map<String, dynamic> json) {
  return _ChannelStatistics.fromJson(json);
}

/// @nodoc
mixin _$ChannelStatistics {
  String get viewCount => throw _privateConstructorUsedError;
  String get subscriberCount => throw _privateConstructorUsedError;
  bool get hiddenSubscriberCount => throw _privateConstructorUsedError;
  String get videoCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChannelStatisticsCopyWith<ChannelStatistics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelStatisticsCopyWith<$Res> {
  factory $ChannelStatisticsCopyWith(
          ChannelStatistics value, $Res Function(ChannelStatistics) then) =
      _$ChannelStatisticsCopyWithImpl<$Res, ChannelStatistics>;
  @useResult
  $Res call(
      {String viewCount,
      String subscriberCount,
      bool hiddenSubscriberCount,
      String videoCount});
}

/// @nodoc
class _$ChannelStatisticsCopyWithImpl<$Res, $Val extends ChannelStatistics>
    implements $ChannelStatisticsCopyWith<$Res> {
  _$ChannelStatisticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewCount = null,
    Object? subscriberCount = null,
    Object? hiddenSubscriberCount = null,
    Object? videoCount = null,
  }) {
    return _then(_value.copyWith(
      viewCount: null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as String,
      subscriberCount: null == subscriberCount
          ? _value.subscriberCount
          : subscriberCount // ignore: cast_nullable_to_non_nullable
              as String,
      hiddenSubscriberCount: null == hiddenSubscriberCount
          ? _value.hiddenSubscriberCount
          : hiddenSubscriberCount // ignore: cast_nullable_to_non_nullable
              as bool,
      videoCount: null == videoCount
          ? _value.videoCount
          : videoCount // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChannelStatisticsImplCopyWith<$Res>
    implements $ChannelStatisticsCopyWith<$Res> {
  factory _$$ChannelStatisticsImplCopyWith(_$ChannelStatisticsImpl value,
          $Res Function(_$ChannelStatisticsImpl) then) =
      __$$ChannelStatisticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String viewCount,
      String subscriberCount,
      bool hiddenSubscriberCount,
      String videoCount});
}

/// @nodoc
class __$$ChannelStatisticsImplCopyWithImpl<$Res>
    extends _$ChannelStatisticsCopyWithImpl<$Res, _$ChannelStatisticsImpl>
    implements _$$ChannelStatisticsImplCopyWith<$Res> {
  __$$ChannelStatisticsImplCopyWithImpl(_$ChannelStatisticsImpl _value,
      $Res Function(_$ChannelStatisticsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewCount = null,
    Object? subscriberCount = null,
    Object? hiddenSubscriberCount = null,
    Object? videoCount = null,
  }) {
    return _then(_$ChannelStatisticsImpl(
      viewCount: null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as String,
      subscriberCount: null == subscriberCount
          ? _value.subscriberCount
          : subscriberCount // ignore: cast_nullable_to_non_nullable
              as String,
      hiddenSubscriberCount: null == hiddenSubscriberCount
          ? _value.hiddenSubscriberCount
          : hiddenSubscriberCount // ignore: cast_nullable_to_non_nullable
              as bool,
      videoCount: null == videoCount
          ? _value.videoCount
          : videoCount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChannelStatisticsImpl implements _ChannelStatistics {
  _$ChannelStatisticsImpl(
      {required this.viewCount,
      required this.subscriberCount,
      required this.hiddenSubscriberCount,
      required this.videoCount});

  factory _$ChannelStatisticsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChannelStatisticsImplFromJson(json);

  @override
  final String viewCount;
  @override
  final String subscriberCount;
  @override
  final bool hiddenSubscriberCount;
  @override
  final String videoCount;

  @override
  String toString() {
    return 'ChannelStatistics(viewCount: $viewCount, subscriberCount: $subscriberCount, hiddenSubscriberCount: $hiddenSubscriberCount, videoCount: $videoCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChannelStatisticsImpl &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount) &&
            (identical(other.subscriberCount, subscriberCount) ||
                other.subscriberCount == subscriberCount) &&
            (identical(other.hiddenSubscriberCount, hiddenSubscriberCount) ||
                other.hiddenSubscriberCount == hiddenSubscriberCount) &&
            (identical(other.videoCount, videoCount) ||
                other.videoCount == videoCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, viewCount, subscriberCount,
      hiddenSubscriberCount, videoCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChannelStatisticsImplCopyWith<_$ChannelStatisticsImpl> get copyWith =>
      __$$ChannelStatisticsImplCopyWithImpl<_$ChannelStatisticsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChannelStatisticsImplToJson(
      this,
    );
  }
}

abstract class _ChannelStatistics implements ChannelStatistics {
  factory _ChannelStatistics(
      {required final String viewCount,
      required final String subscriberCount,
      required final bool hiddenSubscriberCount,
      required final String videoCount}) = _$ChannelStatisticsImpl;

  factory _ChannelStatistics.fromJson(Map<String, dynamic> json) =
      _$ChannelStatisticsImpl.fromJson;

  @override
  String get viewCount;
  @override
  String get subscriberCount;
  @override
  bool get hiddenSubscriberCount;
  @override
  String get videoCount;
  @override
  @JsonKey(ignore: true)
  _$$ChannelStatisticsImplCopyWith<_$ChannelStatisticsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
