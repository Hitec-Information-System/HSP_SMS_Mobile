import 'package:flutter/material.dart';

class ExpandableFABChild {
  Key? key;
  final String? label;
  final List<BoxShadow>? labelShadow;
  final TextStyle? labelStyle;
  final Color? labelBackgroundColor;
  final Widget? labelWidget;

  final Widget? child;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? elevation;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
  final ShapeBorder? shape;
  final bool visible;

  ExpandableFABChild({
    this.key,
    this.label,
    this.labelShadow,
    this.labelStyle,
    this.labelBackgroundColor,
    this.labelWidget,
    this.child,
    this.backgroundColor,
    this.foregroundColor,
    this.elevation,
    this.onTap,
    this.onLongPress,
    this.shape,
    this.visible = true,
  });
}
