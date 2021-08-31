import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/constants/layout_constants.dart';

class CheckTitle extends StatelessWidget {
  const CheckTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: LayoutConstants.paddingM),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "시설 점검",
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: LayoutConstants.spaceS),
          Text(
            "시설물 > 적재장소 및 외각",
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}
