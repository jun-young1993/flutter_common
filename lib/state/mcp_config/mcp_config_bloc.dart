import 'package:flutter/material.dart';
import 'package:flutter_common/constants/juny_constants.dart';
import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/repositories/llm_client_repository.dart';
import 'package:flutter_common/repositories/mcp_client_repository.dart';
import 'package:flutter_common/repositories/mcp_config_repository.dart';
import 'package:flutter_common/repositories/mcp_llm_client_repository.dart';
import 'package:flutter_common/repositories/mcp_local_server_repository.dart';
import 'package:flutter_common/state/base/base_bloc.dart';
import 'package:flutter_common/state/mcp_config/mcp_config_event.dart';
import 'package:flutter_common/state/mcp_config/mcp_config_state.dart';
import 'package:mcp_client/mcp_client.dart';

class McpConfigBloc extends BaseBloc<McpConfigEvent, McpConfigState> {
  final McpConfigRepository mcpConfigRepository;
  final LlmClientRepository llmClientRepository;
  final McpLlmClientRepository mcpLlmClientRepository;
  final McpClientRepository mcpClientRepository;
  final McpLocalServerRepository mcpLocalServerRepository;

  McpConfigBloc(
      {required this.mcpConfigRepository,
      required this.llmClientRepository,
      required this.mcpLlmClientRepository,
      required this.mcpClientRepository,
      required this.mcpLocalServerRepository})
      : super(McpConfigState.initialize()) {
    on<McpConfigEvent>((event, emit) async {
      await event.map(initialize: (e) async {
        await handleEvent(emit, () async {
          final apiKeys = await mcpConfigRepository.initialize();
          emit(state.copyWith(apiKeys: apiKeys));
          if (state.selectedApiKey == null) {
            emit(state.copyWith(selectedApiKey: McpApiKeys.values.first));
          }
          final mcpClientConfigs = [
            McpServerInfo(
              name: 'mcp_local_server',
              version: '1.0.0',
              url: 'http://0.0.0.0:9999/sse',
              isConnected: true,
            ),
            McpServerInfo(
              name: 'mcp_default_server',
              version: '1.0.0',
              url: JunyConstants.mcpServerUrl,
              isConnected: true,
            ),
          ];

          mcpLocalServerRepository.initialize(
            port: 9999,
            onConnect: (clientId) {
              print('🔥 [onConnect] $clientId');
            },
            onDisconnect: (clientId) {
              print('🔥 [onDisconnect] $clientId');
            },
          );

          final mcpServerList = await mcpConfigRepository.allMcpServer();
          debugPrint('🔥 [mcpServerList2] $mcpServerList');
          for (final mcpServer in mcpServerList) {
            final mcpServerInfo =
                await mcpConfigRepository.getMcpServerInfo(mcpServer);
            debugPrint('🔥 [mcpServerInfo] ${mcpServerInfo?.toJson()}');

            if (mcpServerInfo != null) {
              mcpClientConfigs.add(mcpServerInfo);
            }
          }

          await mcpLlmClientRepository.initialize(
            LlmClientSetupConfig(apiKey: state.getApiKey()),
          );
          final filteredClientConfigs = [];
          for (final mcpClientConfig in mcpClientConfigs) {
            final mcpServerInfo = await mcpConfigRepository
                .getMcpServerInfo(mcpClientConfig.name);
            if (mcpServerInfo == null) {
              filteredClientConfigs.add(mcpClientConfig);
              continue;
            }
            if (mcpServerInfo.isConnected == true) {
              filteredClientConfigs.add(mcpClientConfig);
              continue;
            }

            emit(state.copyWith(
              tools: {
                ...state.tools,
                mcpClientConfig.name: McpTool(
                    tools: [],
                    config: McpClientSetupConfig(
                      name: mcpClientConfig.name,
                      version: mcpClientConfig.version,
                      url: mcpClientConfig.url ?? '',
                    ),
                    isConnected: false)
              },
            ));
          }

          final mcpClients = await Future.wait(
            filteredClientConfigs
                .map(
                  (mcpClientConfig) => mcpClientRepository.initialize(
                    McpClientSetupConfig(
                      name: mcpClientConfig.name,
                      version: mcpClientConfig.version,
                      url: mcpClientConfig.url!,
                    ),
                    (isConnected, tools, config) {
                      emit(state.copyWith(
                        tools: {
                          ...state.tools,
                          config.name: McpTool(
                              tools: tools,
                              config: config,
                              isConnected: isConnected)
                        },
                      ));
                    },
                  ),
                )
                .toList(),
          );
          await mcpLlmClientRepository.addMcpClients(mcpClients);

          emit(state.copyWith(isConnected: true));
        });
      }, setApiKey: (e) async {
        handleEvent(emit, () async {
          await mcpConfigRepository.setApiKey(e.key, e.value);
          if (state.error == const AppException.notFoundMcpApiKey()) {
            emit(state.copyWith(error: null));
          }
          add(const McpConfigEvent.initialize());
        });
      }, clearApiKey: (e) async {
        handleEvent(emit, () async {
          await mcpConfigRepository.clearApiKey(e.key);
          add(const McpConfigEvent.initialize());
        });
      }, selectApiKey: (e) async {
        await handleEvent(emit, () async {
          emit(state.copyWith(selectedApiKey: e.key));
          add(const McpConfigEvent.initialize());
        });
      }, toggleTool: (e) async {
        await handleEvent(emit, () async {
          await mcpConfigRepository.setToolEnabled(e.toolName, e.isEnabled);
          add(const McpConfigEvent.initialize());
        });
      }, disconnectMcpServer: (e) async {
        await handleEvent(emit, () async {
          final mcpTool = state.tools[e.name];
          if (mcpTool != null) {
            await mcpConfigRepository.disconnectMcpServer(
                e.name, mcpTool.config.url);
            await mcpClientRepository.disconnect(e.name);
            mcpLlmClientRepository.removeMcpClient(e.name);

            emit(state.copyWith(
              tools: {
                ...state.tools,
                e.name: McpTool(
                    tools: [], config: mcpTool.config, isConnected: false)
              },
            ));
          }
        });
      }, connectMcpServer: (e) async {
        await handleEvent(emit, () async {
          final mcpServerInfo =
              await mcpConfigRepository.getMcpServerInfo(e.name);
          debugPrint('🔥 [connectMcpServer] ${mcpServerInfo?.toJson()}');
          if (mcpServerInfo != null) {
            final mcpClientCheck =
                await mcpClientRepository.getMcpClient(mcpServerInfo.name);

            await mcpConfigRepository.connectMcpServer(mcpServerInfo.name);
            final mcpClient = await mcpClientRepository.initialize(
              McpClientSetupConfig(
                name: mcpServerInfo.name,
                version: mcpServerInfo.version,
                url: mcpServerInfo.url!,
              ),
              (isConnected, tools, config) {
                emit(state.copyWith(
                  tools: {
                    ...state.tools,
                    config.name: McpTool(
                        tools: tools, config: config, isConnected: isConnected)
                  },
                ));
              },
            );

            await mcpLlmClientRepository.addMcpClient(mcpClient);
          }
        });
      }, editMcpServer: (e) async {
        await handleEvent(emit, () async {
          await mcpConfigRepository.updateMcpServer(e.mcpServerInfo);
          add(McpConfigEvent.disconnectMcpServer(e.mcpServerInfo.name));
          add(McpConfigEvent.connectMcpServer(e.mcpServerInfo.name));
        });
      }, addMcpServer: (e) async {
        await mcpConfigRepository.createOrFindMcpServer(
            e.mcpServerInfo.name, e.mcpServerInfo.url);
        await mcpConfigRepository.addMcpServer(e.mcpServerInfo.name);
        add(McpConfigEvent.connectMcpServer(e.mcpServerInfo.name));
      });
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
