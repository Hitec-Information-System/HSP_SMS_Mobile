import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frontend/check/application/check_info_notifier.dart';
import 'package:frontend/check/presentation/widgets/check_base_info_column.dart';
import 'package:frontend/check/presentation/widgets/check_details.dart';
import 'package:frontend/check/shared/providers.dart';
import 'package:frontend/core/presentation/constants/constants.dart';
import 'package:frontend/core/presentation/widgets/dialogs.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:frontend/core/presentation/routes/app_router.gr.dart';

class ChecklistTabletPage extends ConsumerWidget {
  const ChecklistTabletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<CheckInfoState>(checkInfoStateNotifierProvider, (state) {
      state.maybeWhen(
        saving: (tagId, info) {},
        saved: (_, __) {
          Dialogs.showOneAnswerDialog(
            context,
            color: Theme.of(context).colorScheme.secondary,
            icon: Icons.check_circle,
            title: "저장 완료",
            message: "저장을 완료하였습니다",
            yesTitle: "확인",
            onYesPressed: () {},
            onDismissed: () {
              AutoRouter.of(context).popUntilRouteWithName(MenuFrameRoute.name);
            },
          );
        },
        orElse: () {},
      );
    });

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
                    child: CheckBaseInfoColumn()),
              ),
            ),
            const Expanded(
              flex: 5,
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(
                  horizontal: LayoutConstants.paddingL,
                  vertical: LayoutConstants.paddingM,
                ),
                child: CheckListDetailsSection(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
