import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/state/mcp_config/mcp_config_bloc.dart';
import 'package:flutter_common/state/mcp_config/mcp_config_state.dart';

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
