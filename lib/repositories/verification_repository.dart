import 'package:flutter_common/constants/juny_constants.dart';
import 'package:flutter_common/network/dio_client.dart';
import 'package:flutter_common/repositories/response/api_response.dart';
import 'package:dio/dio.dart';

abstract class VerificationRepository {
  Future<ApiResponse> sendAuthEmail(String email);
}

class VerificationDefaultRepository extends VerificationRepository {
  final DioClient dioClient;
  final AppKeys appKey;
  VerificationDefaultRepository(
      {required this.dioClient, required this.appKey});

  @override
  Future<ApiResponse> sendAuthEmail(String email) async {
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
    final apiResponse = ApiResponse.fromJson(response.data, (json) => json);
    if (response.statusCode == 200) {
      return apiResponse;
    }
    throw Exception(
        '[${response.statusCode}] Failed to send auth email: ${apiResponse.message ?? 'Unknown error'}');
  }
}
