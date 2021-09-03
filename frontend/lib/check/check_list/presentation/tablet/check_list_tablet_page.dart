import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frontend/check/check_list/presentation/widgets.dart';
import 'package:frontend/core/presentation/constants/constants.dart';

class ChecklistTabletPage extends StatelessWidget {
  const ChecklistTabletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(LayoutConstants.radiusM),
                      bottomRight: Radius.circular(LayoutConstants.radiusM),
                    )),
                padding: const EdgeInsets.all(
                  LayoutConstants.paddingM,
                ),
                child: const CheckBaseInfoColumn(),
              ),
            ),
            const Expanded(
                flex: 5,
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: LayoutConstants.paddingL,
                        vertical: LayoutConstants.paddingM),
                    child: CheckListDetailsSection(),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
