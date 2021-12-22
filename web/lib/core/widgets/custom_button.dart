import 'package:flutter/material.dart';

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
    this.duration = const Duration(milliseconds: 500),
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

class _CustomButtonState extends State<CustomButton> {
  late EdgeInsetsGeometry _padding;
  late EdgeInsetsGeometry _margin;
  late BoxDecoration _decoration;
  late double _fontSize;

  @override
  void initState() {
    super.initState();

    _padding = widget.padding;

    _margin = widget.margin;
    _decoration = widget.decoration;
    _fontSize = widget.textStyle.fontSize ?? 14;
  }

  void _onTapDown() {
    setState(() {
      _margin = EdgeInsets.symmetric(
        horizontal: widget.margin.horizontal * 1.5,
        vertical: widget.margin.vertical * 1.5,
      );
      _decoration = widget.decoration.copyWith(
        color: widget.decoration.color?.withOpacity(.5),
      );
      _fontSize = widget.textStyle.fontSize ?? 14 * 0.9;
    });
  }

  void _onTapUp() {
    setState(() {
      _margin = widget.margin;
      _decoration = widget.decoration;
      _fontSize = widget.textStyle.fontSize ?? 14;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: GestureDetector(
        onTapDown: (details) {
          _onTapDown();
        },
        onTapUp: (details) {
          widget.onTap.call();
          _onTapUp();
        },
        child: AnimatedContainer(
          margin: _margin,
          padding: _padding,
          decoration: _decoration,
          duration: widget.duration,
          curve: widget.curve,
          alignment: widget.alignment,
          child: AnimatedDefaultTextStyle(
            duration: widget.duration,
            curve: widget.curve,
            style: widget.textStyle.copyWith(
              fontSize: _fontSize,
            ),
            child: Text(
              widget.text,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
        ),
      ),
    );
  }
}
