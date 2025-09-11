import 'package:flutter/material.dart';
import 'package:flutter_common/widgets/lib/container/card_container_item.dart';

class CardField extends StatelessWidget {
  final String label;
  final String value;
  final bool isEditable;
  final VoidCallback? onEdit;
  final Widget? suffix;
  final String? hintText;
  final bool isLoading;

  const CardField({
    super.key,
    required this.label,
    required this.value,
    this.isEditable = false,
    this.onEdit,
    this.suffix,
    this.hintText,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade50,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey.shade200),
        ),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                // 라벨
                Expanded(
                  flex: 2,
                  child: Text(
                    label,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[700],
                        ),
                  ),
                ),
                const SizedBox(width: 16),
                // 값
                Expanded(
                  flex: 3,
                  child: _buildValue(context),
                ),
                // 편집 버튼 또는 서픽스
                if (isEditable || suffix != null) ...[
                  const SizedBox(width: 12),
                  _buildSuffix(context),
                ],
              ],
            ),
          ),
        ]));
  }

  Widget _buildValue(BuildContext context) {
    if (isLoading) {
      return Row(
        children: [
          SizedBox(
            width: 16,
            height: 16,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              valueColor: AlwaysStoppedAnimation<Color>(
                Theme.of(context).primaryColor,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Text(
            '로딩 중...',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.grey[600],
                ),
          ),
        ],
      );
    }

    if (value.isEmpty) {
      return Text(
        hintText ?? '값이 없습니다',
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Colors.grey[500],
              fontStyle: FontStyle.italic,
            ),
      );
    }

    return Text(
      value,
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w500,
          ),
    );
  }

  Widget _buildSuffix(BuildContext context) {
    if (suffix != null) {
      return suffix!;
    }

    if (isEditable) {
      return GestureDetector(
        onTap: onEdit,
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            Icons.edit,
            size: 18,
            color: Theme.of(context).primaryColor,
          ),
        ),
      );
    }

    return const SizedBox.shrink();
  }
}

// 읽기 전용 필드 (편집 불가)
class ReadOnlyCardField extends StatelessWidget {
  final String label;
  final String value;
  final Widget? suffix;
  final String? hintText;
  final bool isLoading;

  const ReadOnlyCardField({
    super.key,
    required this.label,
    required this.value,
    this.suffix,
    this.hintText,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return CardField(
      label: label,
      value: value,
      isEditable: false,
      suffix: suffix,
      hintText: hintText,
      isLoading: isLoading,
    );
  }
}

// 편집 가능한 필드
class EditableCardField extends StatelessWidget {
  final String label;
  final String value;
  final VoidCallback? onEdit;
  final Widget? suffix;
  final String? hintText;
  final bool isLoading;

  const EditableCardField({
    super.key,
    required this.label,
    required this.value,
    this.onEdit,
    this.suffix,
    this.hintText,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return CardField(
      label: label,
      value: value,
      isEditable: true,
      onEdit: onEdit,
      suffix: suffix,
      hintText: hintText,
      isLoading: isLoading,
    );
  }
}

// 실제 입력 필드
class InputCardField extends StatefulWidget {
  final String label;
  final String? initialValue;
  final String? hintText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Widget? suffix;
  final Widget? prefix;
  final bool enabled;
  final int? maxLines;
  final int? maxLength;
  final bool readOnly;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final bool? initialShowEditableWidget;

  const InputCardField({
    super.key,
    required this.label,
    this.initialValue,
    this.hintText,
    this.controller,
    this.validator,
    this.onChanged,
    this.onSubmitted,
    this.keyboardType,
    this.obscureText = false,
    this.suffix,
    this.prefix,
    this.enabled = true,
    this.maxLines = 1,
    this.maxLength,
    this.readOnly = false,
    this.focusNode,
    this.textInputAction,
    this.initialShowEditableWidget,
  });

  @override
  State<InputCardField> createState() => _InputCardFieldState();
}

class _InputCardFieldState extends State<InputCardField> {
  late bool showEditableWidget;

  @override
  void initState() {
    super.initState();
    showEditableWidget = widget.initialShowEditableWidget ?? true;
  }

  @override
  Widget build(BuildContext context) {
    if (showEditableWidget) {
      return EditableCardField(
        label: widget.label,
        value: widget.initialValue ?? '',
        onEdit: () {
          setState(() {
            showEditableWidget = false;
          });
        },
        suffix: widget.suffix,
        hintText: widget.hintText,
      );
    }

    return Container(
      decoration: BoxDecoration(
        color: widget.enabled ? Colors.white : Colors.grey.shade50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: widget.enabled ? Colors.grey.shade300 : Colors.grey.shade200,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 라벨
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: Text(
              widget.label,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: widget.enabled ? Colors.grey[700] : Colors.grey[500],
                  ),
            ),
          ),
          // 입력 필드
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: widget.controller,
                    initialValue:
                        widget.controller == null ? widget.initialValue : null,
                    validator: widget.validator,
                    onChanged: widget.onChanged,
                    onFieldSubmitted: (value) {
                      setState(() {
                        showEditableWidget = true;
                      });
                      widget.onSubmitted?.call(value);
                    },
                    keyboardType: widget.keyboardType,
                    obscureText: widget.obscureText,
                    enabled: widget.enabled,
                    maxLines: widget.maxLines,
                    maxLength: widget.maxLength,
                    readOnly: widget.readOnly,
                    focusNode: widget.focusNode,
                    textInputAction: widget.textInputAction,
                    decoration: InputDecoration(
                      hintText: widget.hintText,
                      hintStyle: TextStyle(
                        color: Colors.grey[400],
                        fontStyle: FontStyle.italic,
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.zero,
                      prefixIcon: widget.prefix,
                      suffixIcon: widget.suffix,
                      counterText: '', // maxLength 카운터 숨기기
                    ),
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                          color: widget.enabled
                              ? Colors.black87
                              : Colors.grey[600],
                        ),
                  ),
                ),
                // 완료 버튼
                const SizedBox(width: 8),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      showEditableWidget = true;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      Icons.check,
                      size: 18,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
