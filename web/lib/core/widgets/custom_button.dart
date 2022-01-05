import 'package:flutter/material.dart';
import 'package:web/core/constant/constant.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.textStyle = const TextStyle(),
    this.padding = const EdgeInsets.symmetric(
      horizontal: 12,
      vertical: 8,
    ),
    this.margin = const EdgeInsets.all(1),
    this.alignment = Alignment.center,
    this.decoration = const BoxDecoration(),
    this.width,
    this.height,
    this.curve = Curves.elasticOut,
    this.duration = const Duration(milliseconds: 100),
  }) : super(key: key);

  final void Function() onTap;
  final String text;
  final TextStyle textStyle;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final AlignmentGeometry alignment;
  final BoxDecoration decoration;
  final double? width;
  final double? height;
  final Curve curve;
  final Duration duration;

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<EdgeInsetsGeometry> _margin;
  late Animation _color;
  late Animation<double> _fontSize;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );

    final _curveAnimation =
        CurvedAnimation(parent: _controller, curve: Curves.ease);

    _margin = Tween<EdgeInsetsGeometry>(
            begin: widget.margin, end: widget.margin * 1.5)
        .animate(_curveAnimation);
    _color = ColorTween(
      begin: widget.decoration.color ?? Colors.transparent,
      end: widget.decoration.color?.withOpacity(.5) ??
          kSecondaryThemeColor.withOpacity(.1),
    ).animate(_curveAnimation);
    _fontSize = Tween<double>(
      begin: widget.textStyle.fontSize ?? 14,
      end: widget.textStyle.fontSize ?? 14 * 0.9,
    ).animate(_curveAnimation);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: GestureDetector(
        onTapDown: (details) {
          _controller.forward();
        },
        onTapUp: (details) {
          widget.onTap.call();
          _controller.reverse();
        },
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Container(
              margin: _margin.value,
              padding: widget.padding,
              decoration: widget.decoration.copyWith(
                color: _color.value,
              ),
              alignment: widget.alignment,
              child: Text(
                widget.text,
                style: widget.textStyle.copyWith(
                  fontSize: _fontSize.value,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            );
          },
        ),
      ),
    );
  }
}
