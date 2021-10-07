import 'package:flutter/material.dart';

import 'package:frontend/check/presentation/widgets/check_details_section.dart';
import 'package:frontend/check/presentation/widgets/check_info_section.dart';
import 'package:frontend/core/presentation/constants/constants.dart';

class ChecklistTabletPage extends StatelessWidget {
  const ChecklistTabletPage({
    Key? key,
  }) : super(key: key);

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
                child: const SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.all(
                    LayoutConstants.paddingM,
                  ),
                  child: CheckInfoSection(),
                ),
              ),
            ),
            const Expanded(
              flex: 5,
              child: SizedBox(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: LayoutConstants.paddingL,
                    vertical: LayoutConstants.paddingM,
                  ),
                  child: CheckListDetailsSection(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
