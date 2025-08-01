import 'package:flutter_common/models/notice/notice.dart';
import 'package:flutter_common/network/dio_client.dart';

abstract class NoticeRepository {
  Future<List<Notice>?> findAll(
    String name,
    int skip,
    int take, {
    String? title,
  });
  Future<Notice> create(String title, String content, String type,
      String noticeGroupId, String userName);
  Future<void> report(
      String noticeId, String reporterId, String type, String? content);
  Future<Notice> findOneById(String id, String? userId);
}

class NoticeDefaultRepository extends NoticeRepository {
  final DioClient dioClient;

  NoticeDefaultRepository({required this.dioClient});

  @override
  Future<Notice> findOneById(String id, String? userId) async {
    final response = await dioClient.get('/notice/$id', queryParameters: {
      'userId': userId,
    });
    if (response.statusCode == 200) {
      return Notice.fromJson(response.data as Map<String, dynamic>);
    }
    throw Exception(
        '[${response.statusCode}] Failed to fetch notice: ${response.statusMessage ?? 'Unknown error'}');
  }

  @override
  Future<List<Notice>?> findAll(String name, int skip, int take,
      {String? title}) async {
    final response = await dioClient.get(
        '/notice/notice-group/name/$name/?skip=$skip&take=$take',
        queryParameters: {
          'title': title,
        });
    if (response.data == null) {
      throw Exception('Response data is null');
    }
    if (response.statusCode == 200) {
      return (response.data as List<dynamic>)
          .map((e) => Notice.fromJson(e as Map<String, dynamic>))
          .toList();
    }

    throw Exception(
        '[${response.statusCode}] Failed to fetch notices: ${response.statusMessage ?? 'Unknown error'}');
  }

  @override
  Future<Notice> create(String title, String content, String type,
      String noticeGroupId, String userName) async {
    final response = await dioClient.post('/notice', data: {
      'title': title,
      'content': content,
      'type': type,
      'noticeGroupId': noticeGroupId,
      'userName': userName,
    });

    if (response.statusCode == 201) {
      return Notice.fromJson(response.data as Map<String, dynamic>);
    }

    throw Exception(
        '[${response.statusCode}] Failed to create notice: ${response.statusMessage ?? 'Unknown error'}');
  }

  @override
  Future<void> report(
      String noticeId, String reporterId, String type, String? content) async {
    final response = await dioClient.post('/notice-reports', data: {
      'noticeId': noticeId,
      'reporterId': reporterId,
      'type': type,
      'content': content ?? 'no content',
    });

    if (response.statusCode != 201) {
      throw Exception(
          '[${response.statusCode}] Failed to report notice: ${response.statusMessage ?? 'Unknown error'}');
    }
  }
}
