import 'package:flutter/material.dart';
import 'package:mcp_client/mcp_client.dart';

class McpClientSetupConfig {
  final String name;
  final String version;
  final String url;

  McpClientSetupConfig({
    required this.name,
    required this.version,
    required this.url,
  });
}

abstract class McpClientRepository {
  Future<Client> initialize(McpClientSetupConfig config,
      Function(bool, List<Tool>, McpClientSetupConfig) onConnection);
}

class McpClientDefaultRepository extends McpClientRepository {
  Client? _mcpClient;
  @override
  Future<Client> initialize(McpClientSetupConfig config,
      Function(bool, List<Tool>, McpClientSetupConfig) onConnection) async {
    if (_mcpClient != null) {
      return _mcpClient!;
    }
    await _setupMcpClient(config);
    onConnection(
        _mcpClient!.isConnected, await _mcpClient!.listTools(), config);
    // _mcpClient!.onNotification('connection_state_changed', (params) async {
    //   final state = params['state'] as String;
    //   final tools = await _mcpClient!.listTools();
    //   debugPrint('MCP connection state: $state');

    // });

    return _mcpClient!;
  }

  Future<Client> _setupMcpClient(McpClientSetupConfig config) async {
    const capabilities = ClientCapabilities(
      roots: true,
      rootsListChanged: true,
      sampling: true,
    );

    final mcpClientConfig = McpClientConfig(
      name: config.name,
      version: config.version,
      capabilities: capabilities,
      enableDebugLogging: false,
    );

    final transportConfig = TransportConfig.sse(
      serverUrl: config.url,
      headers: const {'User-Agent': 'MCP-Client/1.0'},
    );

    final clientResult = await McpClient.createAndConnect(
      config: mcpClientConfig,
      transportConfig: transportConfig,
    );

    _mcpClient = clientResult.get();

    return _mcpClient!;
  }
}
