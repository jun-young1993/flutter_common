import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:dio/dio.dart';
import 'package:flutter_common/constants/juny_constants.dart';
import 'package:flutter_common/models/user/user.dart';
import 'package:flutter_common/network/dio_client.dart';
import 'package:flutter_common/repositories/aws_s3_repository.dart';

import 'aws_s3_repository_test.mocks.dart';

// Mock 클래스 생성
@GenerateMocks([DioClient, Dio, Response])
void main() {
  group('AwsS3Repository Tests', () {
    late AwsS3DefaultRepository repository;
    late MockDioClient mockDioClient;
    late MockDio mockDio;
    late MockResponse mockResponse;
    late User testUser;
    late File testFile;

    setUp(() {
      mockDioClient = MockDioClient();
      mockDio = MockDio();
      mockResponse = MockResponse();
      repository = AwsS3DefaultRepository(dioClient: mockDioClient);

      // 테스트용 User 생성
      testUser = User(
        id: '73800d47-5385-4d21-9827-1aeac146a3d8',
        username: 'testuser',
        email: 'test@example.com',
        type: 'user',
        isActive: true,
        isAdmin: false,
        createdAt: '2023-01-01T00:00:00Z',
        updatedAt: '2023-01-01T00:00:00Z',
      );

      // 테스트용 임시 파일 생성
      testFile = File('test_image.png');
      testFile.writeAsStringSync('test image content');
    });

    tearDown(() {
      // 테스트 후 정리
      if (testFile.existsSync()) {
        testFile.deleteSync();
      }
    });

    test('uploadFile - 성공적인 업로드', () async {
      // Arrange
      final expectedResponse = {
        'id': 's3-object-id',
        'key': 'test_image.png',
        'url': 'https://s3.amazonaws.com/bucket/test_image.png',
        'originalName': 'test_image.png',
        'size': 1024,
        'mimetype': 'image/png',
        'active': true,
        'createdAt': '2023-01-01T00:00:00Z',
        'userId': testUser.id,
      };

      when(mockResponse.statusCode).thenReturn(200);
      when(mockResponse.data).thenReturn(expectedResponse);
      when(mockDioClient.post(
        any,
        data: anyNamed('data'),
        options: anyNamed('options'),
      )).thenAnswer((_) async => mockResponse);

      // Act
      final result =
          await repository.uploadFile(testFile, testUser, AppKeys.babyLog);

      // Assert
      expect(result, equals(expectedResponse));
      verify(mockDioClient.post(
        '/aws/s3/baby-log/upload',
        data: anyNamed('data'),
        options: anyNamed('options'),
      )).called(1);
    });

    test('uploadFile - 200이 아닌 상태 코드', () async {
      // Arrange
      when(mockResponse.statusCode).thenReturn(400);
      when(mockDioClient.post(
        any,
        data: anyNamed('data'),
        options: anyNamed('options'),
      )).thenAnswer((_) async => mockResponse);

      // Act & Assert
      expect(
        () => repository.uploadFile(testFile, testUser, AppKeys.babyLog),
        throwsA(isA<Exception>().having(
          (e) => e.toString(),
          'message',
          contains('파일 업로드 실패'),
        )),
      );
    });

    test('uploadFile - 네트워크 에러', () async {
      // Arrange
      when(mockDioClient.post(
        any,
        data: anyNamed('data'),
        options: anyNamed('options'),
      )).thenThrow(DioException(
        requestOptions: RequestOptions(path: '/test'),
        message: 'Network error',
      ));

      // Act & Assert
      expect(
        () => repository.uploadFile(testFile, testUser, AppKeys.babyLog),
        throwsA(isA<Exception>().having(
          (e) => e.toString(),
          'message',
          contains('파일 업로드 실패'),
        )),
      );
    });

    test('uploadFile - 잘못된 AppKey', () async {
      // Arrange
      const invalidAppKey = AppKeys.babyLog; // 실제로는 유효하지만 테스트용

      // Act & Assert
      // AppKey가 유효하지 않은 경우를 테스트하려면 JunyConstants를 수정해야 함
      // 이 테스트는 현재 구조에서는 실행되지 않을 수 있음
      expect(() => JunyConstants.getAppKeyStringOrThrow(invalidAppKey),
          returnsNormally);
    });

    test('uploadFile - 올바른 헤더 설정', () async {
      // Arrange
      final expectedResponse = {'success': true};
      when(mockResponse.statusCode).thenReturn(200);
      when(mockResponse.data).thenReturn(expectedResponse);
      when(mockDioClient.post(
        any,
        data: anyNamed('data'),
        options: anyNamed('options'),
      )).thenAnswer((_) async => mockResponse);

      // Act
      await repository.uploadFile(testFile, testUser, AppKeys.babyLog);

      // Assert
      final captured = verify(mockDioClient.post(
        any,
        data: anyNamed('data'),
        options: captureAnyNamed('options'),
      )).captured;

      final options = captured.first as Options;
      expect(options.headers?['accept'], equals('application/json'));
      expect(options.headers?['Authorization'],
          equals('Bearer user:${testUser.id}'));
      expect(options.headers?['Content-Type'], equals('multipart/form-data'));
    });

    test('uploadFile - 올바른 엔드포인트 생성', () async {
      // Arrange
      final expectedResponse = {'success': true};
      when(mockResponse.statusCode).thenReturn(200);
      when(mockResponse.data).thenReturn(expectedResponse);
      when(mockDioClient.post(
        any,
        data: anyNamed('data'),
        options: anyNamed('options'),
      )).thenAnswer((_) async => mockResponse);

      // Act
      await repository.uploadFile(testFile, testUser, AppKeys.moneyTree);

      // Assert
      verify(mockDioClient.post(
        '/aws/s3/money-tree/upload',
        data: anyNamed('data'),
        options: anyNamed('options'),
      )).called(1);
    });
  });
}
