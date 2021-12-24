import 'package:flutter/material.dart';
import 'package:web/core/constant/constant.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kSecondaryThemeColor.withOpacity(.2),
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(24),
          bottomLeft: Radius.circular(24),
        ),
      ),
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          const Expanded(
            flex: 1,
            child: SizedBox(),
          ),
          Text.rich(
            const TextSpan(
              text: "Drop & Upload\n",
              children: [
                TextSpan(text: "a mobile app file"),
              ],
            ),
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline3?.copyWith(
                  color: kPrimaryThemeColor,
                  fontWeight: FontWeight.bold,
                  height: 1.2,
                ),
          ),
          const Expanded(
            flex: 6,
            child: SizedBox(),
          ),
        ],
      ),
    );
  }
}
