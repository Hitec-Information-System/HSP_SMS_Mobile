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

    final lastIndex = ref.watch(
      checkInfoStateNotifierProvider.select((state) => state.info.lastIndex),
    );

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
            onPressed: (int index) {
              final selectedSession = sessions[index].id;

              // lastIndex가 존재하는 경우는 즉, 모니터링 화면에서 클릭하고 들어온 경우를 의미함
              // 아래는 이러한 경우 체크한 이후의 값을 아예 접근할 수 없게 막도록 처리하는 내용임
              if (lastIndex >= 0) {
                if (index > lastIndex) {
                  return;
                }

                ref.read(checkInfoStateNotifierProvider.notifier).getCheckInfo(
                      tagId: header.objCd,
                      interval: header.interval,
                      session: selectedSession,
                      lastIndex: lastIndex,
                    );
                return;
              }

              ref.read(checkInfoStateNotifierProvider.notifier).getCheckInfo(
                    tagId: header.objCd,
                    interval: header.interval,
                    session: selectedSession,
                  );
            },
            children: sessions.map((item) => item.name).toList(),
          );
        }),
        if (!Responsive.isMobile(context)) const CheckSaveButton(),
      ],
    );
  }
}
