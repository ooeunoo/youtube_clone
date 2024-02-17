// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'channel_thumbnails.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChannelThumbnails _$ChannelThumbnailsFromJson(Map<String, dynamic> json) {
  return _ChannelThumbnails.fromJson(json);
}

/// @nodoc
mixin _$ChannelThumbnails {
  Thumbnail get medium => throw _privateConstructorUsedError;
  Thumbnail get high => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChannelThumbnailsCopyWith<ChannelThumbnails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelThumbnailsCopyWith<$Res> {
  factory $ChannelThumbnailsCopyWith(
          ChannelThumbnails value, $Res Function(ChannelThumbnails) then) =
      _$ChannelThumbnailsCopyWithImpl<$Res, ChannelThumbnails>;
  @useResult
  $Res call({Thumbnail medium, Thumbnail high});

  $ThumbnailCopyWith<$Res> get medium;
  $ThumbnailCopyWith<$Res> get high;
}

/// @nodoc
class _$ChannelThumbnailsCopyWithImpl<$Res, $Val extends ChannelThumbnails>
    implements $ChannelThumbnailsCopyWith<$Res> {
  _$ChannelThumbnailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medium = null,
    Object? high = null,
  }) {
    return _then(_value.copyWith(
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as Thumbnail,
      high: null == high
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as Thumbnail,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ThumbnailCopyWith<$Res> get medium {
    return $ThumbnailCopyWith<$Res>(_value.medium, (value) {
      return _then(_value.copyWith(medium: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ThumbnailCopyWith<$Res> get high {
    return $ThumbnailCopyWith<$Res>(_value.high, (value) {
      return _then(_value.copyWith(high: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChannelThumbnailsImplCopyWith<$Res>
    implements $ChannelThumbnailsCopyWith<$Res> {
  factory _$$ChannelThumbnailsImplCopyWith(_$ChannelThumbnailsImpl value,
          $Res Function(_$ChannelThumbnailsImpl) then) =
      __$$ChannelThumbnailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Thumbnail medium, Thumbnail high});

  @override
  $ThumbnailCopyWith<$Res> get medium;
  @override
  $ThumbnailCopyWith<$Res> get high;
}

/// @nodoc
class __$$ChannelThumbnailsImplCopyWithImpl<$Res>
    extends _$ChannelThumbnailsCopyWithImpl<$Res, _$ChannelThumbnailsImpl>
    implements _$$ChannelThumbnailsImplCopyWith<$Res> {
  __$$ChannelThumbnailsImplCopyWithImpl(_$ChannelThumbnailsImpl _value,
      $Res Function(_$ChannelThumbnailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medium = null,
    Object? high = null,
  }) {
    return _then(_$ChannelThumbnailsImpl(
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as Thumbnail,
      high: null == high
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as Thumbnail,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChannelThumbnailsImpl implements _ChannelThumbnails {
  _$ChannelThumbnailsImpl({required this.medium, required this.high});

  factory _$ChannelThumbnailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChannelThumbnailsImplFromJson(json);

  @override
  final Thumbnail medium;
  @override
  final Thumbnail high;

  @override
  String toString() {
    return 'ChannelThumbnails(medium: $medium, high: $high)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChannelThumbnailsImpl &&
            (identical(other.medium, medium) || other.medium == medium) &&
            (identical(other.high, high) || other.high == high));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, medium, high);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChannelThumbnailsImplCopyWith<_$ChannelThumbnailsImpl> get copyWith =>
      __$$ChannelThumbnailsImplCopyWithImpl<_$ChannelThumbnailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChannelThumbnailsImplToJson(
      this,
    );
  }
}

abstract class _ChannelThumbnails implements ChannelThumbnails {
  factory _ChannelThumbnails(
      {required final Thumbnail medium,
      required final Thumbnail high}) = _$ChannelThumbnailsImpl;

  factory _ChannelThumbnails.fromJson(Map<String, dynamic> json) =
      _$ChannelThumbnailsImpl.fromJson;

  @override
  Thumbnail get medium;
  @override
  Thumbnail get high;
  @override
  @JsonKey(ignore: true)
  _$$ChannelThumbnailsImplCopyWith<_$ChannelThumbnailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
