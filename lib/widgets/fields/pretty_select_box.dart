import 'package:flutter/material.dart';

/// A reusable select box widget with customizable styling and validation.
///
/// This widget provides a dropdown form field with a rounded border and
/// customizable display text for items.
///
/// Example usage:
/// ```dart
/// PrettySelectBox<String>(
///   items: ['Option 1', 'Option 2', 'Option 3'],
///   label: 'Select an option',
///   selectedValue: _selectedValue,
///   onChanged: (value) {
///     setState(() {
///       _selectedValue = value;
///     });
///   },
/// )
/// ```
class PrettySelectBox<T> extends StatelessWidget {
  /// List of items to display in the dropdown.
  final List<T> items;

  /// Label text for the form field.
  final String label;

  /// Currently selected value.
  final T? selectedValue;

  /// Callback function called when the selection changes.
  final ValueChanged<T?>? onChanged;

  /// Hint text displayed when no value is selected.
  final String? hint;

  /// Optional validator function for form validation.
  final String? Function(T?)? validator;

  /// Function to convert item to display text.
  /// If not provided, uses [toString()] method.
  final String Function(T)? displayTextBuilder;

  /// Border radius for the input field.
  final double borderRadius;

  /// Horizontal padding for content.
  final EdgeInsetsGeometry? contentPadding;

  /// Whether the field is enabled.
  final bool enabled;

  /// Creates a [PrettySelectBox] widget.
  ///
  /// [items] and [label] are required.
  /// [onChanged] must be provided if the field is not disabled.
  const PrettySelectBox({
    super.key,
    required this.items,
    required this.label,
    this.selectedValue,
    this.onChanged,
    this.hint,
    this.validator,
    this.displayTextBuilder,
    this.borderRadius = 8.0,
    this.contentPadding,
    this.enabled = true,
  });

  String _getDisplayText(T item) {
    if (displayTextBuilder != null) {
      return displayTextBuilder!(item);
    }
    return item.toString();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      value: selectedValue,
      hint: hint != null ? Text(hint!) : null,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        contentPadding: contentPadding ??
            const EdgeInsets.symmetric(
              horizontal: 12.0,
              vertical: 16.0,
            ),
      ),
      items: items.map((T item) {
        return DropdownMenuItem<T>(
          value: item,
          child: Text(_getDisplayText(item)),
        );
      }).toList(),
      onChanged: enabled ? onChanged : null,
      validator: validator,
    );
  }
}
