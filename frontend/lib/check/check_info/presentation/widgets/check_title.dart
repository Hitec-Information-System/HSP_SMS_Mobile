import 'package:flutter/material.dart';
import 'package:frontend/check/check_info/shared/providers.dart';
import 'package:frontend/core/presentation/constants/layout_constants.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CheckTitle extends StatelessWidget {
  const CheckTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: LayoutConstants.paddingM),
        child: Consumer(
          builder: (context, ref, child) {
            final objGubunNm = ref.watch(checkInfoStateNotifierProvider
                .select((state) => state.info.header.objGubunNm));
            final objNm = ref.watch(checkInfoStateNotifierProvider
                .select((state) => state.info.header.objNm));

            return Column(
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
            );
          },
        ));
  }
}
