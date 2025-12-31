import 'package:flutter_common/models/app-reward/point_transaction.dart';
import 'package:flutter_common/models/app-reward/user_point_balance.dart';
import 'package:flutter_common/models/user/user.dart';
import 'package:flutter_common/widgets/ad/ad_master.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_reward_event.freezed.dart';

@freezed
class AppRewardEvent with _$AppRewardEvent {
  const factory AppRewardEvent.initialize() = _Initialize;
  const factory AppRewardEvent.clearError() = _ClearError;
  const factory AppRewardEvent.getPointTransactions() = _GetPointTransactions;
  const factory AppRewardEvent.getDailyUserReward(
    PointTransactionSource? type,
  ) = _GetDailyUserReward;
  const factory AppRewardEvent.createWithdrawal(
    String bankName,
    String accountNumber,
    String accountHolder,
    int withdrawalAmount,
  ) = _CreateWithdrawal;
  const factory AppRewardEvent.showRewardAd(
    String adUnitId,
    String rewardName, {
    AdCallback? callback,
  }) = _ShowRewardAd;
}
