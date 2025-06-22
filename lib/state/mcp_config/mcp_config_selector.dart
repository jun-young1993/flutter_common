import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/state/mcp_config/mcp_config_bloc.dart';
import 'package:flutter_common/state/mcp_config/mcp_config_state.dart';
import 'package:mcp_client/mcp_client.dart';

class McpConfigSelector<T>
    extends BlocSelector<McpConfigBloc, McpConfigState, T> {
  const McpConfigSelector({
    super.key,
    required super.selector,
    required super.builder,
  });
}

class McpConfigIsLoadingSelector extends McpConfigSelector<bool> {
  McpConfigIsLoadingSelector(Widget Function(bool) builder, {super.key})
      : super(
          selector: (state) => state.isLoading,
          builder: (context, isLoading) => builder(isLoading),
        );
}

class McpConfigApiKeySelector
    extends McpConfigSelector<Map<McpApiKeys, String>> {
  McpConfigApiKeySelector(Widget Function(Map<McpApiKeys, String>) builder,
      {super.key})
      : super(
          selector: (state) => state.apiKeys,
          builder: (context, apiKeys) => builder(apiKeys),
        );
}

class McpConfigSelectedApiKeySelector extends McpConfigSelector<McpApiKeys?> {
  McpConfigSelectedApiKeySelector(Widget Function(McpApiKeys?) builder,
      {super.key})
      : super(
          selector: (state) => state.selectedApiKey,
          builder: (context, selectedApiKey) => builder(selectedApiKey),
        );
}

class McpConfigToolsSelector extends McpConfigSelector<List<Tool>> {
  McpConfigToolsSelector(Widget Function(List<Tool>) builder, {super.key})
      : super(
          selector: (state) => state.tools,
          builder: (context, tools) => builder(tools),
        );
}

class McpConfigIsConnectedSelector extends McpConfigSelector<bool> {
  McpConfigIsConnectedSelector(Widget Function(bool) builder, {super.key})
      : super(
          selector: (state) => state.isConnected,
          builder: (context, isConnected) => builder(isConnected),
        );
}

class McpConfigErrorSelector extends McpConfigSelector<AppException?> {
  McpConfigErrorSelector(Widget Function(AppException?) builder, {super.key})
      : super(
          selector: (state) => state.error,
          builder: (context, error) => builder(error),
        );
}
