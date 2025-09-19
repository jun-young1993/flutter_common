import 'package:flutter_common/models/user_group/user_group.dart';
import 'package:flutter_common/network/dio_client.dart';

abstract class UserGroupRepository {
  Future<List<UserGroup>> getUserGroups();
  Future<UserGroup> createUserGroup();
}

class UserGroupDefaultRepository extends UserGroupRepository {
  final DioClient dioClient;

  UserGroupDefaultRepository({required this.dioClient});

  @override
  Future<List<UserGroup>> getUserGroups() async {
    final response = await dioClient.get('/user-groups');
    return (response.data as List).map((e) => UserGroup.fromJson(e)).toList();
  }

  @override
  Future<UserGroup> createUserGroup() async {
    final response = await dioClient.post('/user-groups',
        data: {'name': 'no name', 'description': 'no description'});
    return UserGroup.fromJson(response.data);
  }
}
