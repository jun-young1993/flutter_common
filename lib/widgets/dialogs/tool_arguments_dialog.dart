import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:mcp_llm/mcp_llm.dart';

/// 툴 호출의 arguments를 보여주는 다이얼로그
class ToolArgumentsDialog extends StatelessWidget {
  final LlmToolCall toolCall;

  const ToolArgumentsDialog({
    super.key,
    required this.toolCall,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    // arguments를 예쁘게 포맷팅
    String formattedArguments;
    try {
      final prettyString =
          const JsonEncoder.withIndent('  ').convert(toolCall.arguments);
      formattedArguments = prettyString;
    } catch (e) {
      formattedArguments = toolCall.arguments.toString();
    }

    return AlertDialog(
      title: Row(
        children: [
          Icon(
            Icons.build_outlined,
            color: theme.colorScheme.primary,
            size: 20,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              toolCall.name,
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      content: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.8,
          maxHeight: MediaQuery.of(context).size.height * 0.6,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '사용된 인수들:',
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: theme.colorScheme.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: theme.colorScheme.outline.withOpacity(0.3),
                ),
              ),
              child: SingleChildScrollView(
                child: SelectableText(
                  formattedArguments,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    fontFamily: 'monospace',
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            if (toolCall.id != null) ...[
              const SizedBox(height: 12),
              Text(
                'Tool ID: ${toolCall.id}',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('닫기'),
        ),
      ],
    );
  }

  /// 다이얼로그를 표시하는 헬퍼 메서드
  static Future<void> show(BuildContext context, LlmToolCall toolCall) {
    return showDialog<void>(
      context: context,
      builder: (context) => ToolArgumentsDialog(toolCall: toolCall),
    );
  }
}
