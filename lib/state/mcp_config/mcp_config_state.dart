import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/state/base/base_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mcp_client/mcp_client.dart';

part 'mcp_config_state.freezed.dart';

enum McpApiKeys {
  // openai,
  anthropic,
  // google,
  // azure,
}

@freezed
class McpConfigState with _$McpConfigState, BaseStateMixin {
  const factory McpConfigState({
    @Default(false) bool isLoading,
    @Default(null) AppException? error,
    @Default({}) Map<McpApiKeys, String> apiKeys,
    @Default(null) McpApiKeys? selectedApiKey,
    @Default([]) List<Tool> tools,
    @Default(false) bool isConnected,
  }) = _McpConfigState;

  const McpConfigState._();
  factory McpConfigState.initialize() => const McpConfigState();

  bool hasApiKey(McpApiKeys key) => apiKeys.containsKey(key);

  McpConfigState setApiKey(McpApiKeys key, String value) {
    final newApiKeys = Map<McpApiKeys, String>.from(apiKeys);
    newApiKeys[key] = value;
    return copyWith(apiKeys: newApiKeys);
  }

  String getApiKey() {
    final apiKey = apiKeys[selectedApiKey!];
    if (apiKey == null || apiKey.isEmpty) {
      throw const AppException.notFoundMcpApiKey();
    }

    return apiKey;
  }
}
