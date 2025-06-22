import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/common_il8n.dart';
import 'package:flutter_common/constants/size_constants.dart';
import 'package:flutter_common/state/mcp_config/mcp_config_state.dart';
import 'package:mcp_client/mcp_client.dart';

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
        TextFormField(
          controller: widget.controller,
          obscureText: _isObscured,
          decoration: InputDecoration(
            labelText: '${widget.apiKey.name} ${Tr.mcp.apiKey.title.tr()}',
            hintText: Tr.mcp.apiKey.hint.tr(),
            hintStyle: TextStyle(
              fontSize: SizeConstants.getTextFieldHintFontSize(context),
            ),
            border: const OutlineInputBorder(),
            suffixIcon: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(
                    _isObscured ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _isObscured = !_isObscured;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: widget.onClear,
              child: Text(Tr.mcp.apiKey.clear.tr()),
            ),
            const SizedBox(width: 8),
            ElevatedButton(
              onPressed: widget.onSave,
              child: Text(Tr.mcp.apiKey.save.tr()),
            ),
          ],
        ),
        const SizedBox(height: 4.0),
      ],
    );
  }
}
