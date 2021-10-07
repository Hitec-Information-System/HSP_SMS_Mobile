import 'package:flutter/material.dart';

import 'package:frontend/check/presentation/widgets/check_details_section.dart';
import 'package:frontend/check/presentation/widgets/check_info_section.dart';
import 'package:frontend/check/presentation/widgets/check_save_button.dart';
import 'package:frontend/core/presentation/constants/constants.dart';

class ChecklistMobilePage extends StatelessWidget {
  const ChecklistMobilePage({
    Key? key,
  }) : super(key: key);

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
                const CheckInfoSection(),
                const SizedBox(height: LayoutConstants.spaceM),
                const Divider(thickness: 2),
                const SizedBox(height: LayoutConstants.spaceM),
                Row(
                  children: const [
                    Spacer(),
                    CheckSaveButton(),
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
