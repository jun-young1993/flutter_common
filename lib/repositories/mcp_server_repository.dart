import 'package:flutter/foundation.dart';
import 'package:mcp_server/mcp_server.dart';
import 'dart:async';
import 'dart:io';
import 'dart:convert';

abstract class McpServerRepository {
  Future<void> initialize({
    required Function(String) onConnect,
    required Function(String) onDisconnect,
  });
}

class McpServerDefaultRepository extends McpServerRepository {
  final int port;

  McpServerDefaultRepository({
    required this.port,
  });

  @override
  Future<void> initialize(
      {required Function(String) onConnect,
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
          enableDebugLogging: true,
        ),
        transportConfig: mode == 'stdio'
            ? const TransportConfig.stdio()
            : TransportConfig.sse(
                endpoint: '/sse',
                messagesEndpoint: '/message',
                host: 'localhost',
                port: port,
              ),
      );

      await serverResult.fold(
        (server) async {
          // Register tools, resources, and prompts
          _registerTools(server);
          _registerResources(server);
          _registerPrompts(server);

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
          await Future.delayed(const Duration(hours: 24)); // Run for 24 hours
        },
        (error) {
          debugPrint('Error initializing MCP server: $error');
          exit(1);
        },
      );
    } catch (e, stackTrace) {
      debugPrint('Error initializing MCP server: $e');
      debugPrint(stackTrace.toString());
      exit(1);
    }
  }

  void _registerTools(Server server) {
    // Hello world tool
    server.addTool(
      name: 'hello',
      description: 'Says hello to someone',
      inputSchema: {
        'type': 'object',
        'properties': {
          'name': {'type': 'string', 'description': 'Name to say hello to'}
        },
        'required': []
      },
      handler: (args) async {
        final name = args['name'] ?? 'world';
        return CallToolResult(content: [TextContent(text: 'Hello, $name!')]);
      },
    );

    // Calculator tool
    server.addTool(
      name: 'calculator',
      description: 'Perform basic arithmetic operations',
      inputSchema: {
        'type': 'object',
        'properties': {
          'operation': {
            'type': 'string',
            'enum': ['add', 'subtract', 'multiply', 'divide'],
            'description': 'Mathematical operation to perform'
          },
          'a': {'type': 'number', 'description': 'First operand'},
          'b': {'type': 'number', 'description': 'Second operand'}
        },
        'required': ['operation', 'a', 'b']
      },
      handler: (args) async {
        final operation = args['operation'] as String;
        final a = (args['a'] is int)
            ? (args['a'] as int).toDouble()
            : args['a'] as double;
        final b = (args['b'] is int)
            ? (args['b'] as int).toDouble()
            : args['b'] as double;

        double result;
        switch (operation) {
          case 'add':
            result = a + b;
            break;
          case 'subtract':
            result = a - b;
            break;
          case 'multiply':
            result = a * b;
            break;
          case 'divide':
            if (b == 0) {
              throw McpError('Cannot divide by zero');
            }
            result = a / b;
            break;
          default:
            throw McpError('Unknown operation: $operation');
        }

        return CallToolResult(content: [TextContent(text: 'Result: $result')]);
      },
    );

    // Date and time tool
// Date and time tool
    server.addTool(
      name: 'currentDateTime',
      description: 'Get the current date and time',
      inputSchema: {
        'type': 'object',
        'properties': {
          'format': {
            'type': 'string',
            'description': 'Output format (full, date, time)',
            'default': 'full'
          }
        },
        'required': []
      },
      handler: (args) async {
        try {
          debugPrint("[DateTime Tool] Received args: $args");

          String format;
          if (args['format'] == null) {
            format = 'full';
          } else if (args['format'] is String) {
            format = args['format'] as String;
          } else {
            format = args['format'].toString();
          }

          debugPrint("[DateTime Tool] Using format: $format");

          final now = DateTime.now();
          debugPrint("[DateTime Tool] Current DateTime: $now");

          String result;
          switch (format) {
            case 'date':
              result =
                  '${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}';
              break;
            case 'time':
              try {
                final hour = now.hour.toString().padLeft(2, '0');
                final minute = now.minute.toString().padLeft(2, '0');
                final second = now.second.toString().padLeft(2, '0');
                result = '$hour:$minute:$second';
              } catch (e) {
                debugPrint("[DateTime Tool] Error formatting time: $e");
                result = "Error formatting time: $e";
              }
              break;
            case 'full':
            default:
              try {
                result = now.toIso8601String();
              } catch (e) {
                debugPrint("[DateTime Tool] Error with ISO format: $e");
                result =
                    "${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')} "
                    "${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}:${now.second.toString().padLeft(2, '0')}";
              }
              break;
          }

          debugPrint("[DateTime Tool] Result: $result");
          return CallToolResult(content: [TextContent(text: result)]);
        } catch (e, stackTrace) {
          debugPrint("[DateTime Tool] Unexpected error: $e");
          debugPrint("[DateTime Tool] Stack trace: $stackTrace");
          return CallToolResult(
              content: [TextContent(text: "Error getting date/time: $e")],
              isError: true);
        }
      },
    );
  }

  void _registerResources(Server server) {
    // System info resource
    server.addResource(
        uri: 'flutter://system-info',
        name: 'System Information',
        description: 'Detailed information about the current system',
        mimeType: 'application/json',
        uriTemplate: {'type': 'object', 'properties': {}},
        handler: (uri, params) async {
          final systemInfo = {
            'operatingSystem': Platform.operatingSystem,
            'operatingSystemVersion': Platform.operatingSystemVersion,
            'localHostname': Platform.localHostname,
            'numberOfProcessors': Platform.numberOfProcessors,
            'localeName': Platform.localeName,
            'executable': Platform.executable,
            'resolvedExecutable': Platform.resolvedExecutable,
            'script': Platform.script.toString(),
          };

          final contents = systemInfo.entries
              .map((entry) => ResourceContentInfo(
                    uri: 'flutter://system-info/${entry.key}',
                    text: '${entry.key}: ${entry.value}',
                  ))
              .toList();

          return ReadResourceResult(
            contents: contents,
          );
        });

    // Environment variables resource
    server.addResource(
        uri: 'flutter://env-vars',
        name: 'Environment Variables',
        description: 'List of system environment variables',
        mimeType: 'application/json',
        uriTemplate: {'type': 'object', 'properties': {}},
        handler: (uri, params) async {
          final envVars = Platform.environment;

          return ReadResourceResult(
            contents: [
              ResourceContentInfo(
                uri: uri,
                mimeType: 'application/json',
                text: jsonEncode(envVars),
              )
            ],
          );
        });

    // Sample file resource with URI template
    server.addResource(
      uri: 'file://{path}',
      name: 'File Resource',
      description: 'Access files on the system',
      mimeType: 'application/octet-stream',
      uriTemplate: {
        'type': 'object',
        'properties': {
          'path': {'type': 'string', 'description': 'Path to the file'}
        }
      },
      handler: (uri, params) async {
        try {
          // Extract path from parameters if not provided in URI
          String? path = params['path'] ?? uri.substring('file://'.length);

          if (path == null || path.isEmpty) {
            throw McpError('No path provided');
          }

          // Security check - define your own temp directory logic without path_provider
          final tempDir = Directory.systemTemp;
          if (!path.startsWith(tempDir.path)) {
            throw McpError('Access denied to path outside of temp directory');
          }

          // Read file
          final file = File(path);
          if (!await file.exists()) {
            throw McpError('File not found: $path');
          }

          final contents = await file.readAsString();
          String mimeType = 'text/plain';

          // Simple mime type detection
          if (path.endsWith('.json')) {
            mimeType = 'application/json';
          } else if (path.endsWith('.html')) {
            mimeType = 'text/html';
          } else if (path.endsWith('.css')) {
            mimeType = 'text/css';
          } else if (path.endsWith('.js')) {
            mimeType = 'application/javascript';
          }

          return ReadResourceResult(
            contents: [
              ResourceContentInfo(
                uri: 'file://$path',
                mimeType: mimeType,
                text: contents,
              )
            ],
          );
        } catch (e) {
          throw McpError('Error reading file: $e');
        }
      },
    );
  }

  void _registerPrompts(Server server) {
    // Simple greeting prompt
    server.addPrompt(
      name: 'greeting',
      description: 'Generate a greeting for a user',
      arguments: [
        PromptArgument(
          name: 'name',
          description: 'Name of the person to greet',
          required: true,
        ),
        PromptArgument(
          name: 'formal',
          description: 'Whether to use formal greeting style',
          required: false,
        ),
      ],
      handler: (args) async {
        final name = args['name'] as String;
        final formal = args['formal'] as bool? ?? false;

        final String systemPrompt = formal
            ? 'You are a formal assistant. Address the user with respect and formality.'
            : 'You are a friendly assistant. Be warm and casual in your tone.';

        final messages = [
          Message(
            role: MessageRole.system.toString().split('.').last,
            content: TextContent(text: systemPrompt),
          ),
          Message(
            role: MessageRole.user.toString().split('.').last,
            content: TextContent(text: 'Please greet $name'),
          ),
        ];

        return GetPromptResult(
          description: 'A ${formal ? 'formal' : 'casual'} greeting for $name',
          messages: messages,
        );
      },
    );

    // Code review prompt
    server.addPrompt(
      name: 'codeReview',
      description: 'Generate a code review for a code snippet',
      arguments: [
        PromptArgument(
          name: 'code',
          description: 'Code to review',
          required: true,
        ),
        PromptArgument(
          name: 'language',
          description: 'Programming language of the code',
          required: true,
        ),
      ],
      handler: (args) async {
        final code = args['code'] as String;
        final language = args['language'] as String;

        const systemPrompt = '''
You are an expert code reviewer. Review the provided code with these guidelines:
1. Identify potential bugs or issues
2. Suggest optimizations for performance or readability
3. Highlight good practices used in the code
4. Provide constructive feedback for improvements
Be specific in your feedback and provide code examples when suggesting changes.
''';

        final messages = [
          Message(
            role: MessageRole.system.toString().split('.').last,
            content: const TextContent(text: systemPrompt),
          ),
          Message(
            role: MessageRole.user.toString().split('.').last,
            content: TextContent(
                text:
                    'Please review this $language code:\n\n```$language\n$code\n```'),
          ),
        ];

        return GetPromptResult(
          description: 'Code review for $language code',
          messages: messages,
        );
      },
    );
  }
}
