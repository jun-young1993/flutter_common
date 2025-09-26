import 'package:flutter_common/models/user/user_storage_limit.dart';
import 'package:flutter_common/network/dio_client.dart';

abstract class UserStorageLimitRepository {
  Future<UserStorageLimit> initializeByS3();
}

class UserStorageLimitDefaultRepository extends UserStorageLimitRepository {
  final DioClient dioClient;

  UserStorageLimitDefaultRepository({required this.dioClient});

  @override
  Future<UserStorageLimit> initializeByS3() async {
    final response = await dioClient.post('/user-storage-limits/default/s3');
    if (response.statusCode != 201) {
      throw Exception('Failed to initialize user storage limit by S3');
    }
    return UserStorageLimit.fromJson(response.data);
  }
}
