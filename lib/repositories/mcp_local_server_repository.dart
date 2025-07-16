import 'package:flutter/foundation.dart';
import 'package:flutter_contacts/contact.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:mcp_server/mcp_server.dart';
import 'dart:async';
import 'dart:io';
import 'dart:convert';

import 'package:permission_handler/permission_handler.dart';

abstract class McpLocalServerRepository {
  Future<void> initialize({
    required int port,
    required Function(String) onConnect,
    required Function(String) onDisconnect,
  });
}

class McpLocalServerDefaultRepository extends McpLocalServerRepository {
  McpLocalServerDefaultRepository();

  @override
  Future<void> initialize(
      {required int port,
      required Function(String) onConnect,
      required Function(String) onDisconnect}) async {
    // MCP STDIO Mode
    await startMcpServer(
        mode: 'sse',
        port: port,
        onConnect: onConnect,
        onDisconnect: onDisconnect);
  }

  Future<void> startMcpServer(
      {required String mode,
      int port = 8080,
      required Function(String) onConnect,
      required Function(String) onDisconnect}) async {
    try {
      // Create and start server with unified API
      final serverResult = await McpServer.createAndStart(
        config: McpServer.simpleConfig(
          name: 'Flutter MCP Demo',
          version: '1.0.0',
          enableDebugLogging: false,
        ),
        transportConfig: mode == 'stdio'
            ? const TransportConfig.stdio()
            : TransportConfig.sse(
                endpoint: '/sse',
                messagesEndpoint: '/message',
                host: '0.0.0.0',
                port: port,
              ),
      );

      await serverResult.fold(
        (server) async {
          // Register tools, resources, and prompts
          _registerTools(server);
          // _registerResources(server);
          // _registerPrompts(server);

          // Set up transport closure handling
          server.onDisconnect.listen((_) {
            onDisconnect('Client disconnected, shutting down.');
          });
          server.onConnect.listen((_) {
            onConnect('Client connected');
          });

          // Send initial log message
          server.sendLog(
              McpLogLevel.info, 'Flutter MCP Server started successfully');

          if (mode == 'sse') {
            debugPrint('SSE Server is running on:');
            debugPrint('- SSE endpoint:     http://localhost:$port/sse');
            debugPrint('- Message endpoint: http://localhost:$port/message');
            debugPrint('Press Ctrl+C to stop the server');
          } else {
            debugPrint('STDIO Server initialized and connected to transport');
          }
          onConnect('Server started');
          // Keep server running
          // await Future.delayed(const Duration(hours: 24)); // Run for 24 hours
        },
        (error) {
          debugPrint('Error initializing MCP server: $error');
        },
      );
    } catch (e, stackTrace) {
      debugPrint('Error initializing MCP server: $e');
      debugPrint(stackTrace.toString());
    }
  }

  void _registerTools(Server server) {
    // 연락처 목록 가져오기 툴 (예시)

    server.addTool(
      name: "contacts",
      description:
          'Get the list of contacts from the phone.  If arguments are provided, contacts will be filtered based on those conditions. If no arguments are provided, all contacts will be retrieved.',
      // End of Selection
      inputSchema: {
        'type': 'object',
        'properties': {
          'nameFilter': {
            'type': 'string',
            'description': 'Filter contacts by name (optional)',
            'default': null
          },
          'phoneFilter': {
            'type': 'string',
            'description': 'Filter contacts by phone number (optional)',
            'default': null
          },
        },
      },
      handler: (args) async {
        debugPrint('🔥 [args] $args');
        debugPrint(
            '🔥 [Permission.contacts.status] ${await Permission.contacts.status}');
        if (await Permission.contacts.status.isDenied) {
          await Permission.contacts.request();
        }
        List<Contact> contacts = await FlutterContacts.getContacts();

        final nameFilter = (args['nameFilter'] as String?)?.trim();
        final phoneFilter = (args['phoneFilter'] as String?)?.trim();

        final filteredContacts = contacts.where((c) {
          final name = c.displayName;
          if (nameFilter != null && !name.contains(nameFilter)) {
            return false;
          }
          final phones = c.phones.map((p) => p.toString()).join(', ');
          if (phoneFilter != null && !phones.contains(phoneFilter)) {
            return false;
          }
          return true;
        }).toList();

        final contactStrings = filteredContacts.map((c) {
          final name = c.displayName;

          final phones = c.phones.map((p) => p.toString()).join(', ');

          return '$name($phones)';
        }).toList();
        debugPrint('🔥 [contactStrings] $contactStrings');
        return CallToolResult(
          content: [
            TextContent(
              text: contactStrings.isEmpty
                  ? 'No contacts found.'
                  : 'Contact List:\n${contactStrings.join('\r\n')}',
            ),
          ],
        );
      },
    );
  }

//   void _registerResources(Server server) {
//     // System info resource
//     server.addResource(
//         uri: 'flutter://system-info',
//         name: 'System Information',
//         description: 'Detailed information about the current system',
//         mimeType: 'application/json',
//         uriTemplate: {'type': 'object', 'properties': {}},
//         handler: (uri, params) async {
//           final systemInfo = {
//             'operatingSystem': Platform.operatingSystem,
//             'operatingSystemVersion': Platform.operatingSystemVersion,
//             'localHostname': Platform.localHostname,
//             'numberOfProcessors': Platform.numberOfProcessors,
//             'localeName': Platform.localeName,
//             'executable': Platform.executable,
//             'resolvedExecutable': Platform.resolvedExecutable,
//             'script': Platform.script.toString(),
//           };

//           final contents = systemInfo.entries
//               .map((entry) => ResourceContentInfo(
//                     uri: 'flutter://system-info/${entry.key}',
//                     text: '${entry.key}: ${entry.value}',
//                   ))
//               .toList();

//           return ReadResourceResult(
//             contents: contents,
//           );
//         });

//     // Environment variables resource
//     server.addResource(
//         uri: 'flutter://env-vars',
//         name: 'Environment Variables',
//         description: 'List of system environment variables',
//         mimeType: 'application/json',
//         uriTemplate: {'type': 'object', 'properties': {}},
//         handler: (uri, params) async {
//           final envVars = Platform.environment;

//           return ReadResourceResult(
//             contents: [
//               ResourceContentInfo(
//                 uri: uri,
//                 mimeType: 'application/json',
//                 text: jsonEncode(envVars),
//               )
//             ],
//           );
//         });

//     // Sample file resource with URI template
//     server.addResource(
//       uri: 'file://{path}',
//       name: 'File Resource',
//       description: 'Access files on the system',
//       mimeType: 'application/octet-stream',
//       uriTemplate: {
//         'type': 'object',
//         'properties': {
//           'path': {'type': 'string', 'description': 'Path to the file'}
//         }
//       },
//       handler: (uri, params) async {
//         try {
//           // Extract path from parameters if not provided in URI
//           String? path = params['path'] ?? uri.substring('file://'.length);

//           if (path == null || path.isEmpty) {
//             throw McpError('No path provided');
//           }

//           // Security check - define your own temp directory logic without path_provider
//           final tempDir = Directory.systemTemp;
//           if (!path.startsWith(tempDir.path)) {
//             throw McpError('Access denied to path outside of temp directory');
//           }

//           // Read file
//           final file = File(path);
//           if (!await file.exists()) {
//             throw McpError('File not found: $path');
//           }

//           final contents = await file.readAsString();
//           String mimeType = 'text/plain';

//           // Simple mime type detection
//           if (path.endsWith('.json')) {
//             mimeType = 'application/json';
//           } else if (path.endsWith('.html')) {
//             mimeType = 'text/html';
//           } else if (path.endsWith('.css')) {
//             mimeType = 'text/css';
//           } else if (path.endsWith('.js')) {
//             mimeType = 'application/javascript';
//           }

//           return ReadResourceResult(
//             contents: [
//               ResourceContentInfo(
//                 uri: 'file://$path',
//                 mimeType: mimeType,
//                 text: contents,
//               )
//             ],
//           );
//         } catch (e) {
//           throw McpError('Error reading file: $e');
//         }
//       },
//     );
//   }

//   void _registerPrompts(Server server) {
//     // Simple greeting prompt
//     server.addPrompt(
//       name: 'greeting',
//       description: 'Generate a greeting for a user',
//       arguments: [
//         PromptArgument(
//           name: 'name',
//           description: 'Name of the person to greet',
//           required: true,
//         ),
//         PromptArgument(
//           name: 'formal',
//           description: 'Whether to use formal greeting style',
//           required: false,
//         ),
//       ],
//       handler: (args) async {
//         final name = args['name'] as String;
//         final formal = args['formal'] as bool? ?? false;

//         final String systemPrompt = formal
//             ? 'You are a formal assistant. Address the user with respect and formality.'
//             : 'You are a friendly assistant. Be warm and casual in your tone.';

//         final messages = [
//           Message(
//             role: MessageRole.system.toString().split('.').last,
//             content: TextContent(text: systemPrompt),
//           ),
//           Message(
//             role: MessageRole.user.toString().split('.').last,
//             content: TextContent(text: 'Please greet $name'),
//           ),
//         ];

//         return GetPromptResult(
//           description: 'A ${formal ? 'formal' : 'casual'} greeting for $name',
//           messages: messages,
//         );
//       },
//     );

//     // Code review prompt
//     server.addPrompt(
//       name: 'codeReview',
//       description: 'Generate a code review for a code snippet',
//       arguments: [
//         PromptArgument(
//           name: 'code',
//           description: 'Code to review',
//           required: true,
//         ),
//         PromptArgument(
//           name: 'language',
//           description: 'Programming language of the code',
//           required: true,
//         ),
//       ],
//       handler: (args) async {
//         final code = args['code'] as String;
//         final language = args['language'] as String;

//         const systemPrompt = '''
// You are an expert code reviewer. Review the provided code with these guidelines:
// 1. Identify potential bugs or issues
// 2. Suggest optimizations for performance or readability
// 3. Highlight good practices used in the code
// 4. Provide constructive feedback for improvements
// Be specific in your feedback and provide code examples when suggesting changes.
// ''';

//         final messages = [
//           Message(
//             role: MessageRole.system.toString().split('.').last,
//             content: const TextContent(text: systemPrompt),
//           ),
//           Message(
//             role: MessageRole.user.toString().split('.').last,
//             content: TextContent(
//                 text:
//                     'Please review this $language code:\n\n```$language\n$code\n```'),
//           ),
//         ];

//         return GetPromptResult(
//           description: 'Code review for $language code',
//           messages: messages,
//         );
//       },
//     );
//   }
}
