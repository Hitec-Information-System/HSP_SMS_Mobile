import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frontend/check/check_list/domain/tmp_check_details_list.dart';
import 'package:frontend/check/check_list/presentation/mobile/widgets.dart';
import 'package:frontend/check/check_list/presentation/widgets.dart';
import 'package:frontend/check/check_list/shared/providers.dart';
import 'package:frontend/core/presentation/constants/constants.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChecklistMobilePage extends ConsumerWidget {
  const ChecklistMobilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(LayoutConstants.paddingM),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const CheckMobileTitle(),
                const SizedBox(height: LayoutConstants.spaceS),
                const CheckInfoSection(),
                const SizedBox(height: LayoutConstants.spaceS),
                ref.watch(checkStandardNotifierProvider).when(
                      initial: () => Container(),
                      loadInProgress: () => Container(),
                      loadSuccess: (data) => CheckConditionRow(
                        label: "점검주기",
                        children: data.intervals.map((e) => e.name).toList(),
                      ),
                      loadFailure: (_) => Container(),
                    ),
                ref.watch(checkStandardNotifierProvider).when(
                      initial: () => Container(),
                      loadInProgress: () => Container(),
                      loadSuccess: (data) => CheckConditionRow(
                        label: "회차",
                        children: data.sessions.map((e) => e.name).toList(),
                      ),
                      loadFailure: (_) => Container(),
                    ),

                // CheckConditionRow(label: "점검주기", children: [
                //   "일상",
                //   "주간",
                // ]),
                // CheckConditionRow(label: "테스트 예제", children: []),
                const SizedBox(height: LayoutConstants.spaceM),
                const Divider(thickness: 2),
                const SizedBox(height: LayoutConstants.spaceM),
                Row(
                  children: [
                    Text(
                      "점검항목 : ${tmpCheckDetails.length}",
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    ElevatedButton(
                        onPressed: () {
                          // TODO: save check results
                          AutoRouter.of(context).pop();
                        },
                        child: const Text("저장"))
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
                            child: CheckListDetailsSection()))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
