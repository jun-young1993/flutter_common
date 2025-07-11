import 'package:flutter_common/state/mcp_config/mcp_config_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mcp_config_event.freezed.dart';

@freezed
class McpConfigEvent with _$McpConfigEvent {
  const factory McpConfigEvent.initialize() = Initialize;
  const factory McpConfigEvent.setApiKey(McpApiKeys key, String value) =
      SetApiKey;
  const factory McpConfigEvent.clearApiKey(McpApiKeys key) = ClearApiKey;
  const factory McpConfigEvent.selectApiKey(McpApiKeys key) = SelectApiKey;
  const factory McpConfigEvent.toggleTool(String toolName, bool isEnabled) =
      ToggleTool;
}
