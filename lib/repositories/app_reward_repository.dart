import 'package:flutter_common/models/app-reward/point_transaction.dart';
import 'package:flutter_common/models/app-reward/user_point_balance.dart';
import 'package:flutter_common/network/dio_client.dart';

abstract class AppRewardRepository {
  Future<UserPointBalance> getUserPointBalance(String userId);
  Future<List<PointTransaction>> getPointTransactions(
    String userId, {
    int offset = 0,
    int limit = 10,
  });
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
}
