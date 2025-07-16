import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_common/providers/model_provider/fixed_claude_provider.dart';
import 'package:mcp_client/mcp_client.dart';
import 'package:mcp_llm/mcp_llm.dart';

class LlmClientSetupConfig {
  final String apiKey;
  LlmClientSetupConfig({required this.apiKey});
}

abstract class McpLlmClientRepository {
  Future<LlmClient> initialize(LlmClientSetupConfig config);
  Future<LlmClient> findLlmClient();
  Future<void> addMcpClient(Client client);
  Future<void> addMcpClients(List<Client> clients);
  Future<void> dispose();
  Future<LlmResponse> chatWithToolsUse(String message);
  Future<void> streamChatWithToolUse(String message,
      {required Function(String data, String textChunk) onData,
      required Function(List<LlmToolCall> toolCalls) onToolCalls,
      required Function(List<LlmToolCall>? toolCalls) onDone});
  Future<void> removeMcpClient(String name);
}

class McpLlmClientDefaultRepository extends McpLlmClientRepository {
  final McpLlm _mcpLlm = McpLlm();
  LlmClient? _llmClient;

  @override
  Future<LlmClient> initialize(LlmClientSetupConfig config) async {
    if (_llmClient != null) {
      return _llmClient!;
    }
    return await _setupMcpLlmClient(config);
  }

  @override
  Future<LlmClient> findLlmClient() async {
    if (_llmClient == null) {
      throw Exception('LlmClient is not initialized');
    }
    return _llmClient!;
  }

  Future<LlmClient> _setupMcpLlmClient(LlmClientSetupConfig config) async {
    const providerName = 'claude';
    const model = 'claude-3-haiku-20240307';
    _mcpLlm.registerProvider(providerName, FixedClaudeProviderFactory());
    _llmClient = await _mcpLlm.createClient(
      providerName: providerName,
      config: LlmConfiguration(
        apiKey: config.apiKey,
        model: model,
        options: {
          'temperature': 0.7,
          'max_tokens': 1500,
        },
      ),
      systemPrompt: '''
            You are a helpful assistant with access to various tools and resources. Provide concise and accurate responses.
            You're an agent that can call external tools to help solve user questions. 
            ALWAYS follow this process: 
            1) Think about what tools could help answer this question, 
            2) Call appropriate tools to gather information, 
            3) If you need more information, call additional tools, 
            4) Once you have all needed information, respond directly to the user's question without mentioning your thought process. 
            5) Only call tools that are necessary and relevant to the user's question.
          ''',
    );

    return _llmClient!;
  }

  @override
  Future<void> addMcpClient(Client client) async {
    final llmClient = await findLlmClient();
    llmClient.addMcpClient(client.name, client);
  }

  @override
  Future<void> addMcpClients(List<Client> clients) async {
    for (var client in clients) {
      addMcpClient(client);
    }
  }

  @override
  Future<LlmResponse> chatWithToolsUse(String message) async {
    final response = await _llmClient!.chat(
      message,
      enableTools: true,
    );
    return response;
  }

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

  // Cleanup
  @override
  Future<void> dispose() async {
    await _mcpLlm.shutdown();
  }

  @override
  Future<void> removeMcpClient(String name) async {
    _llmClient?.removeMcpClient(name);
  }
}
