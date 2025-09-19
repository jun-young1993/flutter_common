import 'package:flutter_common/models/user_group/user_group.dart';
import 'package:flutter_common/network/dio_client.dart';

abstract class UserGroupRepository {
  Future<List<UserGroup>> getUserGroups();
  Future<UserGroup> createUserGroup();
  Future<UserGroup> addUser();
  Future<UserGroup> removeUser();
}

class UserGroupDefaultRepository extends UserGroupRepository {
  final DioClient dioClient;

  UserGroupDefaultRepository({required this.dioClient});

  @override
  Future<List<UserGroup>> getUserGroups() async {
    final response = await dioClient.get('/user-groups/groups');
    if (response.statusCode != 200) {
      throw Exception(
          '[${response.statusCode}] Failed to fetch user groups: ${response.statusMessage ?? 'Unknown error'}');
    }
    return (response.data as List).map((e) => UserGroup.fromJson(e)).toList();
  }

  @override
  Future<UserGroup> createUserGroup() async {
    final response = await dioClient.post('/user-groups',
        data: {'name': 'no name', 'description': 'no description'});
    if (response.statusCode != 201) {
      throw Exception(
          '[${response.statusCode}] Failed to create user group: ${response.statusMessage ?? 'Unknown error'}');
    }
    return UserGroup.fromJson(response.data);
  }

  @override
  Future<UserGroup> addUser() async {
    final response = await dioClient.post('/user-groups/add-users');
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
}
