import 'dart:async';
import 'dart:convert';

import 'package:flutter_common/providers/model_provider/fixed_claude_provider.dart';
import 'package:flutter_common/repositories/mcp_server_repository.dart';
import 'package:flutter_common/repositories/run_mcp_server.dart';
import 'package:mcp_llm/mcp_llm.dart';
import 'package:mcp_client/mcp_client.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter/foundation.dart';
import 'package:mcp_server/mcp_server.dart' as mcp_server;

class LlmClientRepositoryIntitializeLlmConfig {
  final String apiKey;
  final String mcpServerUrl;
  final String mcpAuthToken;

  LlmClientRepositoryIntitializeLlmConfig({
    required this.apiKey,
    required this.mcpServerUrl,
    required this.mcpAuthToken,
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
  Future<List<Tool>> getTools();
  Future<LlmResponse> chatWithToolsUse(String message);
  Future<void> streamChatWithToolUse(String message,
      {required Function(String data, String textChunk) onData,
      required Function(List<LlmToolCall> toolCalls) onToolCalls,
      required Function(List<LlmToolCall>? toolCalls) onDone});
  bool get isConnected;
  Future<LlmClient> getLlmClient();
}

class LlmClientDefaultRepository extends LlmClientRepository {
  late McpLlm _mcpLlm;
  LlmClient? _llmClient;
  Client? _mcpClient;
  Client? _localMcpClient;
  McpServerRepository mcpServerRepository =
      McpServerDefaultRepository(port: 5490);
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
      // _mcpLlm.registerProvider('claude', ClaudeProviderFactory());
      _mcpLlm.registerProvider('claude', FixedClaudeProviderFactory());

      // Set up MCP client
      await _setupMcpClient(
          config.llmConfig.mcpServerUrl, config.llmConfig.mcpAuthToken);

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
  Future<List<Tool>> getTools() async {
    if (_mcpClient == null) {
      throw Exception('MCP client is not connected');
    }
    return await _mcpClient!.listTools();
    // return await _localMcpClient!.listTools();
  }

  Future<void> _setLocalMcpClient(
      {required Function(String) onConnect,
      required Function(String) onDisconnect}) async {
    debugPrint(' 🚀 Setting up local MCP client');
    final runMcpServer = RunMcpServer();
    runMcpServer.runCompleteMcpServer(onConnect: (message) async {
      print('MCP Local connection state: $message');
      const capabilities = ClientCapabilities(
        roots: true,
        rootsListChanged: true,
        sampling: true,
      );
      const config = McpClientConfig(
        name: 'flutter_local_app',
        version: '1.0.0',
        capabilities: capabilities,
        enableDebugLogging: true,
      );
      const transportConfig = TransportConfig.sse(
        serverUrl: 'http://0.0.0.0:8443/sse',
        // heartbeatInterval: const Duration(seconds: 30),
        // maxMissedHeartbeats: 3,
      );

      final clientResult = await McpClient.createAndConnect(
        config: config,
        transportConfig: transportConfig,
      );

      // Create MCP client
      _localMcpClient = clientResult.get();
      debugPrint('MCP Local tools: ${await _localMcpClient!.listTools()}');
      debugPrint('MCP Local client: ${_localMcpClient!.name}');
      _localMcpClient!.onNotification('connection_state_changed', (params) {
        final state = params['state'] as String;

        print('MCP Local connection state: $state');
      });
      onConnect('MCP Local client connected');
    }, onDisconnect: (message) {
      print('MCP Local connection state: $message');
      onDisconnect('MCP Local client disconnected');
    });

    debugPrint(' 🚀 Local MCP client setup complete');
    // await mcpServerRepository.initialize();
  }

  Future<void> _setupMcpClient(String serverUrl, String authToken) async {
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
      enableDebugLogging: true,
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
          // model: 'claude-3-7-sonnet-20250219',
          options: {
            'temperature': 0.7,
            'max_tokens': 1500,
          },
        ),
        // mcpClient: _mcpClient,
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
    _llmClient!.addMcpClient(_mcpClient!.name, _mcpClient!);
    _setLocalMcpClient(onConnect: (message) {
      print('MCP Local connection state: $message');
      if (_localMcpClient != null) {
        _llmClient!.addMcpClient(_localMcpClient!.name, _localMcpClient!);
        debugPrint('MCP Local client added: ${_localMcpClient!.name}');
      }
    }, onDisconnect: (message) {
      print('MCP Local connection state: $message');
    });
  }

  @override
  Future<LlmClient> getLlmClient() async {
    if (_llmClient == null) {
      throw Exception('LLM client not initialized');
    }
    return _llmClient!;
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
      {required Function(String data, String textChunk) onData,
      required Function(List<LlmToolCall> toolCalls) onToolCalls,
      required Function(List<LlmToolCall>? toolCalls) onDone}) async {
    final responseStream = _llmClient!.streamChat(
      message,
      enableTools: true,
    );

    final StringBuffer currentResponse = StringBuffer();
    await for (final chunk in responseStream) {
      debugPrint('Chunk: ${chunk.toJson()}');
      debugPrint('Chunk Metadta: ${chunk.metadata}');
      debugPrint('Chunk Text: ${chunk.textChunk}');
      debugPrint('Chunk Tool Calls: ${jsonEncode(chunk.toolCalls)}');
      debugPrint('Chunk isDone: ${chunk.isDone}');
      if (chunk.textChunk.isNotEmpty) {
        currentResponse.write(chunk.textChunk);
        onData(currentResponse.toString(), chunk.textChunk);
      }
      if (chunk.toolCalls != null && chunk.toolCalls!.isNotEmpty) {
        debugPrint('Tool Calls Return: ${jsonEncode(chunk.toolCalls)}');
        onToolCalls(chunk.toolCalls!);
      }
      if (chunk.isDone) {
        onDone(chunk.toolCalls);
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
