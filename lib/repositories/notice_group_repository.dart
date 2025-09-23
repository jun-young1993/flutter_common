import 'package:flutter_common/models/notice/notice_group.dart';
import 'package:flutter_common/network/dio_client.dart';

abstract class NoticeGroupRepository {
  Future<NoticeGroup> findOneByName(String name);
  Future<List<NoticeGroup>> findAll();
  Future<NoticeGroup> create(String name);
}

class NoticeGroupDefaultRepository extends NoticeGroupRepository {
  final DioClient dioClient;

  NoticeGroupDefaultRepository({required this.dioClient});

  @override
  Future<NoticeGroup> findOneByName(String name) async {
    final response = await dioClient.get('/notice-group/name/$name');
    if (response.statusCode != 200) {
      throw Exception(
          '[${response.statusCode}] Failed to fetch notice group: ${response.statusMessage ?? 'Unknown error'}');
    }
    return NoticeGroup.fromJson(response.data);
  }

  @override
  Future<List<NoticeGroup>> findAll() async {
    final response = await dioClient.get('/notice-group');
    if (response.statusCode != 200) {
      throw Exception(
          '[${response.statusCode}] Failed to fetch notice groups: ${response.statusMessage ?? 'Unknown error'}');
    }
    return (response.data as List<dynamic>)
        .map((e) => NoticeGroup.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<NoticeGroup> create(String name) async {
    final response = await dioClient.post('/notice-group', data: {
      'name': name,
    });
    if (response.statusCode != 201) {
      throw Exception(
          '[${response.statusCode}] Failed to create notice group: ${response.statusMessage ?? 'Unknown error'}');
    }
    return NoticeGroup.fromJson(response.data);
  }
}
