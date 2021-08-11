import 'package:flutter/material.dart';

Future<T?> showCustomBottomSheet<T>({
  required BuildContext context,
  required Widget widget,
  required AnimationController controller,
  required Animation<double> animation,
}) async {
  await showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return AnimatedBuilder(
          animation: controller,
          builder: (context, child) {
            return BottomSheetWidget(
              animation: animation,
              widget: widget,
            );
          },
        );
      });
}

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget(
      {Key? key, required this.animation, required this.widget})
      : super(key: key);

  final Widget widget;

  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: animation.value,
        margin: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Theme.of(context).primaryColor,
        ),
        child: widget);
  }
}
