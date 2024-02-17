// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_thumbnails.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VideoThumbnails _$VideoThumbnailsFromJson(Map<String, dynamic> json) {
  return _VideoThumbnails.fromJson(json);
}

/// @nodoc
mixin _$VideoThumbnails {
  Thumbnail get medium => throw _privateConstructorUsedError;
  Thumbnail get high => throw _privateConstructorUsedError;
  Thumbnail get standard => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoThumbnailsCopyWith<VideoThumbnails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoThumbnailsCopyWith<$Res> {
  factory $VideoThumbnailsCopyWith(
          VideoThumbnails value, $Res Function(VideoThumbnails) then) =
      _$VideoThumbnailsCopyWithImpl<$Res, VideoThumbnails>;
  @useResult
  $Res call({Thumbnail medium, Thumbnail high, Thumbnail standard});

  $ThumbnailCopyWith<$Res> get medium;
  $ThumbnailCopyWith<$Res> get high;
  $ThumbnailCopyWith<$Res> get standard;
}

/// @nodoc
class _$VideoThumbnailsCopyWithImpl<$Res, $Val extends VideoThumbnails>
    implements $VideoThumbnailsCopyWith<$Res> {
  _$VideoThumbnailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medium = null,
    Object? high = null,
    Object? standard = null,
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
      standard: null == standard
          ? _value.standard
          : standard // ignore: cast_nullable_to_non_nullable
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

  @override
  @pragma('vm:prefer-inline')
  $ThumbnailCopyWith<$Res> get standard {
    return $ThumbnailCopyWith<$Res>(_value.standard, (value) {
      return _then(_value.copyWith(standard: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VideoThumbnailsImplCopyWith<$Res>
    implements $VideoThumbnailsCopyWith<$Res> {
  factory _$$VideoThumbnailsImplCopyWith(_$VideoThumbnailsImpl value,
          $Res Function(_$VideoThumbnailsImpl) then) =
      __$$VideoThumbnailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Thumbnail medium, Thumbnail high, Thumbnail standard});

  @override
  $ThumbnailCopyWith<$Res> get medium;
  @override
  $ThumbnailCopyWith<$Res> get high;
  @override
  $ThumbnailCopyWith<$Res> get standard;
}

/// @nodoc
class __$$VideoThumbnailsImplCopyWithImpl<$Res>
    extends _$VideoThumbnailsCopyWithImpl<$Res, _$VideoThumbnailsImpl>
    implements _$$VideoThumbnailsImplCopyWith<$Res> {
  __$$VideoThumbnailsImplCopyWithImpl(
      _$VideoThumbnailsImpl _value, $Res Function(_$VideoThumbnailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medium = null,
    Object? high = null,
    Object? standard = null,
  }) {
    return _then(_$VideoThumbnailsImpl(
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as Thumbnail,
      high: null == high
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as Thumbnail,
      standard: null == standard
          ? _value.standard
          : standard // ignore: cast_nullable_to_non_nullable
              as Thumbnail,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoThumbnailsImpl implements _VideoThumbnails {
  _$VideoThumbnailsImpl(
      {required this.medium, required this.high, required this.standard});

  factory _$VideoThumbnailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoThumbnailsImplFromJson(json);

  @override
  final Thumbnail medium;
  @override
  final Thumbnail high;
  @override
  final Thumbnail standard;

  @override
  String toString() {
    return 'VideoThumbnails(medium: $medium, high: $high, standard: $standard)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoThumbnailsImpl &&
            (identical(other.medium, medium) || other.medium == medium) &&
            (identical(other.high, high) || other.high == high) &&
            (identical(other.standard, standard) ||
                other.standard == standard));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, medium, high, standard);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoThumbnailsImplCopyWith<_$VideoThumbnailsImpl> get copyWith =>
      __$$VideoThumbnailsImplCopyWithImpl<_$VideoThumbnailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoThumbnailsImplToJson(
      this,
    );
  }
}

abstract class _VideoThumbnails implements VideoThumbnails {
  factory _VideoThumbnails(
      {required final Thumbnail medium,
      required final Thumbnail high,
      required final Thumbnail standard}) = _$VideoThumbnailsImpl;

  factory _VideoThumbnails.fromJson(Map<String, dynamic> json) =
      _$VideoThumbnailsImpl.fromJson;

  @override
  Thumbnail get medium;
  @override
  Thumbnail get high;
  @override
  Thumbnail get standard;
  @override
  @JsonKey(ignore: true)
  _$$VideoThumbnailsImplCopyWith<_$VideoThumbnailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
