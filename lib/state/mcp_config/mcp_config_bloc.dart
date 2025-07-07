import 'package:flutter/material.dart';
import 'package:flutter_common/constants/juny_constants.dart';
import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/repositories/llm_client_repository.dart';
import 'package:flutter_common/repositories/mcp_config_repository.dart';
import 'package:flutter_common/state/base/base_bloc.dart';
import 'package:flutter_common/state/mcp_config/mcp_config_event.dart';
import 'package:flutter_common/state/mcp_config/mcp_config_state.dart';
import 'package:mcp_client/mcp_client.dart';

class McpConfigBloc extends BaseBloc<McpConfigEvent, McpConfigState> {
  final McpConfigRepository mcpConfigRepository;
  final LlmClientRepository llmClientRepository;
  McpConfigBloc({
    required this.mcpConfigRepository,
    required this.llmClientRepository,
  }) : super(McpConfigState.initialize()) {
    on<McpConfigEvent>((event, emit) async {
      await event.map(
        initialize: (e) async {
          await handleEvent(emit, () async {
            final apiKeys = await mcpConfigRepository.initialize();
            emit(state.copyWith(apiKeys: apiKeys));
            if (state.selectedApiKey == null) {
              emit(state.copyWith(selectedApiKey: McpApiKeys.values.first));
            }

            await llmClientRepository
                .initialize(LlmClientRepositoryIntitializeConfig(
              llmConfig: LlmClientRepositoryIntitializeLlmConfig(
                apiKey: state.getApiKey(),
                mcpServerUrl: JunyConstants.mcpServerUrl,
                mcpAuthToken: 'asdf',
              ),
            ));

            bool isConnected = llmClientRepository.isConnected;
            debugPrint('🔥 [isConnected] $isConnected');
            List<Tool> tools = await llmClientRepository.getTools();
            debugPrint('🔥 [tools] $tools');
            final List<Tool> newTools = [];
            for (var tool in tools) {
              final bool isEnabled =
                  await mcpConfigRepository.getDisabledTools(tool.name) == null
                      ? true
                      : false;
              final toolJson = tool.toJson();
              if (toolJson['metadata'] == null) {
                toolJson['metadata'] = {'enabled': isEnabled};
              } else {
                toolJson['metadata'] = {
                  ...toolJson['metadata'],
                  'enabled': isEnabled,
                };
              }

              final newTool = Tool.fromJson(toolJson);
              newTools.add(newTool);
            }

            emit(state.copyWith(isConnected: isConnected, tools: newTools));
          });
        },
        setApiKey: (e) async {
          handleEvent(emit, () async {
            await mcpConfigRepository.setApiKey(e.key, e.value);
            if (state.error == const AppException.notFoundMcpApiKey()) {
              emit(state.copyWith(error: null));
            }
            add(const McpConfigEvent.initialize());
          });
        },
        clearApiKey: (e) async {
          handleEvent(emit, () async {
            await mcpConfigRepository.clearApiKey(e.key);
            add(const McpConfigEvent.initialize());
          });
        },
        selectApiKey: (e) async {
          await handleEvent(emit, () async {
            emit(state.copyWith(selectedApiKey: e.key));
            add(const McpConfigEvent.initialize());
          });
        },
        toggleTool: (e) async {
          await handleEvent(emit, () async {
            await mcpConfigRepository.setToolEnabled(e.toolName, e.isEnabled);
            add(const McpConfigEvent.initialize());
          });
        },
      );
    });
  }

  @override
  McpConfigState clearErrorState(McpConfigState currentState) {
    return currentState.copyWith(error: null, isLoading: false);
  }

  @override
  bool hasError(McpConfigState currentState) {
    return currentState.error != null;
  }

  @override
  McpConfigState setErrorState(
      McpConfigState currentState, AppException error) {
    return currentState.copyWith(error: error);
  }

  @override
  McpConfigState setLoadingState(McpConfigState currentState, bool isLoading) {
    return currentState.copyWith(isLoading: isLoading);
  }
}
