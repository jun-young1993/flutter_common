import 'package:flutter_common/constants/juny_constants.dart';
import 'package:flutter_common/models/user/user.dart';
import 'package:flutter_common/models/verification/verification.dart';
import 'package:flutter_common/network/dio_client.dart';
import 'package:flutter_common/repositories/response/api_response.dart';
import 'package:dio/dio.dart';

abstract class VerificationRepository {
  Future<Verification> sendAuthEmail(String email);
  Future<void> verifyAuthCode(String userId, String code, String email);
}

class VerificationDefaultRepository extends VerificationRepository {
  final DioClient dioClient;
  final AppKeys appKey;
  VerificationDefaultRepository(
      {required this.dioClient, required this.appKey});
  @override
  Future<Verification> sendAuthEmail(String email) async {
    final response = await dioClient.post(
      '/verification/send',
      data: {
        'email': email,
        'appKey': JunyConstants.getAppKeyStringOrThrow(appKey),
      },
      options: Options(
        receiveTimeout: const Duration(seconds: 10),
      ),
    );

    if (response.data == null) {
      throw Exception('Response data is null');
    }
    final verification = Verification.fromJson(response.data);
    if (response.statusCode == 200) {
      return verification;
    }
    throw Exception(
        '[${response.statusCode}] Failed to send auth email: ${response.statusMessage ?? 'Unknown error'}');
  }

  @override
  Future<void> verifyAuthCode(String userId, String code, String email) async {
    final response = await dioClient.post(
      '/verification/verify',
      data: {
        'userId': userId,
        'email': email,
        'code': code,
      },
    );
    if (response.data == null) {
      throw Exception('Response data is null');
    }

    if (response.statusCode != 200) {
      throw Exception(
          '[${response.statusCode}] Failed to verify auth code: ${response.statusMessage ?? 'Unknown error'}');
    }
  }
}
