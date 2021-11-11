import 'package:flutter/material.dart';

class AnimatedChild extends AnimatedWidget {
  final int? index;
  final Color? foregroundColor;
  final double buttonSize;
  final Widget? child;
  final Key? btnKey;

  final String? label;
  final TextStyle? labelStyle;
  final Color? labelBackgroundColor;
  final Widget? labelWidget;

  final bool visible;
  final VoidCallback? onTap;
  final VoidCallback? toggleChildren;
  final String? heroTag;
  final bool useColumn;
  final bool switchLabelPosition;
  final EdgeInsets? margin;

  final EdgeInsets childMargin;
  final EdgeInsets childPadding;

  const AnimatedChild({
    this.btnKey,
    required Animation<double> animation,
    this.index,
    this.foregroundColor,
    this.buttonSize = 56.0,
    this.child,
    this.label,
    this.labelStyle,
    this.labelBackgroundColor,
    this.labelWidget,
    this.visible = true,
    this.onTap,
    required this.switchLabelPosition,
    required this.useColumn,
    required this.margin,
    this.toggleChildren,
    this.heroTag,
    required this.childMargin,
    required this.childPadding,
  }) : super(listenable: animation);

  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = listenable as Animation<double>;
    final dark = Theme.of(context).brightness == Brightness.dark;

    void _performAction() {
      if (onTap != null) {
        onTap!();
      }
      toggleChildren!();
    }

    Widget buildLabel() {
      if (label == null && labelWidget == null) return const SizedBox();

      if (labelWidget != null) {
        return GestureDetector(
          onTap: _performAction,
          child: labelWidget,
        );
      }

      return GestureDetector(
        onTap: _performAction,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0),
          margin: childMargin,
          decoration: BoxDecoration(
            color: labelBackgroundColor ??
                (dark ? Colors.grey[800] : Colors.grey[50]),
            borderRadius: const BorderRadius.all(Radius.circular(6.0)),
          ),
          child: Text(label!, style: labelStyle),
        ),
      );
    }

    final button = ScaleTransition(
        scale: animation,
        child: FloatingActionButton(
          key: btnKey,
          heroTag: heroTag,
          onPressed: _performAction,
          foregroundColor:
              foregroundColor ?? (dark ? Colors.white : Colors.black),
          child: child,
        ));

    final children = [
      if (label != null || labelWidget != null)
        ScaleTransition(
          scale: animation,
          child: Container(
            padding: (child == null)
                ? const EdgeInsets.symmetric(vertical: 8)
                : null,
            key: (child == null) ? btnKey : null,
            child: buildLabel(),
          ),
        ),
      if (child != null)
        Container(
          padding: childPadding,
          height: buttonSize,
          width: buttonSize,
          child: FittedBox(
            child: GestureDetector(
              onLongPress: () => _performAction(),
              child: button,
            ),
          ),
        )
    ];

    Widget _buildColumnOrRow(bool isColumn,
        {CrossAxisAlignment? crossAxisAlignment,
        MainAxisAlignment? mainAxisAlignment,
        required List<Widget> children,
        MainAxisSize? mainAxisSize}) {
      return isColumn
          ? Column(
              mainAxisSize: mainAxisSize ?? MainAxisSize.max,
              mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
              crossAxisAlignment:
                  crossAxisAlignment ?? CrossAxisAlignment.center,
              children: children,
            )
          : Row(
              mainAxisSize: mainAxisSize ?? MainAxisSize.max,
              mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
              crossAxisAlignment:
                  crossAxisAlignment ?? CrossAxisAlignment.center,
              children: children,
            );
    }

    return visible
        ? Container(
            margin: margin,
            child: _buildColumnOrRow(
              useColumn,
              mainAxisSize: MainAxisSize.min,
              children:
                  switchLabelPosition ? children.reversed.toList() : children,
            ),
          )
        : const SizedBox();
  }
}
