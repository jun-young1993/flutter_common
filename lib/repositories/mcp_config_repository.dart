import 'package:flutter_common/state/mcp_config/mcp_config_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class McpConfigRepository {
  Future<Map<McpApiKeys, String>> initialize();
  Future<void> setApiKey(McpApiKeys key, String value);
  Future<String?> getApiKey(McpApiKeys key);
  Future<void> clearApiKey(McpApiKeys key);
}

class McpConfigDefaultRepository extends McpConfigRepository {
  final SharedPreferences sharedPreferences;

  McpConfigDefaultRepository({required this.sharedPreferences});

  @override
  Future<Map<McpApiKeys, String>> initialize() async {
    final apiKeys = <McpApiKeys, String>{};
    for (var key in McpApiKeys.values) {
      final value = await getApiKey(key);
      if (value != null) {
        apiKeys[key] = value;
      }
    }
    return apiKeys;
  }

  @override
  Future<void> setApiKey(McpApiKeys key, String value) async {
    sharedPreferences.setString(key.name, value);
  }

  @override
  Future<String?> getApiKey(McpApiKeys key) async {
    return sharedPreferences.getString(key.name);
  }

  @override
  Future<void> clearApiKey(McpApiKeys key) async {
    sharedPreferences.remove(key.name);
  }
}
