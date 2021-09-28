import 'package:flutter/material.dart';
import 'package:frontend/check/domain/check_info.dart';
import 'package:frontend/check/shared/providers.dart';
import 'package:frontend/core/presentation/constants/constants.dart';
import 'package:frontend/core/presentation/widgets/dialogs.dart';
import 'package:frontend/core/presentation/widgets/responsive.dart';
import 'package:frontend/core/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:frontend/check/domain/check_details_extension.dart';

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
          print("회차, 점검주기 built");

          final tagId = ref.watch(
              checkInfoStateNotifierProvider.select((state) => state.tagId));
          final interval = ref.watch(
              checkHeaderNotifierProvider.select((header) => header.interval));
          final session = ref.watch(
              checkHeaderNotifierProvider.select((header) => header.session));
          final intervals = ref.watch(checkIntervalsProvider);
          final sessions = ref.watch(checkSessionsProvider);

          return Column(
            children: [
              CheckStandardRow(
                label: "회차",
                isSelected:
                    intervals.map((item) => item.id == interval).toList(),
                children: intervals.map((item) => item.name).toList(),
                onPressed: (index) {
                  final interval = intervals[index].id;

                  ref
                      .read(checkHeaderNotifierProvider.notifier)
                      .setInterval(interval);
                  ref
                      .read(checkInfoStateNotifierProvider.notifier)
                      .getCheckInfo(tagId, interval, session);
                },
              ),
              const SizedBox(height: LayoutConstants.spaceM),
              CheckStandardRow(
                label: "점검주기",
                isSelected: sessions.map((item) => item.id == session).toList(),
                onPressed: (index) {
                  final session = sessions[index].id;
                  ref
                      .read(checkHeaderNotifierProvider.notifier)
                      .setSession(session);

                  ref
                      .read(checkInfoStateNotifierProvider.notifier)
                      .getCheckInfo(tagId, interval, session);
                },
                children: sessions.map((item) => item.name).toList(),
              )
            ],
          );
        }),
        if (!Responsive.isMobile(context))
          Consumer(builder: (context, ref, child) {
            final header = ref.watch(checkHeaderNotifierProvider);
            final details = ref.watch(checkDetailsProvider);

            final token = ref.watch(tokenProvider);

            return Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: LayoutConstants.paddingM),
              child: ElevatedButton(
                onPressed: () {
                  print("pressed");

                  if (details.hasChecksBeenDone) {
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
                          "userId": token?.key ?? "",
                          "xmlH": header.toHeaderXml,
                          "xmlD": details.toResultsXml,
                          "xmlI": details.toImgsXml,
                        };

                        final images = <CheckImage>[];
                        for (final detail in details) {
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
