import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

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

  const S3Object._();

  factory S3Object.fromJson(Map<String, dynamic> json) =>
      _$S3ObjectFromJson(json);

  bool get isImage {
    return mimetype?.startsWith('image/') ?? false;
  }

  bool get isVideo {
    return mimetype?.startsWith('video/') ?? false;
  }

  String get formattedDate {
    if (createdAt == null) return '알 수 없음';
    return DateFormat('yyyy.MM.dd').format(createdAt!);
  }

  String get fileSize {
    if (size == null) return '알 수 없음';
    if (size! < 1024) return '${size}B';
    if (size! < 1024 * 1024) return '${(size! / 1024).toStringAsFixed(1)}KB';
    return '${(size! / (1024 * 1024)).toStringAsFixed(1)}MB';
  }
}
