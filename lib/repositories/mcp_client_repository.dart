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
  Future<McpClient> initialize(McpClientSetupConfig config);
}

class McpClientDefaultRepository extends McpClientRepository {
  @override
  Future<McpClient> initialize(McpClientSetupConfig config) async {
    return _setupMcpClient(config);
  }

  Future<McpClient> _setupMcpClient(McpClientSetupConfig config) async {
    final mcpClient = McpClient(
      name: config.name,
      version: config.version,
      capabilities: const ClientCapabilities(
        roots: true,
        rootsListChanged: true,
        sampling: true,
      ),
    );
  }
}
