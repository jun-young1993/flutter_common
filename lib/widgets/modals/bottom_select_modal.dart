import 'package:flutter/material.dart';
import 'package:flutter_common/flutter_common.dart';

typedef BottomSelectLabelBuilder<T> = String Function(T item);
typedef BottomSelectRowLeadingBuilder<T> = Widget? Function(
  BuildContext context,
  T item,
  bool isSelected,
);
typedef BottomSelectRowTrailingBuilder<T> = Widget? Function(
  BuildContext context,
  T item,
  bool isSelected,
);
typedef BottomSelectRowActionsBuilder<T> = List<Widget> Function(
  BuildContext context,
  T item,
  bool isSelected,
);
typedef BottomSelectTitleActionBuilder<T> = Widget? Function(
  BuildContext context,
  T? selected,
);

class BottomSelectModal {
  static Future<T?> show<T>({
    required BuildContext context,
    required List<T> items,
    T? initialValue,
    String? title,
    String? confirmText,
    String? cancelText,
    bool barrierDismissible = true,
    BottomSelectLabelBuilder<T>? labelBuilder,
    BottomSelectRowLeadingBuilder<T>? leadingBuilder,
    BottomSelectRowTrailingBuilder<T>? trailingBuilder,
    BottomSelectRowActionsBuilder<T>? actionsBuilder,
    BottomSelectTitleActionBuilder<T>? titleActionBuilder,
    ValueChanged<T?>? onConfirm,
  }) {
    return showModalBottomSheet<T?>(
      context: context,
      isScrollControlled: true,
      isDismissible: barrierDismissible,
      backgroundColor: Theme.of(context).colorScheme.surface,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16),
        ),
      ),
      builder: (BuildContext sheetContext) {
        return _BottomSelectModalContent<T>(
          items: items,
          initialValue: initialValue,
          title: title,
          confirmText: confirmText ?? Tr.app.confirm.tr(),
          cancelText: cancelText ?? Tr.app.cancel.tr(),
          labelBuilder: labelBuilder,
          leadingBuilder: leadingBuilder,
          trailingBuilder: trailingBuilder,
          actionsBuilder: actionsBuilder,
          titleActionBuilder: titleActionBuilder,
          onConfirm: (T? value) {
            if (onConfirm != null) {
              onConfirm(value);
            }
          },
        );
      },
    );
  }
}

class _BottomSelectModalContent<T> extends StatefulWidget {
  final List<T> items;
  final T? initialValue;
  final String? title;
  final String confirmText;
  final String cancelText;
  final BottomSelectLabelBuilder<T>? labelBuilder;
  final BottomSelectRowLeadingBuilder<T>? leadingBuilder;
  final BottomSelectRowTrailingBuilder<T>? trailingBuilder;
  final BottomSelectRowActionsBuilder<T>? actionsBuilder;
  final BottomSelectTitleActionBuilder<T>? titleActionBuilder;
  final ValueChanged<T?> onConfirm;

  const _BottomSelectModalContent({
    required this.items,
    required this.confirmText,
    required this.cancelText,
    required this.onConfirm,
    this.initialValue,
    this.title,
    this.labelBuilder,
    this.leadingBuilder,
    this.trailingBuilder,
    this.actionsBuilder,
    this.titleActionBuilder,
  });

  @override
  State<_BottomSelectModalContent<T>> createState() =>
      _BottomSelectModalContentState<T>();
}

class _BottomSelectModalContentState<T>
    extends State<_BottomSelectModalContent<T>> {
  static const double _maxContentHeightFactor = 0.65;
  T? _selected;

  @override
  void initState() {
    super.initState();
    _selected = widget.initialValue;
  }

  void _handleItemTap(T item) {
    setState(() {
      _selected = item;
    });
  }

  void _handleCancel() {
    Navigator.of(context).pop();
  }

  void _handleConfirm() {
    widget.onConfirm(_selected);
    Navigator.of(context).pop(_selected);
  }

  String _getLabel(T item) {
    if (widget.labelBuilder != null) {
      return widget.labelBuilder!(item);
    }
    return item.toString();
  }

  @override
  Widget build(BuildContext context) {
    final double maxHeight =
        MediaQuery.of(context).size.height * _maxContentHeightFactor;
    return SafeArea(
      top: false,
      child: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: maxHeight,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 40,
                height: 4,
                margin: const EdgeInsets.symmetric(
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              if (widget.title != null)
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                  child: Row(
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            widget.title!,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                      ),
                      if (widget.titleActionBuilder != null)
                        widget.titleActionBuilder!(context, _selected) ??
                            const SizedBox.shrink(),
                    ],
                  ),
                ),
              Expanded(
                child: ListView.separated(
                  itemCount: widget.items.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return Divider(
                      height: 1,
                      color: Colors.grey.shade200,
                    );
                  },
                  itemBuilder: (BuildContext context, int index) {
                    final T item = widget.items[index];
                    final bool isSelected =
                        _selected != null && item == _selected;
                    return _BottomSelectRow<T>(
                      item: item,
                      label: _getLabel(item),
                      isSelected: isSelected,
                      onTap: () {
                        _handleItemTap(item);
                      },
                      leading: widget.leadingBuilder?.call(
                        context,
                        item,
                        isSelected,
                      ),
                      trailing: widget.trailingBuilder?.call(
                        context,
                        item,
                        isSelected,
                      ),
                      actions: widget.actionsBuilder?.call(
                        context,
                        item,
                        isSelected,
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
                child: Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: _handleCancel,
                        child: Text(widget.cancelText),
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: _handleConfirm,
                        child: Text(widget.confirmText),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _BottomSelectRow<T> extends StatelessWidget {
  final T item;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;
  final Widget? leading;
  final Widget? trailing;
  final List<Widget>? actions;

  const _BottomSelectRow({
    required this.item,
    required this.label,
    required this.isSelected,
    required this.onTap,
    this.leading,
    this.trailing,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        color: isSelected
            ? Theme.of(context).colorScheme.primary.withOpacity(0.08)
            : null,
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        child: Row(
          children: [
            if (leading != null) ...[
              leading!,
              const SizedBox(
                width: 12,
              ),
            ],
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight:
                              isSelected ? FontWeight.w600 : FontWeight.w400,
                        ),
                  ),
                  if (actions != null && actions!.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 4,
                      ),
                      child: Wrap(
                        spacing: 8,
                        children: actions!,
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            if (trailing != null)
              trailing!
            else
              Icon(
                isSelected
                    ? Icons.radio_button_checked
                    : Icons.radio_button_off,
                color: isSelected
                    ? Theme.of(context).colorScheme.primary
                    : Colors.grey.shade400,
              ),
          ],
        ),
      ),
    );
  }
}
