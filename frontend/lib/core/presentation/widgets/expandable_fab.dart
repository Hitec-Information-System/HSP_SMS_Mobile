import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/widgets/animated_child.dart';

import 'package:frontend/core/presentation/widgets/expandable_fab_child.dart';

class ExpandableFAB extends StatefulWidget {
  const ExpandableFAB({
    Key? key,
    this.children = const [],
    this.visible = true,
    this.backgroundColor,
    this.foregroundColor,
    this.activeBackgroundColor,
    this.activeForegroundColor,
    this.gradient,
    this.gradientBoxShape = BoxShape.rectangle,
    this.elevation = 6.0,
    this.buttonSize = 56.0,
    this.childrenButtonSize = 56.0,
    this.dialRoot,
    this.overlayOpacity = 0.8,
    this.overlayColor,
    this.tooltip,
    this.heroTag,
    this.animatedIcon,
    this.animatedIconTheme,
    this.icon,
    this.activeIcon,
    this.child,
    this.activeChild,
    this.switchLabelPosition = false,
    this.useRotationAnimation = true,
    this.iconTheme,
    this.label,
    this.activeLabel,
    this.labelTransitionBuilder,
    this.onOpen,
    this.onClose,
    this.closeManually = false,
    this.renderOverlay = true,
    this.shape = const StadiumBorder(),
    this.curve = Curves.fastOutSlowIn,
    this.onPress,
    this.animationSpeed = 150,
    this.openCloseDial,
    this.isOpenOnStart = false,
    this.childMargin = const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
    this.childPadding = const EdgeInsets.symmetric(vertical: 5),
    this.spaceBetweenChildren,
    this.spacing,
  }) : super(key: key);

  final List<ExpandableFABChild> children;
  final bool visible;

  final Curve curve;

  final String? tooltip;
  final String? heroTag;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? activeBackgroundColor;
  final Color? activeForegroundColor;
  final double elevation;
  final double buttonSize;
  final double childrenButtonSize;
  final ShapeBorder shape;
  final Gradient? gradient;
  final BoxShape gradientBoxShape;

  final bool isOpenOnStart;

  final Color? overlayColor;
  final double overlayOpacity;

  final AnimatedIconData? animatedIcon;
  final IconThemeData? animatedIconTheme;
  final IconData? icon;
  final IconData? activeIcon;

  final bool useRotationAnimation;

  final IconThemeData? iconTheme;

  final Widget? label;

  final Widget? activeLabel;

  final Widget Function(Widget, Animation<double>?)? labelTransitionBuilder;

  final VoidCallback? onOpen;

  final VoidCallback? onClose;

  final VoidCallback? onPress;

  final bool closeManually;

  final bool renderOverlay;

  final int animationSpeed;
  final ValueNotifier<bool>? openCloseDial;

  final EdgeInsets childMargin;
  final EdgeInsets childPadding;
  final double? spacing;
  final double? spaceBetweenChildren;

  final Widget Function(
      BuildContext context, bool open, VoidCallback toggleChildren)? dialRoot;

  final Widget? child;

  final Widget? activeChild;

  final bool switchLabelPosition;

  @override
  _ExpandableFABState createState() => _ExpandableFABState();
}

class _ExpandableFABState extends State<ExpandableFAB>
    with TickerProviderStateMixin {
  final _open = false;
  OverlayEntry? overlayEntry;
  OverlayEntry? backgroundOverlay;
  final _layerLink = LayerLink();
  final dialKey = GlobalKey<State>();

  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: widget.animationSpeed),
    );
    widget.openCloseDial?.addListener(() {
      final show = widget.openCloseDial?.value;
      if (!mounted) return;
      if (_open != show) {
        _toggleChildren();
      }
    });
    Future.delayed(Duration.zero, () async {
      if (mounted && widget.isOpenOnStart) _toggleChildren();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    widget.openCloseDial?.removeListener(() {});
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant ExpandableFAB oldWidget) {
    if (oldWidget.children.length != widget.children.length) {
      _controller.duration = Duration(milliseconds: widget.animationSpeed);
    }

    widget.openCloseDial?.removeListener(() {});
    widget.openCloseDial?.addListener(() {
      final show = widget.openCloseDial?.value;
      if (!mounted) return;
      if (_open != show) {
        _toggleChildren();
      }
    });

    super.didUpdateWidget(oldWidget);
  }

  void _toggleChildren() {
    if (widget.children.isNotEmpty) {
      final newValue = !_open;
      toggleOverlay();
      if (widget.openCloseDial != null) widget.openCloseDial!.value = newValue;
      if (newValue && widget.onOpen != null) widget.onOpen?.call();
      if (!newValue && widget.onClose != null) widget.onClose?.call();
    } else if (widget.onOpen != null) widget.onOpen?.call();
  }

  List<Widget> _getChildrenList() {
    return widget.children
        .map((child) {
          final index = widget.children.indexOf(child);
          final childAnimation = Tween(begin: 0.0, end: 1.0).animate(
            CurvedAnimation(
                parent: _controller,
                curve: Interval(0.2 * index, 1.0, curve: Curves.ease)),
          );

          return AnimatedChild(
            animation: childAnimation,
            index: index,
            useColumn: true,
            switchLabelPosition: widget.switchLabelPosition,
            // margin: margin,
            // childMargin: childMargin,
            // childPadding: childPadding,
          );
        })
        .toList()
        .reversed
        .toList();
  }

  toggleOverlay() {}

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
