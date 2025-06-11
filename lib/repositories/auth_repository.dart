import 'package:flutter_common/constants/juny_constants.dart';
import 'package:flutter_common/network/dio_client.dart';

abstract class AuthRepository {
  Future<void> sendAuthEmail(String email);
}

class AuthDefaultRepository extends AuthRepository {
  final DioClient dioClient;
  final AppKeys appKey;
  AuthDefaultRepository({required this.dioClient, required this.appKey});

  @override
  Future<void> sendAuthEmail(String email) async {
    dioClient.post('/mailer/email/auth', data: {
      'to': email,
    });
    // TODO: Implement sendAuthEmail
  }
}
