import 'package:flutter_common/models/notice/notice_reply.dart';
import 'package:flutter_common/network/dio_client.dart';

abstract class NoticeReplyRepository {
  Future<List<NoticeReply>> findAll(String noticeId);
  Future<NoticeReply> add(String noticeId, String content, String userId);
}

class NoticeReplyDefaultRepository extends NoticeReplyRepository {
  final DioClient dioClient;

  NoticeReplyDefaultRepository({required this.dioClient});

  @override
  Future<List<NoticeReply>> findAll(String noticeId) async {
    final response = await dioClient.get('/notice-reply/notice/$noticeId');
    return (response.data as List<dynamic>)
        .map((e) => NoticeReply.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<NoticeReply> add(
      String noticeId, String content, String userId) async {
    final response = await dioClient.post('/notice-reply/notice', data: {
      'noticeId': noticeId,
      'content': content,
      'userId': userId,
    });

    return NoticeReply.fromJson(response.data);
  }
}
