import 'package:flutter_common/constants/juny_constants.dart';
import 'package:flutter_common/models/user/user.dart';
import 'package:flutter_common/network/dio_client.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class UserRepository {
  Future<User> getUserInfo({
    String? fcmToken,
  });

  Future<void> deleteUserData(User user);
}

class UserDefaultRepository extends UserRepository {
  final DioClient dioClient;
  final SharedPreferences sharedPreferences;
  final AppKeys appKey;

  UserDefaultRepository(
      {required this.dioClient,
      required this.sharedPreferences,
      required this.appKey});

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
      });
      sharedPreferences.setString(userIdKey, response.data['id']);
      return User.fromJson(response.data);
    }
    final response = await dioClient.get('/user/$userId');
    var user = User.fromJson(response.data);

    if (user.fcmToken == null) {
      user = user.copyWith(fcmToken: fcmToken);
      await dioClient.put('/user/$userId', data: user.toJson());
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
}
