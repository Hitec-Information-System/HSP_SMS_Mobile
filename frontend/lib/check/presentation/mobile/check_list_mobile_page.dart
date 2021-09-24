import 'package:flutter/material.dart';
import 'package:frontend/check/domain/check_info.dart';
import 'package:frontend/check/presentation/widgets/check_base_info_column.dart';
import 'package:frontend/check/presentation/widgets/check_details.dart';
import 'package:frontend/check/shared/providers.dart';
import 'package:frontend/core/presentation/constants/constants.dart';
import 'package:frontend/core/presentation/widgets/dialogs.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChecklistMobilePage extends ConsumerWidget {
  const ChecklistMobilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print("mobile page built");

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(LayoutConstants.paddingM),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const CheckBaseInfoColumn(),
                const SizedBox(height: LayoutConstants.spaceM),
                const Divider(thickness: 2),
                const SizedBox(height: LayoutConstants.spaceM),
                Row(
                  children: [
                    Consumer(builder: (context, ref, child) {
                      final detailsQty = ref.watch(
                          checkInfoStateNotifierProvider
                              .select((state) => state.info.details.length));
                      return Text("점검항목 : $detailsQty");
                    }),
                    const Spacer(),
                    Consumer(builder: (context, ref, child) {
                      final data = ref.watch(checkInfoStateNotifierProvider
                          .select((value) => value.info));
                      return ElevatedButton(
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
                                    .read(
                                        checkInfoStateNotifierProvider.notifier)
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
                      );
                    }),
                  ],
                ),
                const SizedBox(height: LayoutConstants.spaceXS),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: LayoutConstants.paddingXS,
                      vertical: LayoutConstants.paddingM),
                  child: Material(
                    elevation: 1,
                    borderRadius:
                        BorderRadius.circular(LayoutConstants.radiusM),
                    color: Theme.of(context).cardColor,
                    child: const Padding(
                      padding: EdgeInsets.all(LayoutConstants.paddingM),
                      child: CheckListDetailsSection(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
