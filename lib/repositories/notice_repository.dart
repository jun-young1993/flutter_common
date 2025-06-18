import 'package:flutter_common/models/notice/notice.dart';
import 'package:flutter_common/network/dio_client.dart';

abstract class NoticeRepository {
  Future<List<Notice>?> findAll(String name, int skip, int take);
}

class NoticeDefaultRepository extends NoticeRepository {
  final DioClient dioClient;

  NoticeDefaultRepository({required this.dioClient});

  @override
  Future<List<Notice>?> findAll(String name, int skip, int take) async {
    final response = await dioClient
        .get('/notice/notice-group/name/$name/?skip=$skip&take=$take');
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
}
