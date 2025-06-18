import 'package:flutter_common/models/notice/notice_group.dart';
import 'package:flutter_common/network/dio_client.dart';

abstract class NoticeGroupRepository {
  Future<NoticeGroup> findOneByName(String name);
}

class NoticeGroupDefaultRepository extends NoticeGroupRepository {
  final DioClient dioClient;

  NoticeGroupDefaultRepository({required this.dioClient});

  @override
  Future<NoticeGroup> findOneByName(String name) async {
    final response = await dioClient.get('/notice-group/name/$name');
    return NoticeGroup.fromJson(response.data);
  }
}
