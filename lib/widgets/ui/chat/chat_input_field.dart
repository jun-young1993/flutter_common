import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/common_il8n.dart';
import 'package:flutter_common/constants/size_constants.dart';
import 'package:flutter_common/state/mcp_config/mcp_config_state.dart';

class ChatInputField extends StatefulWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final bool enabled;
  final bool isLoading;
  final bool isApiKeySet;
  final bool isConnected;
  final VoidCallback onSend;
  final McpApiKeys apiKey;
  final String? hintText;

  const ChatInputField({
    super.key,
    required this.controller,
    required this.focusNode,
    required this.enabled,
    required this.isLoading,
    required this.isApiKeySet,
    required this.isConnected,
    required this.onSend,
    required this.apiKey,
    this.hintText,
  });

  @override
  State<ChatInputField> createState() => _ChatInputFieldState();
}

class _ChatInputFieldState extends State<ChatInputField> {
  Timer? _timer;
  int _dotCount = 1;

  @override
  void initState() {
    super.initState();
    if (widget.isLoading) {
      _startTimer();
    }
  }

  @override
  void didUpdateWidget(ChatInputField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isLoading != oldWidget.isLoading) {
      if (widget.isLoading) {
        _startTimer();
      } else {
        _stopTimer();
      }
    }
  }

  @override
  void dispose() {
    _stopTimer();
    super.dispose();
  }

  void _startTimer() {
    // Reset dot count when timer starts
    _dotCount = 1;
    _timer = Timer.periodic(const Duration(milliseconds: 400), (timer) {
      if (mounted) {
        setState(() {
          _dotCount = (_dotCount % 3) + 1;
        });
      }
    });
  }

  void _stopTimer() {
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (widget.isLoading)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${Tr.chat.thinking.tr()}${'.' * _dotCount}',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  focusNode: widget.focusNode,
                  controller: widget.controller,
                  enabled: widget.enabled,
                  decoration: InputDecoration(
                    hintText: widget.hintText ?? Tr.chat.enterMessage.tr(),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 12.0,
                    ),
                    hintStyle: TextStyle(
                      fontSize: SizeConstants.getTextFieldHintFontSize(context),
                    ),
                  ),
                  textInputAction: TextInputAction.send,
                  onSubmitted: widget.enabled ? (_) => widget.onSend() : null,
                  minLines: 1,
                  maxLines: 5,
                ),
              ),
              const SizedBox(width: 8.0),
              IconButton(
                icon: const Icon(Icons.send),
                onPressed: widget.enabled ? widget.onSend : null,
                tooltip: Tr.chat.sendMessageTooltip.tr(),
              ),
            ],
          ),
        ),
        if (!widget.isApiKeySet)
          Padding(
            padding: const EdgeInsets.only(
              bottom: 8.0,
              left: 16.0,
              right: 16.0,
            ),
            child: Text(
              Tr.chat.apiKeyInstruction.tr(
                  namedArgs: {'apiKeyName': widget.apiKey.name.toUpperCase()}),
              style: TextStyle(color: Theme.of(context).colorScheme.error),
              textAlign: TextAlign.center,
            ),
          ),
      ],
    );
  }
}
