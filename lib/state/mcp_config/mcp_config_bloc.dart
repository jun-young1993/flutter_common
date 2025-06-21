import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/repositories/mcp_config_repository.dart';
import 'package:flutter_common/state/base/base_bloc.dart';
import 'package:flutter_common/state/mcp_config/mcp_config_event.dart';
import 'package:flutter_common/state/mcp_config/mcp_config_state.dart';

class McpConfigBloc extends BaseBloc<McpConfigEvent, McpConfigState> {
  final McpConfigRepository mcpConfigRepository;
  McpConfigBloc({required this.mcpConfigRepository})
      : super(McpConfigState.initialize()) {
    on<McpConfigEvent>((event, emit) async {
      await event.map(
        initialize: (e) async {
          handleEvent(emit, () async {
            final apiKeys = await mcpConfigRepository.initialize();
            emit(state.copyWith(apiKeys: apiKeys));
            if (state.selectedApiKey == null) {
              emit(state.copyWith(selectedApiKey: McpApiKeys.values.first));
            }
          });
        },
        setApiKey: (e) async {
          handleEvent(emit, () async {
            await mcpConfigRepository.setApiKey(e.key, e.value);
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
          handleEvent(emit, () async {
            emit(state.copyWith(selectedApiKey: e.key));
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
