import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/state/mcp_chat/mcp_chat_bloc.dart';
import 'package:flutter_common/state/mcp_chat/mcp_chat_event.dart';
import 'package:flutter_common/state/mcp_config/mcp_config_bloc.dart';
import 'package:flutter_common/state/mcp_config/mcp_config_state.dart';
import 'package:flutter_common/widgets/toast/toast.dart';

class McpConfigListener extends BlocListener<McpConfigBloc, McpConfigState> {
  McpConfigListener({super.key}) : super(listener: (context, state) {});
}
