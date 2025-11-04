import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_common/constants/juny_constants.dart';
import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/models/aws/s3/s3_object.dart';
import 'package:flutter_common/models/aws/s3/s3_object_like.dart';
import 'package:flutter_common/models/aws/s3/s3_object_reply.dart';
import 'package:flutter_common/models/aws/s3/s3_object_surround.dart';
import 'package:flutter_common/models/user/user.dart';
import 'package:flutter_common/network/dio_client.dart';
import 'package:flutter_common/widgets/dialogs/report_dialog.dart';
import 'package:mime/mime.dart';
import 'package:http_parser/http_parser.dart';

abstract class AwsS3Repository {
  Future<bool> uploadFile(File file, User user, AppKeys appKey);
  Future<bool> uploadFiles(List<File> files, User user, AppKeys appKey);
  Future<bool> deleteFile(S3Object s3Object, User user, AppKeys appKey);
  Future<List<S3Object>> getS3Object(int? skip, int? take);
  Future<S3Object> findOneOrFail(String id);
  Future<int> count();
  Future<Map<String, bool>> checkObjectsExistenceByMonth(
      String year, String month);
  Future<List<S3Object>> getObjectsByDate(
      String year, String month, String day, int? skip, int? take);
  Future<bool> likeS3Object(S3Object s3Object, User user);
  Future<bool> removeLikeS3Object(S3ObjectLike s3ObjectLike);
  Future<bool> replyS3Object(S3Object s3Object, User user, String content);
  Future<bool> removeReplyS3Object(S3ObjectReply s3Object);
  Future<bool> reportS3Object(
      S3Object s3Object, ReportReason type, String? content);
  Future<bool> reportS3ObjectReply(
      S3ObjectReply s3ObjectReply, ReportReason type, String? content);
  Future<S3ObjectSurround> getS3ObjectSurround(S3Object s3Object);
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
      throw AppException.unknown('파일 업로드 실패: ${response.data}');
    } on AppException {
      rethrow;
    } catch (e) {
      throw AppException.unknown('파일 업로드 실패: $e');
    }
  }

  @override
  Future<bool> uploadFiles(List<File> files, User user, AppKeys appKey) async {
    try {
      // AppKey를 문자열로 변환
      final appKeyString = JunyConstants.getAppKeyStringOrThrow(appKey);

      // Authorization 헤더 생성
      final authToken = 'Bearer user:${user.id}';

      // 여러 파일을 MultipartFile 리스트로 변환
      final multipartFiles = await Future.wait(
        files.map(
          (file) {
            final mimeType = lookupMimeType(file.path);
            return MultipartFile.fromFile(
              file.path,
              filename: file.path.split('/').last,
              contentType:
                  MediaType.parse(mimeType ?? 'application/octet-stream'),
            );
          },
        ),
      );

      // FormData 생성 - 같은 필드 이름에 여러 파일 추가
      final formData = FormData.fromMap({
        'files': multipartFiles,
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
      throw AppException.unknown('파일 업로드 실패: ${response.data}');
    } on AppException {
      rethrow;
    } catch (e) {
      throw AppException.unknown('파일 업로드 실패: $e');
    }
  }

  @override
  Future<bool> deleteFile(S3Object s3Object, User user, AppKeys appKey) async {
    final appKeyString = JunyConstants.getAppKeyStringOrThrow(appKey);
    final response =
        await dioClient.delete('/aws/s3/$appKeyString/delete/${s3Object.id}');
    if (response.statusCode == 200) {
      return true;
    }
    throw Exception('파일 삭제 실패');
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
      String year, String month, String day, int? skip, int? take) async {
    final response = await dioClient.get(
        '/aws/s3/objects/year/$year/month/$month/day/$day',
        queryParameters: {
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
  Future<bool> removeLikeS3Object(S3ObjectLike s3ObjectLike) async {
    final response =
        await dioClient.delete('/s3-object-likes/${s3ObjectLike.id}');
    if (response.statusCode == 204) {
      return true;
    }
    throw Exception('S3 객체 좋아요 취소 실패');
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

  @override
  Future<bool> removeReplyS3Object(S3ObjectReply s3ObjectReply) async {
    final response =
        await dioClient.delete('/s3-object-replies/${s3ObjectReply.id}');
    if (response.statusCode == 204) {
      return true;
    }
    throw Exception('S3 객체 댓글 취소 실패');
  }

  @override
  Future<bool> reportS3Object(
      S3Object s3Object, ReportReason type, String? content) async {
    final response = await dioClient
        .post('/s3-object-reports/s3-object/${s3Object.id}', data: {
      'type': type.value,
      'content': content,
    });

    if (response.statusCode == 201) {
      return true;
    }
    throw Exception('S3 객체 신고 실패');
  }

  @override
  Future<bool> reportS3ObjectReply(
      S3ObjectReply s3ObjectReply, ReportReason type, String? content) async {
    final response = await dioClient.post(
        '/s3-object-reply-reports/s3-object-reply/${s3ObjectReply.id}',
        data: {
          'type': type.value,
          'content': content,
        });

    if (response.statusCode == 201) {
      return true;
    }
    throw Exception('S3 객체 댓글 신고 실패');
  }

  @override
  Future<S3ObjectSurround> getS3ObjectSurround(S3Object s3Object) async {
    final response =
        await dioClient.get('/aws/s3/objects/${s3Object.id}/surrounding');
    if (response.statusCode == 200) {
      return S3ObjectSurround.fromJson(response.data);
    }
    throw Exception('S3 객체 주변 조회 실패');
  }
}
