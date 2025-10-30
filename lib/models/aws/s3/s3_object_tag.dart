import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 's3_object_tag.freezed.dart';
part 's3_object_tag.g.dart';

@freezed
class S3ObjectTag with _$S3ObjectTag {
  const factory S3ObjectTag({
    required String id,
    required String name,
    @Default('#000000') String color,
    required String type,
  }) = _S3ObjectTag;

  const S3ObjectTag._();

  factory S3ObjectTag.fromJson(Map<String, dynamic> json) =>
      _$S3ObjectTagFromJson(json);

  /// 감정 태그에 따른 아이콘 반환
  IconData? get icon {
    if (isEmotion) {
      switch (name) {
        case 'neutral':
          return Icons.sentiment_neutral;
        case 'happy':
          return Icons.emoji_emotions;
        case 'sad':
          return Icons.sentiment_dissatisfied;
        case 'fear':
          return Icons.sentiment_very_dissatisfied;
        case 'surprise':
          return Icons.sentiment_very_satisfied;
        default:
          return Icons.help_outline;
      }
    }
    return null;
  }

  /// 감정 태그에 따른 색상 반환 (Hex 코드)
  String get emotionColor {
    if (isEmotion) {
      switch (name) {
        case 'neutral':
          return '#9E9E9E'; // 회색 - 중립적이고 균형잡힌 느낌
        case 'happy':
          return '#FFD54F'; // 노란색 - 밝고 긍정적인 에너지
        case 'sad':
          return '#64B5F6'; // 파란색 - 차분하고 우울한 감정
        case 'fear':
          return '#9575CD'; // 보라색 - 불안과 긴장감
        case 'surprise':
          return '#FF9800'; // 주황색 - 놀라움과 흥분
        default:
          return '#000000'; // 기본 검정색
      }
    }
    return color; // emotion이 아닌 경우 원래 color 사용
  }

  /// 감정 태그에 따른 Color 객체 반환
  Color get emotionColorValue {
    final hexColor = emotionColor.replaceAll('#', '');
    return Color(int.parse('FF$hexColor', radix: 16));
  }

  /// 감정 태그 여부 확인
  bool get isEmotion => type == 'emotion';
}
