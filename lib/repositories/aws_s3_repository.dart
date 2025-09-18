import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_common/constants/juny_constants.dart';
import 'package:flutter_common/models/aws/s3/s3_object.dart';
import 'package:flutter_common/models/user/user.dart';
import 'package:flutter_common/network/dio_client.dart';
import 'package:http_parser/http_parser.dart';

abstract class AwsS3Repository {
  Future<bool> uploadFile(File file, User user, AppKeys appKey);
  Future<List<S3Object>> getS3Object(User user);
}

class AwsS3DefaultRepository extends AwsS3Repository {
  final DioClient dioClient;

  AwsS3DefaultRepository({required this.dioClient});

  @override
  Future<bool> uploadFile(File file, User user, AppKeys appKey) async {
    try {
      // AppKey를 문자열로 변환
      final appKeyString = JunyConstants.getAppKeyStringOrThrow(appKey);

      // Authorization 헤더 생성
      final authToken = 'Bearer user:${user.id}';

      // FormData 생성
      final formData = FormData.fromMap({
        'files': await MultipartFile.fromFile(
          file.path,
          filename: file.path.split('/').last,
          contentType: MediaType('image', 'png'),
        ),
      });

      // 요청 옵션 설정
      final options = Options(
        headers: {
          'accept': 'application/json',
          'Authorization': authToken,
          'Content-Type': 'multipart/form-data',
        },
      );

      // API 엔드포인트 구성
      final endpoint = '/aws/s3/$appKeyString/upload';

      // 요청 실행
      final response = await dioClient.post(
        endpoint,
        data: formData,
        options: options,
      );
      if (response.statusCode == 200) {
        return true;
      }
      throw Exception('파일 업로드 실패');
    } catch (e) {
      throw Exception('파일 업로드 실패: $e');
    }
  }

  @override
  Future<List<S3Object>> getS3Object(User user) async {
    final response = await dioClient.get('/aws/s3/objects');
    if (response.statusCode == 200) {
      return (response.data as List<dynamic>)
          .map((e) => S3Object.fromJson(e as Map<String, dynamic>))
          .toList();
    }
    throw Exception('S3 객체 조회 실패');
  }
}
