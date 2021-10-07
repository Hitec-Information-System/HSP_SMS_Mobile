import 'package:flutter/material.dart';

import 'package:frontend/check/domain/check_info.dart';
import 'package:frontend/check/presentation/widgets/check_details_section.dart';
import 'package:frontend/check/presentation/widgets/check_info_section.dart';
import 'package:frontend/core/presentation/constants/constants.dart';

class ChecklistTabletPage extends StatelessWidget {
  const ChecklistTabletPage({
    Key? key,
    required this.info,
  }) : super(key: key);

  final CheckInfo info;

  @override
  Widget build(BuildContext context) {
    print("tablet built");

    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                height: double.infinity,
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(LayoutConstants.radiusM),
                      bottomRight: Radius.circular(LayoutConstants.radiusM),
                    )),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.all(
                    LayoutConstants.paddingM,
                  ),
                  child: CheckInfoSection(
                    info: info,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: SizedBox(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.symmetric(
                    horizontal: LayoutConstants.paddingL,
                    vertical: LayoutConstants.paddingM,
                  ),
                  child: CheckListDetailsSection(
                    info: info,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
