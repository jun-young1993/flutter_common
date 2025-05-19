import 'package:flutter_common/models/app_config/app_config.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

abstract class AppRepository {
  Future<AppConfig> getAppConfig(String key);
}

class AppDefaultRepository extends AppRepository {
  final String baseUrl = 'https://juny.digital';
  final http.Client _client;

  AppDefaultRepository({http.Client? client})
      : _client = client ?? http.Client();

  @override
  Future<AppConfig> getAppConfig(String key) async {
    try {
      final response = await _client.get(
        Uri.parse('$baseUrl/app-config/$key'),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        return AppConfig.fromJson(jsonDecode(response.body));
      } else {
        throw Exception('Failed to load app config: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to load app config: $e');
    }
  }

  void dispose() {
    _client.close();
  }
}
