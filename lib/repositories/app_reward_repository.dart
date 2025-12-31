import 'package:flutter_common/constants/juny_constants.dart';
import 'package:flutter_common/models/app-reward/point_transaction.dart';
import 'package:flutter_common/models/app-reward/user_point_balance.dart';
import 'package:flutter_common/models/user/user.dart';
import 'package:flutter_common/network/dio_client.dart';

abstract class AppRewardRepository {
  Future<UserPointBalance> getUserPointBalance(String userId);
  Future<List<PointTransaction>> getPointTransactions(
    String userId, {
    int offset = 0,
    int limit = 10,
  });
  Future<List<UserReward>?> getDailyUserReward(
    String userId, {
    PointTransactionSource? type,
  });

  Future<bool> createWithdrawal(
    UserPointBalance userPointBalance,
    User user,
    String bankName,
    String accountNumber,
    String accountHolder,
    int withdrawalAmount,
  );

  Future<bool> showRewardAdTransaction(
    User user,
    String rewardName,
    AppKeys appKey,
  );
}

class AppRewardDefaultRepository extends AppRewardRepository {
  final DioClient dioClient;

  AppRewardDefaultRepository({required this.dioClient});

  @override
  Future<UserPointBalance> getUserPointBalance(String userId) async {
    final response = await dioClient.get('/app-reward/points/$userId');
    return UserPointBalance.fromJson(response.data);
  }

  @override
  Future<List<PointTransaction>> getPointTransactions(
    String userId, {
    int offset = 0,
    int limit = 10,
  }) async {
    final response = await dioClient
        .get('/app-reward/transactions/$userId?offset=$offset&limit=$limit');
    return (response.data as List)
        .map((e) => PointTransaction.fromJson(e))
        .toList();
  }

  @override
  Future<List<UserReward>?> getDailyUserReward(
    String userId, {
    PointTransactionSource? type,
  }) async {
    final response = await dioClient.get(
      '/app-reward/daily-usage/$userId',
      queryParameters: {
        'rewardType': type?.name,
      },
    );
    return (response.data as List).map((e) => UserReward.fromJson(e)).toList();
  }

  @override
  Future<bool> createWithdrawal(
    UserPointBalance userPointBalance,
    User user,
    String bankName,
    String accountNumber,
    String accountHolder,
    int withdrawalAmount,
  ) async {
    final response = await dioClient.post('/app-reward/withdrawal', data: {
      'userId': user.id,
      'userPointBalanceId': userPointBalance.id,
      'bankName': bankName,
      'accountNumber': accountNumber,
      'accountHolder': accountHolder,
      'withdrawalAmount': withdrawalAmount,
    });
    if (response.statusCode == 201) {
      return true;
    }
    throw Exception('Failed to create withdrawal');
  }

  @override
  Future<bool> showRewardAdTransaction(
    User user,
    String rewardName,
    AppKeys appKey,
  ) async {
    final response = await dioClient.post('/app-reward/reward/admob', data: {
      'userId': user.id,
      'source': 'admob_reward',
      'rewardName': rewardName,
      'appId': appKey
    });

    if (response.statusCode == 201) {
      return true;
    }
    print('🔥 [ERROR] Failed to show reward ad transaction: ${response.data}');
    throw Exception('Failed to show reward ad transaction');
  }
}
