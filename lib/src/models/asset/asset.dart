import 'package:freezed_annotation/freezed_annotation.dart';

part 'asset.freezed.dart';
part 'asset.g.dart';

/// The response of the `GET /api/activity` endpoint.
///
/// It is defined using `freezed` and `json_serializable`.
@freezed
class Asset with _$Asset {
  factory Asset(String uploadIcon) = _Asset;

  /// Convert a JSON object into an [Activity] instance.
  /// This enables type-safe reading of the API response.
  factory Asset.fromJson(Map<String, dynamic> json) => _$AssetFromJson(json);
}
