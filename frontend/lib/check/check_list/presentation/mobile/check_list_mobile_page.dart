import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frontend/check/check_list/domain/tmp_check_details_list.dart';
import 'package:frontend/check/check_list/presentation/widgets/widgets.dart';
import 'package:frontend/core/presentation/constants/constants.dart';

class ChecklistMobilePage extends StatelessWidget {
  const ChecklistMobilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(LayoutConstants.paddingM),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const CheckStandardTitleSection(),
                const SizedBox(height: LayoutConstants.spaceS),
                const CheckInfoSection(),
                const SizedBox(height: LayoutConstants.spaceS),
                CheckConditionRow(label: "점검주기", children: [
                  "일상",
                  "주간",
                ]),
                CheckConditionRow(label: "회차", children: [
                  "8시",
                  "12시",
                  "16시",
                  "18시",
                  "21시",
                  "4시",
                ]),
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
