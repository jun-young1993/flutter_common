import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_point_balance.freezed.dart';
part 'user_point_balance.g.dart';

@freezed
class UserPointBalance with _$UserPointBalance {
  const factory UserPointBalance({
    required int currentPoints, // 현재 포인트
    required int totalEarnedPoints, // 총 획득 포인트
    required int totalSpentPoints, // 총 사용 포인트
    required int totalWithdrawnPoints, // 총 출금 포인트
  }) = _UserPointBalance;

  const UserPointBalance._();
  factory UserPointBalance.fromJson(Map<String, dynamic> json) =>
      _$UserPointBalanceFromJson(json);
}
