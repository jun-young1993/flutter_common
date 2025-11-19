import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 's3_object_base.freezed.dart';
part 's3_object_base.g.dart';

/// S3 객체의 공통 속성을 제공하는 Mixin
/// S3Object와 S3ObjectBase에서 공통으로 사용되는 getter 로직
mixin S3ObjectCommonMixin {
  String? get mimetype;
  DateTime? get createdAt;
  int? get size;

  /// 이미지 파일 여부 확인
  bool get isImage {
    return mimetype?.startsWith('image/') ?? false;
  }

  /// 비디오 파일 여부 확인
  bool get isVideo {
    return mimetype?.startsWith('video/') ?? false;
  }

  /// 생성일 포맷팅
  String get formattedDate {
    if (createdAt == null) return 'unknown';
    return DateFormat('yyyy.MM.dd').format(createdAt!);
  }

  /// 파일 크기 포맷팅
  String get fileSize {
    if (size == null) return 'unknown';
    if (size! < 1024) return '${size}B';
    if (size! < 1024 * 1024) return '${(size! / 1024).toStringAsFixed(1)}KB';
    return '${(size! / (1024 * 1024)).toStringAsFixed(1)}MB';
  }
}

/// S3Object의 베이스 클래스
/// thumbnail과 같은 재귀적 참조를 방지하기 위한 기본 속성만 포함
@freezed
class S3ObjectBase with _$S3ObjectBase, S3ObjectCommonMixin {
  const factory S3ObjectBase({
    required String id,
    @Default(null) String? key,
    @Default(null) String? url,
    @Default(null) String? originalName,
    @Default(null) int? size,
    @Default(null) String? mimetype,
    @Default(false) bool active,
    @Default(null) DateTime? createdAt,
    @Default(null) String? userId,
    @Default(false) bool isHidden,
    @Default(null) String? fileType,
    @Default(false) bool isImage,
    @Default(false) bool isVideo,
    @Default(false) bool isAudio,
    @Default(false) bool isDocument,
    @Default(false) bool isArchive,
    @Default(false) bool isThumbnail,
    @Default(false) bool hasThumbnail,
    @Default(null) String? thumbnailUrl,
  }) = _S3ObjectBase;

  const S3ObjectBase._();

  factory S3ObjectBase.fromJson(Map<String, dynamic> json) =>
      _$S3ObjectBaseFromJson(json);
}
