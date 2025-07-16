import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/common_il8n.dart';
import 'package:flutter_common/state/mcp_config/mcp_config_bloc.dart';
import 'package:flutter_common/state/mcp_config/mcp_config_event.dart';
import 'package:flutter_common/state/mcp_config/mcp_config_selector.dart';
import 'package:flutter_common/state/mcp_config/mcp_config_state.dart';
import 'package:flutter_common/widgets/layout/sections/mcp_config/mcp_api_key_section.dart';
import 'package:flutter_common/widgets/ui/mcp/tool_list_item.dart';
import 'package:mcp_client/mcp_client.dart';

class McpConfigScreenLayout extends StatefulWidget {
  const McpConfigScreenLayout({super.key});

  @override
  State<McpConfigScreenLayout> createState() => _McpConfigScreenLayoutState();
}

class _McpConfigScreenLayoutState extends State<McpConfigScreenLayout> {
  // late TextEditingController _apiKeyController;
  McpConfigBloc get mcpConfigBloc => context.read<McpConfigBloc>();
  @override
  void initState() {
    super.initState();
    mcpConfigBloc.add(const McpConfigEvent.initialize());
    // _apiKeyController = TextEditingController(text: ref.read(apiKeyProvider));
  }

  @override
  void dispose() {
    // _apiKeyController.dispose();
    super.dispose();
  }

  void _showSnackbar(String message) {
    if (!mounted) return;
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), duration: const Duration(seconds: 2)),
    );
  }

  void _saveApiKey() {
    // final newApiKey = _apiKeyController.text.trim();
    // if (newApiKey.isNotEmpty) {
    //   ref
    //       .read(settingsServiceProvider)
    //       .saveApiKey(newApiKey)
    //       .then((_) => _showSnackbar('API Key Saved!'))
    //       .catchError((e) => _showSnackbar('Error saving API Key: $e'));
    // } else {
    //   _showSnackbar('API Key cannot be empty.');
    // }
    FocusScope.of(context).unfocus();
    mcpConfigBloc.add(const McpConfigEvent.initialize());
  }

  void _clearApiKey() {
    // ref
    //     .read(settingsServiceProvider)
    //     .clearApiKey()
    //     .then((_) {
    //       _apiKeyController.clear();
    //       _showSnackbar('API Key Cleared!');
    //     })
    //     .catchError((e) {
    //       _showSnackbar('Error clearing API Key: $e');
    //     });
    FocusScope.of(context).unfocus();
    mcpConfigBloc.add(const McpConfigEvent.initialize());
  }

  void _toggleServerActive(String serverId, bool isActive) {
    // ref
    //     .read(settingsServiceProvider)
    //     .toggleMcpServerActive(serverId, isActive)
    //     .catchError(
    //       (e) => _showSnackbar('Error updating server active state: $e'),
    //     );
  }

  void _deleteServer(
      // McpServerConfig server
      ) {
    // showDialog(
    //   context: context,
    //   builder: (BuildContext dialogContext) {
    //     return AlertDialog(
    //       title: const Text('Delete Server?'),
    //       content: Text(
    //         'Are you sure you want to delete the server "${server.name}"?',
    //       ),
    //       actions: <Widget>[
    //         TextButton(
    //           child: const Text('Cancel'),
    //           onPressed: () => Navigator.of(dialogContext).pop(),
    //         ),
    //         TextButton(
    //           style: TextButton.styleFrom(
    //             foregroundColor: Theme.of(context).colorScheme.error,
    //           ),
    //           child: const Text('Delete'),
    //           onPressed: () {
    //             Navigator.of(dialogContext).pop();
    //             ref
    //                 .read(settingsServiceProvider)
    //                 .deleteMcpServer(server.id)
    //                 .then(
    //                   (_) => _showSnackbar('Server "${server.name}" deleted.'),
    //                 )
    //                 .catchError(
    //                   (e) => _showSnackbar('Error deleting server: $e'),
    //                 );
    //           },
    //         ),
    //       ],
    //     );
    //   },
    // );
  }

  void _openServerDialog(
      // {McpServerConfig? serverToEdit}
      ) {
    // showServerDialog(
    //   context: context,
    //   onAddServer: (name, command, args, envVars, isActive) {},
    //   onUpdateServer: (updatedServer) {},
    //   onError: _showSnackbar,
    // );
  }

  @override
  Widget build(BuildContext context) {
    // final currentApiKey = ref.watch(apiKeyProvider);
    // final serverList = ref.watch(mcpServerListProvider);
    // final mcpState = ref.watch(mcpClientProvider);

    // final serverStatuses = mcpState.serverStatuses;
    // final serverErrors = mcpState.serverErrorMessages;
    // final connectedCount = mcpState.connectedServerCount;

    return Scaffold(
      appBar: AppBar(title: Text(Tr.mcp.setting.tr())),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // --- API Key Section ---
          ...McpApiKeys.values
              .map((e) => McpConfigApiKeySelector(
                    (apiKeys) {
                      final apiKey = apiKeys[e];
                      final controller = TextEditingController(text: apiKey);
                      return Column(
                        children: [
                          Text('${e.name} API Key'),
                          McpApiKeySection(
                            controller: controller,
                            currentApiKey: apiKey,
                            apiKey: e,
                            onSave: () {
                              mcpConfigBloc.add(
                                  McpConfigEvent.setApiKey(e, controller.text));
                            },
                            onClear: () {
                              mcpConfigBloc.add(McpConfigEvent.clearApiKey(e));
                            },
                          )
                        ],
                      );
                    },
                  ))
              .toList(),

          // const Divider(height: 24.0),

          // // --- MCP Server Section ---
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   children: [
          //     const Text(
          //       'MCP Servers',
          //       style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          //     ),
          //     IconButton(
          //       icon: const Icon(Icons.add_circle_outline),
          //       tooltip: 'Add New MCP Server',
          //       onPressed: () => _openServerDialog(),
          //     ),
          //   ],
          // ),
          // const SizedBox(height: 4.0),
          // const Text(
          //   'connectedCount server(s) connected. Changes are applied automatically.',
          //   style: TextStyle(fontSize: 12.0, color: Colors.grey),
          // ),
          // const SizedBox(height: 12.0),

          // Server List Display
          // serverList.isEmpty
          //     ? const Padding(
          //       padding: EdgeInsets.symmetric(vertical: 24.0),
          //       child: Center(
          //         child: Text(
          //           "No MCP servers configured. Click '+' to add.",
          //           textAlign: TextAlign.center,
          //           style: TextStyle(color: Colors.grey),
          //         ),
          //       ),
          //     )
          //     : ListView.builder(
          //       shrinkWrap: true,
          //       physics: const NeverScrollableScrollPhysics(),
          //       itemCount: serverList.length,
          //       itemBuilder: (context, index) {
          //         final server = serverList[index];
          //         final status =
          //             serverStatuses[server.id] ??
          //             McpConnectionStatus.disconnected;
          //         final error = serverErrors[server.id];

          //         return McpServerListItem(
          //           server: server,
          //           status: status,
          //           errorMessage: error,
          //           onToggleActive: _toggleServerActive,
          //           onEdit: (server) => _openServerDialog(serverToEdit: server),
          //           onDelete: _deleteServer,
          //         );
          //       },
          //     ),
          const SizedBox(height: 12.0),

          const Divider(height: 24.0),

          // --- Tools Section ---
          Text(
            Tr.mcp.availableTools.tr(),
            style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4.0),
          Text(
            Tr.mcp.availableToolsDesc.tr(),
            style: const TextStyle(fontSize: 12.0, color: Colors.grey),
          ),
          const SizedBox(height: 12.0),
          McpConfigToolsSelector((tools) {
            if (tools.isEmpty) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 24.0),
                child: Center(
                  child: Text(
                    Tr.mcp.noToolsAvailable.tr(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.grey),
                  ),
                ),
              );
            }
            return ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: tools.entries.map((entry) {
                final toolGroupName = entry.key; // String key
                final mcptool = entry.value; // McpTool 객체
                final tools = mcptool.tools;
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 타이틀 스타일 Card + ExpansionTile
                    Card(
                      color: Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.08),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 0.0, horizontal: 0.0),
                        child: ExpansionTile(
                          initiallyExpanded: true,
                          leading: Switch(
                            value: mcptool.isConnected,
                            onChanged: (value) {
                              mcpConfigBloc.add(
                                  McpConfigEvent.disconnectMcpServer(
                                      toolGroupName));
                              // mcpConfigBloc.add(McpConfigEvent.toggleTool(toolGroupName, value));
                            },
                          ),
                          title: Row(
                            children: [
                              Expanded(child: Text(toolGroupName)),
                            ],
                          ),
                          children: [
                            ...tools.map(
                              (tool) => Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 2.0, horizontal: 8.0),
                                  child: ToolListItem(
                                    tool: tool,
                                    isEnabled:
                                        tool.metadata?['enabled'] as bool? ??
                                            true,
                                    onToggle: (newValue) {
                                      mcpConfigBloc.add(
                                        McpConfigEvent.toggleTool(
                                            tool.name, newValue),
                                      );
                                      final action = newValue
                                          ? Tr.app.enable.tr()
                                          : Tr.app.disable.tr();
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content:
                                              Text(' ${tool.name} $action'),
                                          duration: const Duration(seconds: 1),
                                        ),
                                      );
                                    },
                                  )),
                            ),
                            const Divider(),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              }).toList(),
            );
          }),
        ],
      ),
    );
  }
}
