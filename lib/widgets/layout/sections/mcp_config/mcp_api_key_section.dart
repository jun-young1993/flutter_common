import 'package:flutter/material.dart';
import 'package:flutter_common/constants/size_constants.dart';
import 'package:flutter_common/state/mcp_config/mcp_config_state.dart';

class McpApiKeySection extends StatefulWidget {
  final TextEditingController controller;
  final String? currentApiKey;
  final McpApiKeys apiKey;
  final Function() onSave;
  final Function() onClear;

  const McpApiKeySection({
    super.key,
    required this.controller,
    required this.currentApiKey,
    required this.apiKey,
    required this.onSave,
    required this.onClear,
  });

  @override
  State<McpApiKeySection> createState() => _McpApiKeySectionState();
}

class _McpApiKeySectionState extends State<McpApiKeySection> {
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8.0),
        TextField(
          controller: widget.controller,
          obscureText: _isObscured,
          decoration: InputDecoration(
            hintText: 'Enter your "${widget.apiKey.name}" API Key',
            hintStyle: TextStyle(
              fontSize: SizeConstants.getTextFieldHintFontSize(context),
            ),
            border: const OutlineInputBorder(),
            suffixIcon: IconButton(
              icon: Icon(
                _isObscured ? Icons.visibility : Icons.visibility_off,
              ),
              onPressed: () {
                setState(() {
                  _isObscured = !_isObscured;
                });
              },
            ),
          ),
          onSubmitted: (_) => widget.onSave(),
        ),
        const SizedBox(height: 8.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton.icon(
              icon: const Icon(Icons.save),
              label: const Text('Save Key'),
              onPressed: widget.onSave,
            ),
            if (widget.currentApiKey != null &&
                widget.currentApiKey!.isNotEmpty)
              TextButton.icon(
                icon: const Icon(Icons.clear),
                label: const Text('Clear Key'),
                onPressed: widget.onClear,
                style: TextButton.styleFrom(
                  foregroundColor: theme.colorScheme.error,
                ),
              ),
          ],
        ),
        const SizedBox(height: 4.0),
      ],
    );
  }
}
