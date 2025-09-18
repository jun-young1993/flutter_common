import 'package:freezed_annotation/freezed_annotation.dart';

part 's3_object.freezed.dart';
part 's3_object.g.dart';

@freezed
class S3Object with _$S3Object {
  const factory S3Object({
    required String id,
    @Default(null) String? key,
    @Default(null) String? url,
    @Default(null) String? originalName,
    @Default(null) int? size,
    @Default(null) String? mimetype,
    @Default(false) bool active,
    @Default(null) DateTime? createdAt,
    @Default(null) String? userId,
  }) = _S3Object;

  factory S3Object.fromJson(Map<String, dynamic> json) =>
      _$S3ObjectFromJson(json);
}
