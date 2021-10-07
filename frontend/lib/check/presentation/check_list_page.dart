import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frontend/check/application/check_info_notifier.dart';

import 'package:frontend/check/presentation/mobile/check_list_mobile_page.dart';
import 'package:frontend/check/presentation/tablet/check_list_tablet_page.dart';
import 'package:frontend/check/shared/providers.dart';
import 'package:frontend/core/presentation/widgets/dialogs.dart';
import 'package:frontend/core/presentation/widgets/responsive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:frontend/core/presentation/routes/app_router.gr.dart';

class CheckListPage extends StatelessWidget {
  const CheckListPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      ref.listen<CheckInfoState>(
        checkInfoStateNotifierProvider,
        (state) {
          state.maybeWhen(
            loading: (_, __) {
              Dialogs.showLoadingDialog(context);
            },
            saving: (_, __) {
              Dialogs.showLoadingDialog(context);
            },
            saved: (_, __) {
              AutoRouter.of(context).popUntilRouteWithName(CheckListRoute.name);
              Dialogs.showOneAnswerDialog(
                context,
                color: Theme.of(context).colorScheme.secondary,
                icon: Icons.check_circle,
                title: "저장 완료",
                message: "저장을 완료하였습니다",
                yesTitle: "확인",
                onYesPressed: () {},
                onDismissed: () {
                  AutoRouter.of(context)
                      .popUntilRouteWithName(MenuFrameRoute.name);
                },
              );
            },
            failure: (_, __, failure) {
              AutoRouter.of(context).popUntilRouteWithName(CheckListRoute.name);
              Dialogs.showOneAnswerDialog(
                context,
                color: Theme.of(context).errorColor,
                title: "오류",
                message:
                    "오류가 발생하였습니다. 관리자에게 문의하여 주세요.\n오류는 다음과 같습니다.\n\n${failure.when(
                  api: (code, message) => message,
                  noConnection: () => "인터넷 연결 오류",
                )}\n",
                yesTitle: "확인",
                onYesPressed: () {},
                onDismissed: () {
                  AutoRouter.of(context)
                      .popUntilRouteWithName(CheckListRoute.name);
                },
              );
            },
            orElse: () {
              AutoRouter.of(context).popUntilRouteWithName(CheckListRoute.name);
            },
          );
        },
      );

      return const Responsive(
        mobile: ChecklistMobilePage(),
        tablet: ChecklistTabletPage(),
        // desktop: ChecklistDesktopPage(),
        desktop: ChecklistTabletPage(),
      );
    });
  }
}
