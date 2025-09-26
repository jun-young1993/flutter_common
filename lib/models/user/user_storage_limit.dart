import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_storage_limit.freezed.dart';
part 'user_storage_limit.g.dart';

enum StorageLimitType {
  @JsonValue('S3_STORAGE')
  s3Storage,
  @JsonValue('FILE_UPLOAD')
  fileUpload,
  @JsonValue('DAILY_UPLOAD')
  dailyUpload,
  @JsonValue('MONTHLY_UPLOAD')
  monthlyUpload,
}

@freezed
class UserStorageLimit with _$UserStorageLimit {
  const factory UserStorageLimit({
    required String id,
    required String userId,
    required StorageLimitType limitType,
    required int limitValue,
    @Default(0) int currentUsage,
    @Default(true) bool isActive,
    @Default(null) DateTime? expiresAt,
    @Default(null) String? description,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _UserStorageLimit;

  const UserStorageLimit._();

  factory UserStorageLimit.fromJson(Map<String, dynamic> json) =>
      _$UserStorageLimitFromJson(json);

  /// 사용률 (0-100)
  double get usagePercentage {
    if (limitValue == 0) return 0;
    return ((currentUsage / limitValue) * 100 * 100).round() / 100;
  }

  /// 남은 용량 (바이트)
  int get remainingSpace {
    return (limitValue - currentUsage).clamp(0, limitValue);
  }

  /// 제한 초과 여부
  bool get isOverLimit {
    return currentUsage > limitValue;
  }

  /// 제한 만료 여부
  bool get isExpired {
    return expiresAt != null ? expiresAt!.isBefore(DateTime.now()) : false;
  }

  /// 사용량을 사람이 읽기 쉬운 형태로 변환
  String get formattedCurrentUsage {
    return _formatBytes(currentUsage);
  }

  /// 제한값을 사람이 읽기 쉬운 형태로 변환
  String get formattedLimitValue {
    return _formatBytes(limitValue);
  }

  /// 남은 용량을 사람이 읽기 쉬운 형태로 변환
  String get formattedRemainingSpace {
    return _formatBytes(remainingSpace);
  }

  /// 제한 타입을 한국어로 변환
  String get limitTypeKorean {
    switch (limitType) {
      case StorageLimitType.s3Storage:
        return 'S3 스토리지';
      case StorageLimitType.fileUpload:
        return '파일 업로드';
      case StorageLimitType.dailyUpload:
        return '일일 업로드';
      case StorageLimitType.monthlyUpload:
        return '월간 업로드';
    }
  }

  String _formatBytes(int bytes) {
    if (bytes < 1024) return '${bytes}B';
    if (bytes < 1024 * 1024) return '${(bytes / 1024).toStringAsFixed(1)}KB';
    if (bytes < 1024 * 1024 * 1024) {
      return '${(bytes / (1024 * 1024)).toStringAsFixed(1)}MB';
    }
    return '${(bytes / (1024 * 1024 * 1024)).toStringAsFixed(1)}GB';
  }
}
