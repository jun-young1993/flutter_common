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

  /// Removes duplicate items from the list.
  /// Uses equality comparison to identify duplicates.
  List<T> _removeDuplicates(List<T> items) {
    final uniqueItems = <T>[];
    for (final item in items) {
      if (!uniqueItems.contains(item)) {
        uniqueItems.add(item);
      }
    }
    return uniqueItems;
  }

  /// Validates that selectedValue exists in items list.
  /// Returns null if selectedValue is not found in items.
  T? _getValidatedValue(List<T> uniqueItems) {
    if (selectedValue == null) {
      return null;
    }
    // Check if selectedValue exists in unique items list
    final foundItem = uniqueItems.where((item) => item == selectedValue).firstOrNull;
    return foundItem;
  }

  @override
  Widget build(BuildContext context) {
    // Remove duplicates from items
    final uniqueItems = _removeDuplicates(items);
    final validatedValue = _getValidatedValue(uniqueItems);
    return DropdownButtonFormField<T>(
      value: validatedValue,
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
      items: uniqueItems.map((T item) {
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
