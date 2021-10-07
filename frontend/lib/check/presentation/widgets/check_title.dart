import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/constants/layout_constants.dart';

class CheckTitle extends StatelessWidget {
  const CheckTitle({
    Key? key,
    required this.objNm,
    required this.objGubunNm,
  }) : super(key: key);

  final String objNm;
  final String objGubunNm;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: LayoutConstants.paddingM),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$objGubunNm 점검",
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: LayoutConstants.spaceS),
          Text(
            "$objGubunNm > $objNm",
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}
