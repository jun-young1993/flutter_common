import 'package:flutter/material.dart';

class InputDialog {
  static Future<String?> show({
    required BuildContext context,
    String title = '입력',
    String? description,
    String? initialValue,
    String? hintText,
    String confirmText = '확인',
    String cancelText = '취소',
    bool multiline = false,
    int? maxLength,
    String? Function(String?)? validator,
    void Function(String)? onConfirm,
  }) {
    return showDialog<String>(
      context: context,
      barrierDismissible: false,
      builder: (context) => _InputDialogContent(
        title: title,
        description: description,
        initialValue: initialValue,
        hintText: hintText,
        confirmText: confirmText,
        cancelText: cancelText,
        multiline: multiline,
        maxLength: maxLength,
        validator: validator,
        onConfirm: onConfirm,
      ),
    );
  }
}

class _InputDialogContent extends StatefulWidget {
  final String title;
  final String? description;
  final String? initialValue;
  final String? hintText;
  final String confirmText;
  final String cancelText;
  final bool multiline;
  final int? maxLength;
  final String? Function(String?)? validator;
  final void Function(String)? onConfirm;

  const _InputDialogContent({
    required this.title,
    this.description,
    this.initialValue,
    this.hintText,
    required this.confirmText,
    required this.cancelText,
    this.multiline = false,
    this.maxLength,
    this.validator,
    this.onConfirm,
  });

  @override
  State<_InputDialogContent> createState() => _InputDialogContentState();
}

class _InputDialogContentState extends State<_InputDialogContent> {
  late TextEditingController _controller;
  String? _errorText;
  bool _isSubmitting = false;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialValue ?? '');
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleConfirm() {
    final value = _controller.text.trim();
    final error = widget.validator?.call(value);
    if (error != null) {
      setState(() => _errorText = error);
      return;
    }
    setState(() => _isSubmitting = true);
    widget.onConfirm?.call(value);
    Navigator.of(context).pop(value);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.edit_outlined, size: 40, color: theme.primaryColor),
            const SizedBox(height: 12),
            Text(
              widget.title,
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade800,
              ),
            ),
            if (widget.description != null) ...[
              const SizedBox(height: 8),
              Text(
                widget.description!,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: Colors.grey.shade600,
                  height: 1.5,
                ),
              ),
            ],
            const SizedBox(height: 20),
            TextField(
              controller: _controller,
              autofocus: true,
              maxLines: widget.multiline ? 5 : 1,
              minLines: 1,
              maxLength: widget.maxLength,
              decoration: InputDecoration(
                hintText: widget.hintText,
                errorText: _errorText,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey.shade200),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey.shade200),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: theme.primaryColor, width: 2),
                ),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                counterText: '',
              ),
              onChanged: (_) {
                if (_errorText != null) setState(() => _errorText = null);
              },
              textInputAction: widget.multiline
                  ? TextInputAction.newline
                  : TextInputAction.done,
              onSubmitted: (_) => _handleConfirm(),
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: _isSubmitting
                        ? null
                        : () => Navigator.of(context).pop(),
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      side: BorderSide(color: Colors.grey.shade300),
                    ),
                    child: Text(
                      widget.cancelText,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton(
                    onPressed: _isSubmitting ? null : _handleConfirm,
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      backgroundColor: theme.primaryColor,
                      foregroundColor: Colors.white,
                    ),
                    child: _isSubmitting
                        ? const SizedBox(
                            width: 18,
                            height: 18,
                            child: CircularProgressIndicator(
                                strokeWidth: 2, color: Colors.white),
                          )
                        : Text(
                            widget.confirmText,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
