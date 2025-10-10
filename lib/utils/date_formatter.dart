import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_common/common_il8n.dart';

class DateFormatter {
  static String formatDateTime(DateTime dateTime, {bool withTime = false}) {
    return '${dateTime.year}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.day.toString().padLeft(2, '0')}${withTime ? ' ${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}:${dateTime.second.toString().padLeft(2, '0')}' : ''}';
  }

  /// DateTime을 받아서 상대적인 시간을 반환합니다 (예: "3일 전", "2개월 전", "1년 전")
  static String getRelativeTime(DateTime dateTime) {
    final now = DateTime.now();
    final difference = now.difference(dateTime);

    // 미래 시간인 경우
    if (difference.isNegative) {
      return Tr.common.justNow.tr();
    }

    // 초 단위
    if (difference.inSeconds < 60) {
      return Tr.common.justNow.tr();
    }

    // 분 단위
    if (difference.inMinutes < 60) {
      final minutes = difference.inMinutes;
      return Tr.common.minutesAgo
          .tr(namedArgs: {'minutes': minutes.toString()});
    }

    // 시간 단위
    if (difference.inHours < 24) {
      final hours = difference.inHours;
      return Tr.common.hoursAgo.tr(namedArgs: {'hours': hours.toString()});
    }

    // 일 단위
    if (difference.inDays < 30) {
      final days = difference.inDays;
      return Tr.common.daysAgo.tr(namedArgs: {'days': days.toString()});
    }

    // 월 단위 (대략적인 계산)
    if (difference.inDays < 365) {
      final months = (difference.inDays / 30).floor();
      return Tr.common.monthsAgo.tr(namedArgs: {'months': months.toString()});
    }

    // 년 단위
    final years = (difference.inDays / 365).floor();
    return Tr.common.yearsAgo.tr(namedArgs: {'years': years.toString()});
  }

  /// DateTime을 받아서 상대적인 시간을 한국어로 반환합니다
  static String getRelativeTimeKorean(DateTime dateTime) {
    final now = DateTime.now();
    final difference = now.difference(dateTime);

    // 미래 시간인 경우
    if (difference.isNegative) {
      return '방금 전';
    }

    // 초 단위
    if (difference.inSeconds < 60) {
      return '방금 전';
    }

    // 분 단위
    if (difference.inMinutes < 60) {
      final minutes = difference.inMinutes;
      return '$minutes분 전';
    }

    // 시간 단위
    if (difference.inHours < 24) {
      final hours = difference.inHours;
      return '$hours시간 전';
    }

    // 일 단위
    if (difference.inDays < 30) {
      final days = difference.inDays;
      return '$days일 전';
    }

    // 월 단위 (대략적인 계산)
    if (difference.inDays < 365) {
      final months = (difference.inDays / 30).floor();
      return '$months개월 전';
    }

    // 년 단위
    final years = (difference.inDays / 365).floor();
    return '$years년 전';
  }

  /// DateTime을 받아서 상대적인 시간을 영어로 반환합니다
  static String getRelativeTimeEnglish(DateTime dateTime) {
    final now = DateTime.now();
    final difference = now.difference(dateTime);

    // 미래 시간인 경우
    if (difference.isNegative) {
      return 'just now';
    }

    // 초 단위
    if (difference.inSeconds < 60) {
      return 'just now';
    }

    // 분 단위
    if (difference.inMinutes < 60) {
      final minutes = difference.inMinutes;
      return '$minutes minutes ago';
    }

    // 시간 단위
    if (difference.inHours < 24) {
      final hours = difference.inHours;
      return '$hours hours ago';
    }

    // 일 단위
    if (difference.inDays < 30) {
      final days = difference.inDays;
      return '$days days ago';
    }

    // 월 단위 (대략적인 계산)
    if (difference.inDays < 365) {
      final months = (difference.inDays / 30).floor();
      return '$months months ago';
    }

    // 년 단위
    final years = (difference.inDays / 365).floor();
    return '$years years ago';
  }
}
