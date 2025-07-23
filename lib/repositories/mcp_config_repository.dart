import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_common/state/mcp_config/mcp_config_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

class McpServerInfo {
  final String name;
  final String version;
  final String? url;
  final bool isConnected;

  McpServerInfo(
      {required this.name,
      required this.version,
      required this.url,
      required this.isConnected});

  factory McpServerInfo.fromJson(Map<String, dynamic> json) {
    return McpServerInfo(
      name: json['name'],
      version: json['version'],
      url: json['url'],
      isConnected: json['isConnected'],
    );
  }

  String toJson() {
    return jsonEncode(toMap());
  }

  McpServerInfo copyWith({bool? isConnected, String? url}) {
    return McpServerInfo(
      name: name,
      version: version,
      isConnected: isConnected ?? this.isConnected,
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'version': version,
      'url': url,
      'isConnected': isConnected,
    };
  }
}

abstract class McpConfigRepository {
  Future<Map<McpApiKeys, String>> initialize();
  Future<void> setApiKey(McpApiKeys key, String value);
  Future<String?> getApiKey(McpApiKeys key);
  Future<void> clearApiKey(McpApiKeys key);

  Future<String?> getDisabledTools(String toolName);
  Future<void> setToolEnabled(String toolName, bool isEnabled);
  Future<bool> disconnectMcpServer(String name, String? url);
  Future<McpServerInfo?> getMcpServerInfo(String name);
  Future<bool> connectMcpServer(String name);
  Future<bool> updateMcpServer(McpServerInfo mcpServerInfo);
  Future<McpServerInfo> createOrFindMcpServer(String key, String? url);
  Future<void> addMcpServer(String name);
  Future<List<String>> allMcpServer();
}

class McpConfigDefaultRepository extends McpConfigRepository {
  final SharedPreferences sharedPreferences;

  McpConfigDefaultRepository({required this.sharedPreferences});

  static const _enabledToolsKey = 'mcp_enabled_tools';
  static const _mcpServerKey = 'mcp_server';

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

  @override
  Future<String?> getDisabledTools(String toolName) async {
    final jsonString =
        sharedPreferences.getString('${_enabledToolsKey}_$toolName');
    return jsonString;
  }

  @override
  Future<void> setToolEnabled(String toolName, bool isEnabled) async {
    final currentTools = await getDisabledTools(toolName);
    if (currentTools != null && isEnabled) {
      sharedPreferences.remove('${_enabledToolsKey}_$toolName');
      return;
    }

    await sharedPreferences.setString(
        '${_enabledToolsKey}_$toolName', isEnabled.toString());
  }

  @override
  Future<McpServerInfo> createOrFindMcpServer(String key, String? url) async {
    final mcpServer = sharedPreferences.getString('${_mcpServerKey}_$key');
    if (mcpServer == null) {
      final defaultMcpServer = McpServerInfo(
        name: key,
        version: '1.0.0',
        url: url ?? '',
        isConnected: true,
      );
      await updateMcpServer(defaultMcpServer);
      return defaultMcpServer;
    }
    return McpServerInfo.fromJson(jsonDecode(mcpServer));
  }

  @override
  Future<bool> updateMcpServer(McpServerInfo mcpServer) async {
    debugPrint('🔥 [updateMcpServer] ${mcpServer.toJson()}');
    await sharedPreferences.setString(
        '${_mcpServerKey}_${mcpServer.name}', mcpServer.toJson());
    return true;
  }

  @override
  Future<McpServerInfo?> getMcpServerInfo(String name) async {
    final mcpServer = sharedPreferences.getString('${_mcpServerKey}_$name');
    if (mcpServer == null) {
      return null;
    }
    return McpServerInfo.fromJson(jsonDecode(mcpServer));
  }

  @override
  Future<bool> disconnectMcpServer(String name, String? url) async {
    final mcpServer = await createOrFindMcpServer(name, null);
    final newMcpServer = mcpServer.copyWith(isConnected: false, url: url);
    return await updateMcpServer(newMcpServer);
  }

  @override
  Future<bool> connectMcpServer(String name) async {
    final mcpServer = await createOrFindMcpServer(name, null);
    final newMcpServer =
        mcpServer.copyWith(isConnected: true, url: mcpServer.url);
    return await updateMcpServer(newMcpServer);
  }

  @override
  Future<void> addMcpServer(String name) async {
    final mcpServers = sharedPreferences.getString(_mcpServerKey);
    if (mcpServers == null) {
      await sharedPreferences.setString(_mcpServerKey, jsonEncode([name]));
      return;
    }
    final mcpServersList = jsonDecode(mcpServers);
    if (mcpServersList.contains(name)) {
      return;
    }
    mcpServersList.add(name);
    await sharedPreferences.setString(
        _mcpServerKey, jsonEncode(mcpServersList));
  }

  @override
  Future<List<String>> allMcpServer() async {
    final mcpServers = sharedPreferences.getString(_mcpServerKey);

    if (mcpServers == null) {
      return [];
    }
    final mcpServersList = jsonDecode(mcpServers);

    if (mcpServersList is! List) {
      return [];
    }
    return mcpServersList.map((e) => e as String).toList();
  }
}
