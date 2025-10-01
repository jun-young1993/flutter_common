import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_common/constants/juny_constants.dart';
import 'package:flutter_common/models/aws/s3/s3_object.dart';
import 'package:flutter_common/models/user/user.dart';
import 'package:flutter_common/network/dio_client.dart';

abstract class AwsS3Repository {
  Future<bool> uploadFile(File file, User user, AppKeys appKey);
  Future<List<S3Object>> getS3Object(int? skip, int? take);
  Future<S3Object> findOneOrFail(String id);
  Future<int> count();
  Future<Map<String, bool>> checkObjectsExistenceByMonth(
      String year, String month);
  Future<List<S3Object>> getObjectsByDate(
      String year, String month, String day);
  Future<bool> likeS3Object(S3Object s3Object, User user);
  Future<bool> replyS3Object(S3Object s3Object, User user, String content);
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
      if (response.statusCode == 201) {
        return true;
      }
      throw Exception('파일 업로드 실패');
    } catch (e) {
      throw Exception('파일 업로드 실패: $e');
    }
  }

  @override
  Future<List<S3Object>> getS3Object(int? skip, int? take) async {
    final response = await dioClient.get('/aws/s3/objects', queryParameters: {
      'skip': skip,
      'take': take,
    });
    if (response.statusCode == 200) {
      return (response.data as List<dynamic>)
          .map((e) => S3Object.fromJson(e as Map<String, dynamic>))
          .toList();
    }
    throw Exception('S3 객체 조회 실패');
  }

  @override
  Future<S3Object> findOneOrFail(String id) async {
    final response = await dioClient.get('/aws/s3/objects/$id');
    if (response.statusCode == 200) {
      return S3Object.fromJson(response.data);
    }
    throw Exception('S3 객체 조회 실패');
  }

  @override
  Future<int> count() async {
    final response = await dioClient.get('/aws/s3/objects/count');
    if (response.statusCode == 200) {
      if (response.data is int) {
        return response.data as int;
      } else if (response.data is String) {
        return int.parse(response.data as String);
      } else if (response.data is double) {
        return (response.data as double).toInt();
      } else {
        return int.parse(response.data.toString());
      }
    }
    throw Exception('S3 객체 개수 조회 실패');
  }

  @override
  Future<Map<String, bool>> checkObjectsExistenceByMonth(
      String year, String month) async {
    final response = await dioClient
        .get('/aws/s3/objects/year/$year/month/$month/existence');
    if (response.statusCode == 200) {
      return Map<String, bool>.from(response.data);
    }
    throw Exception('S3 객체 조회 실패');
  }

  @override
  Future<List<S3Object>> getObjectsByDate(
      String year, String month, String day) async {
    final response =
        await dioClient.get('/aws/s3/objects/year/$year/month/$month/day/$day');
    if (response.statusCode == 200) {
      return (response.data as List<dynamic>)
          .map((e) => S3Object.fromJson(e as Map<String, dynamic>))
          .toList();
    }
    throw Exception('S3 객체 조회 실패');
  }

  @override
  Future<bool> likeS3Object(S3Object s3Object, User user) async {
    final response = await dioClient
        .post('/s3-object-likes/s3-object/${s3Object.id}', data: {
      'userId': user.id,
    });
    if (response.statusCode == 201) {
      return true;
    }
    if (response.statusCode == 409) {
      return false;
    }
    throw Exception('S3 객체 좋아요 실패');
  }

  @override
  Future<bool> replyS3Object(
      S3Object s3Object, User user, String content) async {
    final response = await dioClient
        .post('/s3-object-replies/s3-object/${s3Object.id}', data: {
      'content': content,
    });
    if (response.statusCode == 201) {
      return true;
    }
    throw Exception('S3 객체 댓글 실패');
  }
}
