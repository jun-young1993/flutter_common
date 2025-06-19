import 'dart:async';

import 'package:mcp_llm/mcp_llm.dart';
import 'package:mcp_client/mcp_client.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter/foundation.dart';

class LlmClientRepositoryIntitializeLlmConfig {
  final String apiKey;

  LlmClientRepositoryIntitializeLlmConfig({
    required this.apiKey,
  });
}

class LlmClientRepositoryIntitializeConfig {
  final LlmClientRepositoryIntitializeLlmConfig llmConfig;

  LlmClientRepositoryIntitializeConfig({
    required this.llmConfig,
  });
}

abstract class LlmClientRepository {
  Future<void> initialize(LlmClientRepositoryIntitializeConfig config);
  Future<void> dispose();
  Future<void> getTools();
  Future<LlmResponse> chatWithToolsUse(String message);
  Future<void> streamChatWithToolUse(String message,
      {bool enableTools = true,
      required Function(String data) onData,
      required Function() onDone});
  bool get isConnected;
}

class LlmClientDefaultRepository extends LlmClientRepository {
  late McpLlm _mcpLlm;
  LlmClient? _llmClient;
  Client? _mcpClient;
  final _connectionStateController = StreamController<bool>.broadcast();

  Stream<bool> get connectionState => _connectionStateController.stream;
  @override
  bool get isConnected => _mcpClient != null && _mcpClient!.isConnected;

  LlmClientDefaultRepository();

  @override
  Future<void> initialize(LlmClientRepositoryIntitializeConfig config) async {
    try {
      // Create McpLlm instance
      _mcpLlm = McpLlm();
      _mcpLlm.registerProvider('claude', ClaudeProviderFactory());

      // Set up MCP client
      await _setupMcpClient();

      // Set up LLM client
      await _setupLlmClient(config.llmConfig);

      // Successfully initialized
      _connectionStateController.add(true);
    } catch (e) {
      print('AI service initialization error: $e');
      _connectionStateController.add(false);
      rethrow;
    }
  }

  @override
  Future<LlmResponse> chatWithToolsUse(String message) async {
    final response = await _llmClient!.chat(
      message,
      enableTools: true,
    );
    return response;
    // debugPrint('Response: $response');

    // debugPrint('Messages: ${_llmClient!.chatSession.messages}');
    // for (var element in _llmClient!.chatSession.messages) {
    //   debugPrint('Message: ${element.role} ${element.content}');
    // }
  }

  @override
  Future<void> getTools() async {
    if (_mcpClient == null) {
      throw Exception('MCP client is not connected');
    }
    final tools = await _mcpClient!.listTools();
    print(
        'Available tools: ${tools.map((t) => '${t.name} ${t.description}').join(', ')}  ');
  }

  Future<void> _setupMcpClient() async {
    final serverUrl = dotenv.env['MCP_SERVER_URL'] ?? '';
    final authToken = dotenv.env['MCP_AUTH_TOKEN'] ?? '';

    if (serverUrl.isEmpty || authToken.isEmpty) {
      throw Exception('Please set MCP server URL and auth token');
    }

    const capabilities = ClientCapabilities(
      roots: true,
      rootsListChanged: true,
      sampling: true,
    );
    const config = McpClientConfig(
      name: 'flutter_app',
      version: '1.0.0',
      capabilities: capabilities,
    );

    // Create transport
    final transportConfig = TransportConfig.sse(
      serverUrl: serverUrl,
      // heartbeatInterval: const Duration(seconds: 30),
      // maxMissedHeartbeats: 3,
    );

    final clientResult = await McpClient.createAndConnect(
      config: config,
      transportConfig: transportConfig,
    );

    // Create MCP client
    _mcpClient = clientResult.get();

    // Set up event handling for connection state changes
    bool isConnectedState = false;

    // Handle connection state changes
    _mcpClient!.onNotification('connection_state_changed', (params) {
      final state = params['state'] as String;
      isConnectedState = state == 'connected';
      print('MCP connection state: $state');
      _connectionStateController.add(isConnectedState);
    });

    // Connect to server

    // Update initial connection state
    _connectionStateController.add(true);
  }

  Future<void> _setupLlmClient(
      LlmClientRepositoryIntitializeLlmConfig config) async {
    final apiKey = config.apiKey;
    // Create LLM client
    _llmClient = await _mcpLlm.createClient(
        providerName: 'claude',
        config: LlmConfiguration(
          apiKey: apiKey,
          model: 'claude-3-haiku-20240307',
          options: {
            'temperature': 0.7,
            'max_tokens': 1500,
          },
        ),
        mcpClient: _mcpClient,
        systemPrompt: '''
            You are a helpful assistant with access to various tools and resources. Provide concise and accurate responses.
            You're an agent that can call external tools to help solve user questions. 
            ALWAYS follow this process: 
            1) Think about what tools could help answer this question, 
            2) Call appropriate tools to gather information, 
            3) If you need more information, call additional tools, 
            4) Once you have all needed information, respond directly to the user's question without mentioning your thought process. 
            5) Only call tools that are necessary and relevant to the user's question.
          ''');
  }

  // Get available tools
  Future<List<Tool>> getAvailableTools() async {
    if (_mcpClient == null || !isConnected) {
      throw Exception('MCP client is not connected');
    }

    return await _mcpClient!.listTools();
  }

  // Chat with AI (with tools enabled)
  Future<LlmResponse> chat(String message, {bool enableTools = true}) async {
    if (_llmClient == null) {
      throw Exception('LLM client not initialized');
    }

    return await _llmClient!.chat(
      message,
      enableTools: enableTools,
    );
  }

  // Stream chat responses
  @override
  Future<void> streamChatWithToolUse(String message,
      {bool enableTools = true,
      required Function(String data) onData,
      required Function() onDone}) async {
    final responseStream = _llmClient!.streamChat(
      message,
      enableTools: enableTools,
    );

    final StringBuffer currentResponse = StringBuffer();
    await for (final chunk in responseStream) {
      if (chunk.textChunk.isNotEmpty) {
        onData(chunk.textChunk);
        currentResponse.write(chunk.textChunk);
      }
      if (chunk.isDone) {
        onDone();
      }
    }
  }

  // Execute tool directly
  Future<dynamic> executeTool(
      String toolName, Map<String, dynamic> arguments) async {
    if (_llmClient == null) {
      throw Exception('LLM client not initialized');
    }

    return await _llmClient!.executeTool(
      toolName,
      arguments,
    );
  }

  // Get resource
  Future<dynamic> getResource(String resourceName,
      {Map<String, dynamic>? params}) async {
    if (_mcpClient == null || !isConnected) {
      throw Exception('MCP client is not connected');
    }

    return await _mcpClient!.readResource(resourceName);
  }

  // Get resource with template
  Future<dynamic> getResourceWithTemplate(
      String templateUri, Map<String, dynamic> params) async {
    if (_mcpClient == null || !isConnected) {
      throw Exception('MCP client is not connected');
    }

    return await _mcpClient!.getResourceWithTemplate(templateUri, params);
  }

  // Cleanup
  @override
  Future<void> dispose() async {
    await _mcpLlm.shutdown();
    _connectionStateController.close();
  }
}
