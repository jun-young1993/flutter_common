import 'dart:io';

import 'package:flutter_common/constants/juny_constants.dart';
import 'package:flutter_common/models/user/user.dart';
import 'package:flutter_common/network/dio_client.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class UserRepository {
  Future<User> getUserInfo({
    String? fcmToken,
  });

  Future<void> deleteUserData(User user);
  Future<void> userBlock(User blockerUser, String blockedUserId, String reason);
  Future<User> updateUserName(String userId, String userName);
}

class UserDefaultRepository extends UserRepository {
  final DioClient dioClient;
  final SharedPreferences sharedPreferences;
  final AppKeys appKey;

  UserDefaultRepository(
      {required this.dioClient,
      required this.sharedPreferences,
      required this.appKey});

  Future printIps() async {
    try {
      for (var interface in await NetworkInterface.list()) {
        for (var addr in interface.addresses) {
          return '${addr.address} ${addr.host} ${addr.isLoopback} ${addr.rawAddress} ${addr.type.name}';
        }
      }
    } catch (e) {
      return null;
    }
  }

  @override
  Future<User> getUserInfo({String? fcmToken}) async {
    final appKeyString = JunyConstants.getAppKeyStringOrThrow(appKey);
    final userIdKey = '$appKeyString-user-id';
    final userId = sharedPreferences.getString(userIdKey);
    if (userId == null) {
      final response = await dioClient.post('/user', data: {
        'username': null,
        'email': null,
        'password': DateTime.now().toIso8601String(),
        'type': appKeyString,
        'fcm_token': fcmToken,
        'registrationIp': await printIps(),
      });
      sharedPreferences.setString(userIdKey, response.data['id']);
      return User.fromJson(response.data);
    }
    final response = await dioClient.get('/user/$userId');
    var user = User.fromJson(response.data);

    if (user.fcmToken == null && fcmToken != null) {
      user = user.copyWith(fcmToken: fcmToken);
      await dioClient.patch('/user/$userId/fcm-token/$fcmToken');
    }

    return user;
  }

  @override
  Future<void> deleteUserData(User user) async {
    final appKeyString = JunyConstants.getAppKeyStringOrThrow(appKey);
    final userIdKey = '$appKeyString-user-id';
    user = user.copyWith(isActive: false);
    final userId = user.id;
    await dioClient.put('/user/$userId', data: user.toJson());
    sharedPreferences.getString(userIdKey);
    sharedPreferences.remove(userIdKey);
  }

  @override
  Future<void> userBlock(
      User blockerUser, String blockedUserId, String reason) async {
    await dioClient.post(
      '/user-blocks',
      data: {'blockedId': blockedUserId, "reason": reason, "status": "ACTIVE"},
    );
  }

  @override
  Future<User> updateUserName(String userId, String userName) async {
    final response = await dioClient.patch('/user/$userId/username/$userName');
    if (response.statusCode == 200) {
      return User.fromJson(response.data);
    }
    throw Exception('Failed to update user name: ${response.statusCode}');
  }
}
