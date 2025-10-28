import 'package:flutter/material.dart';
import 'package:flutter_common/constants/juny_constants.dart';
import 'package:flutter_common/models/app_config/app_config.dart';
import 'package:flutter_common/state/app_config/app_config_state.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

abstract class AppRepository {
  Future<AppConfig> getAppConfig(AppKeys key);
  Future<AppLanguage> getAppLanguage(Locale defaultLocale);
  Future<void> setAppLanguage(AppLanguage language);
}

class AppDefaultRepository extends AppRepository {
  final String baseUrl = JunyConstants.apiBaseUrl;
  final http.Client _client;
  final SharedPreferences _sharedPreferences;

  AppDefaultRepository({
    http.Client? client,
    required SharedPreferences sharedPreferences,
  })  : _client = client ?? http.Client(),
        _sharedPreferences = sharedPreferences;

  @override
  Future<AppConfig> getAppConfig(AppKeys key) async {
    try {
      final keyString = JunyConstants.appKeys[key];
      if (keyString == null) {
        throw Exception('Invalid app key: $key');
      }
      final response = await _client.get(
        Uri.parse('$baseUrl/app-config/$keyString'),
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

  @override
  Future<AppLanguage> getAppLanguage(Locale defaultLocale) async {
    final language = _sharedPreferences.getString('language');
    if (language == null) {
      return defaultLocale == const Locale('ko')
          ? AppLanguage.ko
          : AppLanguage.en;
    }
    return AppLanguage.values.firstWhere((e) => e.name == language);
  }

  @override
  Future<void> setAppLanguage(AppLanguage language) async {
    await _sharedPreferences.setString('language', language.name);
  }

  void dispose() {
    _client.close();
  }
}
