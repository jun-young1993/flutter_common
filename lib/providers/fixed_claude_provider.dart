import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:mcp_llm/mcp_llm.dart';

/// Claude Provider를 상속받아서 input_json_delta 처리를 개선한 클래스
class FixedClaudeProvider extends ClaudeProvider {
  FixedClaudeProvider({
    required String apiKey,
    required String model,
    required LlmConfiguration config,
    final String? baseUrl,
  }) : super(
          apiKey: apiKey,
          model: model,
          config: config,
          baseUrl: baseUrl,
        );

  @override
  Stream<LlmResponseChunk> streamComplete(LlmRequest request) async* {
    // 부모 클래스의 스트림을 가져와서 처리
    final parentStream = super.streamComplete(request);

    // 도구 호출 관련 상태 추적
    final Map<String, StringBuffer> toolJsonBuffers = {}; // 도구 ID별 JSON 버퍼
    final Map<String, Map<String, dynamic>> toolArguments =
        {}; // 도구 ID별 완성된 arguments
    final Map<String, String> toolNames = {}; // 도구 ID별 이름

    await for (final chunk in parentStream) {
      final metadata = chunk.metadata;

      // Claude 스타일 도구 호출 메타데이터 처리
      if (metadata.containsKey('is_tool_call') &&
          metadata['is_tool_call'] == true) {
        final toolId = metadata['tool_id'] as String?;
        final toolName = metadata['tool_name'] as String?;

        if (toolId != null && toolName != null) {
          toolNames[toolId] = toolName;

          // tool_args에서 업데이트된 arguments 수집
          if (metadata.containsKey('tool_args')) {
            final toolArgs = metadata['tool_args'] as Map<String, dynamic>?;
            if (toolArgs != null && toolArgs.isNotEmpty) {
              toolArguments[toolId] = Map<String, dynamic>.from(toolArgs);
              debugPrint(
                  'FixedClaudeProvider - Collected tool args for $toolId: $toolArgs');
            }
          }
        }
      }

      // 도구 호출이 있는 경우 수집된 arguments로 수정
      if (chunk.toolCalls != null && chunk.toolCalls!.isNotEmpty) {
        final fixedToolCalls = chunk.toolCalls!.map((toolCall) {
          // 수집된 arguments가 있으면 사용
          final collectedArgs = toolArguments[toolCall.id];
          if (collectedArgs != null && collectedArgs.isNotEmpty) {
            debugPrint(
                'FixedClaudeProvider - Using collected args for ${toolCall.id}: $collectedArgs');
            return LlmToolCall(
              id: toolCall.id,
              name: toolCall.name,
              arguments: collectedArgs,
            );
          }

          // // arguments가 비어있는 경우 도구별 기본값 처리
          // if (toolCall.arguments.isEmpty) {
          //   debugPrint(
          //       'FixedClaudeProvider - Empty arguments for ${toolCall.name}, using defaults');

          //   // hello-world 도구의 경우 기본값 사용
          //   if (toolCall.name == 'hello-world') {
          //     return LlmToolCall(
          //       id: toolCall.id,
          //       name: toolCall.name,
          //       arguments: {'name': 'World'},
          //     );
          //   }
          // }

          return toolCall;
        }).toList();

        debugPrint(
            'FixedClaudeProvider - Final tool calls: ${fixedToolCalls.map((tc) => '${tc.name}(${tc.arguments})').join(', ')}');

        yield LlmResponseChunk(
          textChunk: chunk.textChunk,
          isDone: chunk.isDone,
          metadata: {
            ...chunk.metadata,
            'fixed_arguments': true,
          },
          toolCalls: fixedToolCalls,
        );
      } else {
        // 일반 청크는 그대로 전달
        yield chunk;
      }
    }
  }
}

/// 수정된 Claude Provider Factory
class FixedClaudeProviderFactory extends LlmProviderFactory {
  @override
  String get name => 'claude';

  @override
  Set<LlmCapability> get capabilities => {
        LlmCapability.completion,
        LlmCapability.streaming,
        // LlmCapability.embeddings, // not supported yet
        LlmCapability.toolUse,
      };

  @override
  LlmInterface createProvider(LlmConfiguration config) {
    final apiKey = config.apiKey;
    if (apiKey == null || apiKey.isEmpty) {
      throw StateError('API key is required for Claude provider');
    }

    return FixedClaudeProvider(
      apiKey: apiKey,
      model: config.model ?? 'claude-3-sonnet-20240229',
      baseUrl: config.baseUrl,
      config: config,
    );
  }
}
