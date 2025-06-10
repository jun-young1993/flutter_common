import 'package:flutter_common/constants/juny_constants.dart';
import 'package:flutter_common/models/user/user.dart';
import 'package:flutter_common/network/dio_client.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class UserRepository {
  Future<User> getUserInfo();
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
  Future<User> getUserInfo() async {
    final appKeyString = JunyConstants.appKeys[appKey];
    if (appKeyString == null) {
      throw Exception('Invalid app key: $appKey');
    }
    final userIdKey = '${appKeyString}-user-id';
    final userId = sharedPreferences.getString(userIdKey);
    if (userId == null) {
      final response = await dioClient.post('/user', data: {
        'username': null,
        'email': null,
        'password': DateTime.now().toIso8601String(),
        'type': appKeyString,
      });
      sharedPreferences.setString(userIdKey, response.data['id']);
      return User.fromJson(response.data);
    }
    final response = await dioClient.get('/user/$userId');
    return User.fromJson(response.data);
  }
}
