import 'package:flutter/material.dart';

class CustomToggleButton extends StatelessWidget {
  const CustomToggleButton(
      {Key? key,
      required this.children,
      required this.isSelected,
      this.onPressed,
      this.constraints,
      this.color,
      this.selectedColor,
      this.disabledColor,
      this.fillColor,
      this.unselectedFillColor,
      this.disabledFillColor,
      this.highlightColor,
      this.splashColor,
      this.borderColor,
      this.hoverColor,
      this.selectedBorderColor,
      this.disabledBorderColor,
      this.borderWidth,
      this.borderRadius,
      this.renderBorder = true,
      this.spacing = 0,
      this.runSpacing = 0,
      this.elevation = 0,
      this.alignment = WrapAlignment.start})
      : assert(children.length == isSelected.length),
        super(key: key);

  final List<Widget> children;
  final List<bool> isSelected;

  final void Function(int index)? onPressed;
  final BoxConstraints? constraints;
  final Color? color;
  final Color? selectedColor;
  final Color? disabledColor;
  final Color? fillColor;
  final Color? unselectedFillColor;
  final Color? disabledFillColor;
  final Color? highlightColor;
  final Color? splashColor;
  final Color? borderColor;
  final Color? hoverColor;
  final Color? selectedBorderColor;
  final Color? disabledBorderColor;
  final double? borderWidth;
  final double? borderRadius;

  final bool renderBorder;

  final double spacing;
  final double runSpacing;
  final double elevation;

  final WrapAlignment alignment;

  Border _getBorder(BuildContext context, int index) {
    Color? _borderColor = borderColor;
    if (onPressed == null) {
      _borderColor = disabledBorderColor;
    }
    if (isSelected[index]) {
      _borderColor = selectedBorderColor;
    }

    return Border.all(
      width: borderWidth ?? 1,
      color: _borderColor ??
          Theme.of(context).colorScheme.onSurface.withOpacity(0.12),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: spacing,
      runSpacing: runSpacing,
      alignment: alignment,
      // direction: Axis.horizontal,
      children: List<Widget>.generate(children.length, (index) {
        return _CustomToggleButton(
          isSelected: isSelected[index],
          elevation: elevation,
          onPressed: onPressed == null
              ? null
              : () {
                  onPressed!(index);
                },
          constraints: constraints,
          color: color,
          selectedColor: selectedColor,
          fillColor: fillColor,
          disabledFillColor: disabledFillColor,
          unselectedFillColor: unselectedFillColor,
          disabledColor: disabledColor,
          highlightColor: highlightColor,
          splashColor: splashColor,
          hoverColor: hoverColor,
          border: renderBorder ? _getBorder(context, index) : const Border(),
          borderRadius: borderRadius,
          child: children[index],
        );
      }),
    );
  }
}

class _CustomToggleButton extends StatelessWidget {
  const _CustomToggleButton({
    Key? key,
    this.child,
    this.onPressed,
    required this.isSelected,
    this.color,
    this.selectedColor,
    this.fillColor,
    this.unselectedFillColor,
    this.disabledColor,
    this.disabledFillColor,
    this.highlightColor,
    this.splashColor,
    this.hoverColor,
    this.constraints = const BoxConstraints(),
    this.borderRadius,
    this.border,
    required this.elevation,
  }) : super(key: key);

  final Widget? child;
  final VoidCallback? onPressed;
  final bool isSelected;

  final Color? color;
  final Color? selectedColor;
  final Color? fillColor;
  final Color? unselectedFillColor;
  final Color? disabledColor;
  final Color? disabledFillColor;
  final Color? highlightColor;
  final Color? splashColor;
  final Color? hoverColor;

  final BoxConstraints? constraints;

  final double? borderRadius;
  final BoxBorder? border;

  final double elevation;

  Color _getTextColor(BuildContext context) {
    if (onPressed == null) {
      return disabledColor ??
          Theme.of(context).colorScheme.onSurface.withOpacity(.38);
    }

    if (isSelected) {
      if (selectedColor == null) {
        return Theme.of(context).colorScheme.primary;
      }
      return selectedColor!;
    }

    if (color == null) {
      return Theme.of(context).colorScheme.onSurface;
    }
    return color!;
  }

  Color _getFillColor(BuildContext context) {
    if (onPressed == null) {
      return disabledColor ?? Colors.transparent;
    }

    if (isSelected) {
      if (fillColor == null) {
        if (elevation > 0) {
          return Theme.of(context).colorScheme.surface;
        }

        return Colors.transparent;
      }
      return fillColor!;
    }

    if (unselectedFillColor == null) {
      if (elevation > 0) {
        return Theme.of(context).colorScheme.surface;
      }

      return Colors.transparent;
    }
    return unselectedFillColor!;
  }

  Color _getHighlightColor(BuildContext context) {
    if (highlightColor == null) {
      return Theme.of(context).highlightColor;
    }
    return highlightColor!;
  }

  Color _getSplashColor(BuildContext context) {
    if (splashColor == null) {
      return Theme.of(context).splashColor;
    }
    return splashColor!;
  }

  Color _getHoverColor(BuildContext context) {
    if (hoverColor == null) {
      return Theme.of(context).hoverColor;
    }
    return hoverColor!;
  }

  double _getElevation() {
    if (isSelected) {
      return 0;
    }
    return elevation;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: border,
        borderRadius: borderRadius != null
            ? BorderRadius.circular(borderRadius!)
            : BorderRadius.circular(0),
      ),
      child: ClipRRect(
        child: RawMaterialButton(
          textStyle: TextStyle(
            color: _getTextColor(context),
          ),
          constraints: constraints!,
          fillColor: _getFillColor(context),
          highlightColor: _getHighlightColor(context),
          splashColor: _getSplashColor(context),
          hoverColor: _getHoverColor(context),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          onPressed: onPressed,
          elevation: _getElevation(),
          highlightElevation: 0,
          focusElevation: 0,
          hoverElevation: _getElevation() / 2,
          child: child,
        ),
      ),
    );
  }
}
