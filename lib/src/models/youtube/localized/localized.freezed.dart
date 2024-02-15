// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'localized.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Localized _$LocalizedFromJson(Map<String, dynamic> json) {
  return _Localized.fromJson(json);
}

/// @nodoc
mixin _$Localized {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocalizedCopyWith<Localized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalizedCopyWith<$Res> {
  factory $LocalizedCopyWith(Localized value, $Res Function(Localized) then) =
      _$LocalizedCopyWithImpl<$Res, Localized>;
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class _$LocalizedCopyWithImpl<$Res, $Val extends Localized>
    implements $LocalizedCopyWith<$Res> {
  _$LocalizedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocalizedImplCopyWith<$Res>
    implements $LocalizedCopyWith<$Res> {
  factory _$$LocalizedImplCopyWith(
          _$LocalizedImpl value, $Res Function(_$LocalizedImpl) then) =
      __$$LocalizedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class __$$LocalizedImplCopyWithImpl<$Res>
    extends _$LocalizedCopyWithImpl<$Res, _$LocalizedImpl>
    implements _$$LocalizedImplCopyWith<$Res> {
  __$$LocalizedImplCopyWithImpl(
      _$LocalizedImpl _value, $Res Function(_$LocalizedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$LocalizedImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocalizedImpl implements _Localized {
  _$LocalizedImpl({required this.title, required this.description});

  factory _$LocalizedImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalizedImplFromJson(json);

  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'Localized(title: $title, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalizedImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalizedImplCopyWith<_$LocalizedImpl> get copyWith =>
      __$$LocalizedImplCopyWithImpl<_$LocalizedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalizedImplToJson(
      this,
    );
  }
}

abstract class _Localized implements Localized {
  factory _Localized(
      {required final String title,
      required final String description}) = _$LocalizedImpl;

  factory _Localized.fromJson(Map<String, dynamic> json) =
      _$LocalizedImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$LocalizedImplCopyWith<_$LocalizedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
