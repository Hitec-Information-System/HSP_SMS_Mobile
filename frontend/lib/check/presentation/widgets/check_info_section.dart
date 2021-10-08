import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:frontend/check/presentation/widgets/check_save_button.dart';
import 'package:frontend/check/shared/providers.dart';
import 'package:frontend/core/presentation/constants/constants.dart';
import 'package:frontend/core/presentation/widgets/responsive.dart';

import '../widgets.dart';

class CheckInfoSection extends ConsumerWidget {
  const CheckInfoSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print("info built");

    final header = ref.watch(
        checkInfoStateNotifierProvider.select((state) => state.info.header));
    final sessions = ref.watch(
        checkInfoStateNotifierProvider.select((state) => state.info.sessions));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CheckTitle(
          objNm: header.objNm,
          objGubunNm: header.objGubunNm,
        ),
        const SizedBox(height: LayoutConstants.spaceL),
        CheckHeaderInfo(
          header: header,
        ),
        const SizedBox(height: LayoutConstants.spaceL),
        Consumer(builder: (context, ref, child) {
          return CheckStandardRow(
            label: "회차",
            isSelected:
                sessions.map((item) => item.id == header.session).toList(),
            onPressed: (index) {
              final selectedSession = sessions[index].id;

              ref
                  .read(checkInfoStateNotifierProvider.notifier)
                  .getCheckInfo(header.objCd, header.interval, selectedSession);
            },
            children: sessions.map((item) => item.name).toList(),
          );
        }),
        if (!Responsive.isMobile(context)) const CheckSaveButton(),
      ],
    );
  }
}
