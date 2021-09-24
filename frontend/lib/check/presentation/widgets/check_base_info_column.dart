import 'package:flutter/material.dart';
import 'package:frontend/check/domain/check_info.dart';
import 'package:frontend/check/shared/providers.dart';
import 'package:frontend/core/presentation/constants/constants.dart';
import 'package:frontend/core/presentation/widgets/dialogs.dart';
import 'package:frontend/core/presentation/widgets/responsive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../widgets.dart';

class CheckBaseInfoColumn extends StatelessWidget {
  const CheckBaseInfoColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("base info built");
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const CheckTitle(),
        const SizedBox(height: LayoutConstants.spaceL),
        const CheckInfoSection(),
        const SizedBox(height: LayoutConstants.spaceL),
        Consumer(builder: (context, ref, child) {
          print("회차 built");

          final tagId = ref.watch(
              checkInfoStateNotifierProvider.select((state) => state.tagId));
          final interval = ref.watch(checkInfoStateNotifierProvider
              .select((state) => state.info.header.interval));
          final intervals = ref.watch(checkInfoStateNotifierProvider
              .select((state) => state.info.intervals));

          return CheckStandardRow(
            label: "회차",
            isSelected: intervals.map((item) => item.id == interval).toList(),
            children: intervals.map((item) => item.name).toList(),
            onPressed: (index) {
              ref
                  .read(checkInfoStateNotifierProvider.notifier)
                  .setCheckInterval(intervals[index].id);
              ref
                  .read(checkInfoStateNotifierProvider.notifier)
                  .getCheckInfo(tagId, intervals[index].id);
            },
          );
        }),
        const SizedBox(height: LayoutConstants.spaceM),
        Consumer(builder: (context, ref, child) {
          print("점검주기 built");

          final chasu = ref.watch(checkInfoStateNotifierProvider
              .select((state) => state.info.header.chasu));
          final sessions = ref.watch(checkInfoStateNotifierProvider
              .select((state) => state.info.sessions));

          return CheckStandardRow(
            label: "점검주기",
            isSelected: sessions.map((item) => item.id == chasu).toList(),
            onPressed: (index) {
              ref
                  .read(checkInfoStateNotifierProvider.notifier)
                  .setCheckChasu(sessions[index].id);
            },
            children: sessions.map((item) => item.name).toList(),
          );
        }),
        if (!Responsive.isMobile(context))
          Consumer(builder: (context, ref, child) {
            final data = ref.watch(
                checkInfoStateNotifierProvider.select((value) => value.info));

            return Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: LayoutConstants.paddingM),
              child: ElevatedButton(
                onPressed: () {
                  print("pressed");

                  if (data.hasChecksBeenDone) {
                    Dialogs.showTwoAnswersDialog(
                      context,
                      color: Theme.of(context).colorScheme.secondary,
                      icon: Icons.help,
                      title: "점검목록 저장",
                      message: "점검내용을 저장하시겠습니까?",
                      yesTitle: "저장",
                      onYesPressed: () {
                        final params = {
                          "compCd": LogicConstants.companyCd,
                          "sysFlag": LogicConstants.systemFlag,
                          // TODO: USERID 변경
                          "userId": "dev",
                          "xmlH": data.toHeaderXml,
                          "xmlD": data.toResultsXml,
                          "xmlI": data.toImgsXml,
                        };

                        final images = <CheckImage>[];
                        for (final detail in data.details) {
                          images.addAll(detail.images);
                        }

                        ref
                            .read(checkInfoStateNotifierProvider.notifier)
                            .saveCheckInfo(
                              params,
                              images,
                            );
                      },
                      noTitle: "취소",
                      onNoPressed: () {},
                      onDismissed: () {},
                    );
                  } else {
                    Dialogs.showOneAnswerDialog(
                      context,
                      color: Theme.of(context).errorColor,
                      title: "점검 미완료",
                      message: "점검을 모두 완료하지 않았습니다",
                      yesTitle: "확인",
                      onYesPressed: () {},
                    );
                  }
                },
                child: const Text(
                  "저장",
                ),
              ),
            );
          }),
      ],
    );
  }
}
