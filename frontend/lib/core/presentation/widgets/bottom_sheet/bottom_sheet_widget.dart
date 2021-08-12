import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget(
      {Key? key,
      required this.controller,
      required this.animation,
      required this.widget})
      : super(key: key);

  final Widget widget;

  final Animation<double> animation;
  final AnimationController controller;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: controller,
        builder: (context, child) {
          return Container(
            height: animation.value,
            margin: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Theme.of(context).primaryColor,
            ),
            child: widget,
          );
        });
  }
}
