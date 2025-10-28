import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/models/user_group/user_group.dart';
import 'package:flutter_common/network/dio_client.dart';

abstract class UserGroupRepository {
  Future<UserGroup?> getUserGroups();
  Future<UserGroup> createUserGroup(String? name, String? description);
  Future<UserGroup> addUserByNumber(String number);
  Future<UserGroup> removeUser();
  Future<UserGroup> updateName(String userGroupId, String name);
  Future<UserGroup> updateDescription(String userGroupId, String description);
}

class UserGroupDefaultRepository extends UserGroupRepository {
  final DioClient dioClient;

  UserGroupDefaultRepository({required this.dioClient});

  @override
  Future<UserGroup?> getUserGroups() async {
    try {
      final response = await dioClient.get('/user-groups/groups');
      if (response.statusCode == 404) {
        throw const AppException.notFound();
      }
      if (response.statusCode != 200) {
        throw Exception(
            '[${response.statusCode}] Failed to fetch user groups: ${response.statusMessage ?? 'Unknown error'}');
      }

      return UserGroup.fromJson(response.data);
    } on AppException catch (e) {
      if (e == const AppException.notFound()) {
        return null;
      }
      rethrow;
    }
  }

  @override
  Future<UserGroup> createUserGroup(String? name, String? description) async {
    final response = await dioClient
        .post('/user-groups', data: {'name': name, 'description': description});
    if (response.statusCode != 201) {
      throw Exception(
          '[${response.statusCode}] Failed to create user group: ${response.statusMessage ?? 'Unknown error'}');
    }
    return UserGroup.fromJson(response.data);
  }

  @override
  Future<UserGroup> addUserByNumber(String number) async {
    final response =
        await dioClient.post('/user-groups/add-user/number/$number');
    if (response.statusCode != 201) {
      throw Exception(
          '[${response.statusCode}] Failed to add user to user group: ${response.statusMessage ?? 'Unknown error'}');
    }
    return UserGroup.fromJson(response.data);
  }

  @override
  Future<UserGroup> removeUser() async {
    final response = await dioClient.delete('/user-groups/remove-users');
    if (response.statusCode != 200) {
      throw Exception(
          '[${response.statusCode}] Failed to remove user from user group: ${response.statusMessage ?? 'Unknown error'}');
    }
    return UserGroup.fromJson(response.data);
  }

  @override
  Future<UserGroup> updateName(String userGroupId, String name) async {
    final response = await dioClient.patch('/user-groups/$userGroupId', data: {
      'name': name,
    });
    return UserGroup.fromJson(response.data);
  }

  @override
  Future<UserGroup> updateDescription(
      String userGroupId, String description) async {
    final response = await dioClient.patch('/user-groups/$userGroupId', data: {
      'description': description,
    });
    return UserGroup.fromJson(response.data);
  }
}
