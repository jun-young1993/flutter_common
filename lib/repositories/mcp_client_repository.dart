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
  Future<void> disconnect(String name);
  Future<Client?> getMcpClient(String name);
}

class McpClientDefaultRepository extends McpClientRepository {
  final Map<String, Client?> _mcpClients = {};
  @override
  Future<Client> initialize(McpClientSetupConfig config,
      Function(bool, List<Tool>, McpClientSetupConfig) onConnection) async {
    if (_mcpClients[config.name] != null) {
      return _mcpClients[config.name]!;
    }
    await _setupMcpClient(config);
    onConnection(_mcpClients[config.name]!.isConnected,
        await _mcpClients[config.name]!.listTools(), config);
    // _mcpClient!.onNotification('connection_state_changed', (params) async {
    //   final state = params['state'] as String;
    //   final tools = await _mcpClient!.listTools();
    //   debugPrint('MCP connection state: $state');

    // });
    return _mcpClients[config.name]!;
  }

  @override
  Future<Client?> getMcpClient(String name) async {
    return _mcpClients[name];
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

    final mcpClient = clientResult.get();
    _mcpClients[config.name] = mcpClient;

    return mcpClient;
  }

  @override
  Future<void> disconnect(String name) async {
    _mcpClients[name]?.dispose();
    _mcpClients[name] = null;
  }
}
