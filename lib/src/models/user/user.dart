import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

/// The response of the `GET /api/activity` endpoint.
///
/// It is defined using `freezed` and `json_serializable`.
@freezed
class User with _$User {
  factory User({
    required String key,
    required String activity,
    required String type,
    required int participants,
    required double price,
  }) = _User;

  /// Convert a JSON object into an [Activity] instance.
  /// This enables type-safe reading of the API response.
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
