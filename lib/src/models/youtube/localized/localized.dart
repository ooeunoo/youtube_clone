import 'package:freezed_annotation/freezed_annotation.dart';

part 'localized.freezed.dart';
part 'localized.g.dart';

@freezed
class Localized  with _$Localized{
  factory Localized({
    required String title,
    required String description,
  }) = _Localized;

  factory Localized.fromJson(Map<String, dynamic> json) =>
      _$LocalizedFromJson(json);
}
