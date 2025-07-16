import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:mcp_client/mcp_client.dart';

class ToolListItem extends StatelessWidget {
  final Tool tool;
  final bool isEnabled;
  final ValueChanged<bool>? onToggle;

  const ToolListItem({
    super.key,
    required this.tool,
    required this.isEnabled,
    this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    const jsonEncoder = JsonEncoder.withIndent('  ');

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ExpansionTile(
        // leading: Switch(
        //   value: isEnabled,
        //   onChanged: onToggle,
        //   activeColor: theme.colorScheme.primary,
        // ),
        title: Row(
          children: [
            Expanded(
              child: Text(
                tool.name,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
            ),
          ],
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Text(
            tool.description,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: theme.textTheme.bodySmall?.color, fontSize: 10),
          ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0).copyWith(top: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSectionTitle('Features'),
                if ((tool.supportsProgress ?? false) ||
                    (tool.supportsCancellation ?? false))
                  Wrap(
                    spacing: 8.0,
                    runSpacing: 4.0,
                    children: [
                      if (tool.supportsProgress ?? false)
                        const Chip(
                          avatar: Icon(Icons.check_circle,
                              color: Colors.green, size: 18),
                          label: Text('Progress Updates'),
                          visualDensity:
                              VisualDensity(horizontal: 0.0, vertical: -2),
                        ),
                      if (tool.supportsCancellation ?? false)
                        const Chip(
                          avatar:
                              Icon(Icons.cancel, color: Colors.red, size: 18),
                          label: Text('Cancellable'),
                          visualDensity:
                              VisualDensity(horizontal: 0.0, vertical: -2),
                        ),
                    ],
                  )
                else
                  Text('No special features supported.',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: theme.disabledColor)),
                const SizedBox(height: 16),
                _buildSectionTitle('Input Schema (Parameters)'),
                _buildCodeBlock(jsonEncoder.convert(tool.inputSchema), context),
                if (tool.metadata != null && tool.metadata!.isNotEmpty) ...[
                  const SizedBox(height: 16),
                  _buildSectionTitle('Metadata'),
                  _buildCodeBlock(jsonEncoder.convert(tool.metadata!), context),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
    );
  }

  Widget _buildCodeBlock(String code, BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface.withOpacity(0.5),
        borderRadius: BorderRadius.circular(8.0),
        border:
            Border.all(color: Theme.of(context).dividerColor.withOpacity(0.5)),
      ),
      child: SelectableText(
        code,
        style: const TextStyle(fontFamily: 'monospace', fontSize: 12),
      ),
    );
  }
}
