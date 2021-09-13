import 'package:flutter/material.dart';
import 'package:frontend/check/check_info/shared/providers.dart';
import 'package:frontend/core/presentation/constants/layout_constants.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nil/nil.dart';

class CheckTitle extends ConsumerWidget {
  const CheckTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(checkInfoStateNotifierProvider);
    return Container(
        margin: const EdgeInsets.only(left: LayoutConstants.paddingM),
        child: state.maybeWhen(
            loaded: (data) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${data.header.objGubunNm} 점검",
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(height: LayoutConstants.spaceS),
                    Text(
                      "${data.header.objGubunNm} > ${data.header.objNm}",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
            orElse: () => nil));
  }
}
