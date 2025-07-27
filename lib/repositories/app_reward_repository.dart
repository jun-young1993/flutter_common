import 'package:flutter_common/models/app-reward/user_point_balance.dart';
import 'package:flutter_common/network/dio_client.dart';

abstract class AppRewardRepository {
  Future<UserPointBalance> getUserPointBalance(String userId);
}

class AppRewardDefaultRepository extends AppRewardRepository {
  final DioClient dioClient;

  AppRewardDefaultRepository({required this.dioClient});

  @override
  Future<UserPointBalance> getUserPointBalance(String userId) async {
    final response = await dioClient.get('/app-reward/points/$userId');
    return UserPointBalance.fromJson(response.data);
  }
}
