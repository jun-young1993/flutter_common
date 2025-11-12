import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

/// IconButton with built-in loading state support
class LoadingIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  final bool isLoading;
  final String? tooltip;
  final Color? color;
  final double? iconSize;
  final EdgeInsetsGeometry? padding;
  final VisualDensity? visualDensity;
  final ButtonStyle? style;

  const LoadingIconButton({
    super.key,
    required this.icon,
    this.onPressed,
    this.isLoading = false,
    this.tooltip,
    this.color,
    this.iconSize,
    this.padding,
    this.visualDensity,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    final button = IconButton(
      icon: isLoading
          ? LoadingAnimationWidget.beat(
              color: color ?? Theme.of(context).colorScheme.onSurface,
              size: iconSize ?? 12,
            )
          : Icon(icon, size: iconSize),
      onPressed: isLoading ? null : onPressed,
      tooltip: tooltip,
      color: color,
      padding: padding,
      visualDensity: visualDensity,
      style: style,
    );

    if (tooltip != null && !isLoading) {
      return Tooltip(message: tooltip!, child: button);
    }

    return button;
  }
}
