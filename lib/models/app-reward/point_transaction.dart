import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'point_transaction.freezed.dart';
part 'point_transaction.g.dart';

enum PointTransactionType { earn, spend, withdraw, refund, bonus }

extension PointTransactionTypeExtension on PointTransactionType {
  String get displayName {
    switch (this) {
      case PointTransactionType.earn:
        return '수입';
      case PointTransactionType.spend:
        return '지출';
      case PointTransactionType.withdraw:
        return '출금';
      case PointTransactionType.refund:
        return '환불';
      case PointTransactionType.bonus:
        return '보너스';
    }
  }

  Color get color {
    switch (this) {
      case PointTransactionType.earn:
        return Colors.green;
      case PointTransactionType.spend:
        return Colors.red;
      case PointTransactionType.withdraw:
        return Colors.blue;
      case PointTransactionType.refund:
        return Colors.purple;
      case PointTransactionType.bonus:
        return Colors.orange;
    }
  }
}

enum PointTransactionSource {
  admob_reward,
  offerwall,
  daily_bonus,
  referral,
  purchase,
  withdrawal,
  refund,
}

extension PointTransactionSourceExtension on PointTransactionSource {
  String get displayName {
    switch (this) {
      case PointTransactionSource.admob_reward:
        return '리워드';
      case PointTransactionSource.offerwall:
        return '미션';
      case PointTransactionSource.daily_bonus:
        return '성장';
      case PointTransactionSource.referral:
        return '시스템';
      case PointTransactionSource.purchase:
        return '이벤트';
      case PointTransactionSource.withdrawal:
        return '출금';
      case PointTransactionSource.refund:
        return '환불';
    }
  }

  IconData get icon {
    switch (this) {
      case PointTransactionSource.admob_reward:
        return Icons.card_giftcard;
      case PointTransactionSource.offerwall:
        return Icons.emoji_events;
      case PointTransactionSource.daily_bonus:
        return Icons.trending_up;
      case PointTransactionSource.referral:
        return Icons.info;
      case PointTransactionSource.purchase:
        return Icons.event;
      case PointTransactionSource.withdrawal:
        return Icons.event;
      case PointTransactionSource.refund:
        return Icons.event;
    }
  }

  Color get color {
    switch (this) {
      case PointTransactionSource.admob_reward:
        return Colors.orange;
      case PointTransactionSource.offerwall:
        return Colors.blue;
      case PointTransactionSource.daily_bonus:
        return Colors.green;
      case PointTransactionSource.referral:
        return Colors.grey;
      case PointTransactionSource.purchase:
        return Colors.purple;
      case PointTransactionSource.withdrawal:
        return Colors.purple;
      case PointTransactionSource.refund:
        return Colors.purple;
    }
  }
}

@freezed
class PointTransaction with _$PointTransaction {
  const factory PointTransaction({
    required String id,
    required PointTransactionType transactionType,
    required PointTransactionSource source,
    required int amount,
    required int balanceBefore,
    required int balanceAfter,
    required String? description,
    required DateTime createdAt,
  }) = _PointTransaction;

  const PointTransaction._();
  factory PointTransaction.fromJson(Map<String, dynamic> json) =>
      _$PointTransactionFromJson(json);
}

@freezed
class UserReward with _$UserReward {
  const factory UserReward({
    required String id,
    required String userId,
    required PointTransactionSource rewardType,
    required DateTime date,
    int usageCount,
    int totalPointsEarned,
    bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _UserReward;

  const UserReward._();
  factory UserReward.fromJson(Map<String, dynamic> json) =>
      _$UserRewardFromJson(json);
}
