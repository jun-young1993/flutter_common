import 'package:flutter_common/models/notice/notice_group.dart';
import 'package:flutter_common/network/dio_client.dart';

abstract class NoticeGroupRepository {
  Future<NoticeGroup> findOneByName(String name);
}

class NoticeGroupDefaultRepository extends NoticeGroupRepository {
  final DioClient _dioClient;

  NoticeGroupDefaultRepository() : _dioClient = DioClient();

  @override
  Future<NoticeGroup> findOneByName(String name) async {
    final response = await _dioClient.get('/notice-group/name/$name');
    return NoticeGroup.fromJson(response.data);
  }
}
