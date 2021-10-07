import 'package:flutter/material.dart';

import 'package:frontend/check/domain/check_info.dart';
import 'package:frontend/check/presentation/widgets/check_details_section.dart';
import 'package:frontend/check/presentation/widgets/check_info_section.dart';
import 'package:frontend/check/presentation/widgets/check_save_button.dart';
import 'package:frontend/core/presentation/constants/constants.dart';

class ChecklistMobilePage extends StatelessWidget {
  const ChecklistMobilePage({
    Key? key,
    required this.info,
  }) : super(key: key);

  final CheckInfo info;

  @override
  Widget build(BuildContext context) {
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
                CheckInfoSection(
                  info: info,
                ),
                const SizedBox(height: LayoutConstants.spaceM),
                const Divider(thickness: 2),
                const SizedBox(height: LayoutConstants.spaceM),
                Row(
                  children: [
                    Text("점검항목 : ${info.details.length}"),
                    const Spacer(),
                    const CheckSaveButton(),
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
                    child: Padding(
                      padding: const EdgeInsets.all(LayoutConstants.paddingM),
                      child: CheckListDetailsSection(info: info),
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
