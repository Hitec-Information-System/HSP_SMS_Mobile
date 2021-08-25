import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/constants/constants.dart';

class CheckStandardTitleSection extends StatelessWidget {
  const CheckStandardTitleSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(LayoutConstants.paddingM),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(LayoutConstants.radiusM),
            color: Theme.of(context).accentColor,
          ),
          child: const Icon(
            Icons.home,
            color: Colors.white,
            size: 35,
          ),
        ),
        const SizedBox(width: LayoutConstants.spaceM),
        Column(
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
        )
      ],
    );
  }
}
