import 'dart:io';
import 'package:flutter_common/constants/juny_constants.dart';
import 'package:flutter_common/extensions/app_exception.dart';
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
  Future<List<String>> addAppUser({String? fcmToken, String? username});
  Future<List<User>> getAppUserList();
  Future<void> changeAppUser(User user);
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
          return addr.address;
        }
      }
    } catch (e) {
      return null;
    }
  }

  @override
  Future<void> changeAppUser(User user) async {
    final appKeyString = JunyConstants.getAppKeyStringOrThrow(appKey);
    final userIdKey = '$appKeyString-user-id';
    final userListKey = '$appKeyString-user-list';
    final userId = sharedPreferences.getString(userIdKey);
    if (userId == null) {
      throw const AppException.unknown('User id not found');
    }
    if (userId == user.id) {
      return;
    }
    await sharedPreferences.setString(userIdKey, user.id);
    final userLists = sharedPreferences.getStringList(userListKey);
    userLists?.add(userId);
    userLists?.remove(user.id);

    final saveUserLists =
        await sharedPreferences.setStringList(userListKey, userLists ?? []);
    if (!saveUserLists) {
      throw const AppException.unknown('Failed to save user list');
    }
  }

  Future<User> createUser({String? fcmToken, String? username}) async {
    final appKeyString = JunyConstants.getAppKeyStringOrThrow(appKey);

    final response = await dioClient.post('/user', data: {
      'username': username,
      'email': null,
      'password': DateTime.now().toIso8601String(),
      'type': appKeyString,
      'fcm_token': fcmToken,
      'registrationIp': await printIps(),
    });
    return User.fromJson(response.data);
  }

  @override
  Future<List<String>> addAppUser({String? fcmToken, String? username}) async {
    final appKeyString = JunyConstants.getAppKeyStringOrThrow(appKey);
    final userListKey = '$appKeyString-user-list';
    final userLists = sharedPreferences.getStringList(userListKey);

    final createdUser =
        await createUser(fcmToken: fcmToken, username: username ?? 'unknown');
    final List<String> newUserLists = [...(userLists ?? []), createdUser.id];

    final saveUserLists =
        await sharedPreferences.setStringList(userListKey, newUserLists);
    if (!saveUserLists) {
      throw const AppException.unknown('Failed to save user list');
    }
    return newUserLists;
  }

  @override
  Future<List<User>> getAppUserList() async {
    final appKeyString = JunyConstants.getAppKeyStringOrThrow(appKey);
    final userListKey = '$appKeyString-user-list';
    final userIdLists = sharedPreferences.getStringList(userListKey);
    if (userIdLists == null || userIdLists.isEmpty) {
      return [];
    } else {
      final users = await Future.wait(userIdLists.map(getUserById));

      return users;
    }
  }

  Future<User> getUserById(String userId) async {
    final appKeyString = JunyConstants.getAppKeyStringOrThrow(appKey);
    final userIdKey = '$appKeyString-user-id';
    final response = await dioClient.get('/user/$userId');

    if (response.statusCode == 204) {
      sharedPreferences.remove(userIdKey);
      throw const AppException.notFound();
    }

    return User.fromJson(response.data);
  }

  @override
  Future<User> getUserInfo({String? fcmToken}) async {
    final appKeyString = JunyConstants.getAppKeyStringOrThrow(appKey);
    final userIdKey = '$appKeyString-user-id';
    final userId = sharedPreferences.getString(userIdKey);
    if (userId == null) {
      final createdUser = await createUser(fcmToken: fcmToken);

      final saveUserId =
          await sharedPreferences.setString(userIdKey, createdUser.id);
      if (!saveUserId) {
        throw const AppException.unknown('Failed to save user id');
      }
      return createdUser;
    }

    var user = await getUserById(userId);

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
    sharedPreferences.remove(userIdKey);
    user = user.copyWith(isActive: false);
    final userId = user.id;
    await dioClient.put('/user/$userId', data: user.toJson());
    sharedPreferences.getString(userIdKey);
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
