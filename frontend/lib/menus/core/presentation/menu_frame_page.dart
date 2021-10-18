import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/widgets/dialogs.dart';
import 'package:frontend/menus/core/presentation/menu_nav_bar.dart';
import 'package:frontend/menus/core/presentation/widgets/widgets.dart';
import 'package:frontend/menus/monitor/core/application/nfc_register_notifier.dart';
import 'package:frontend/menus/monitor/core/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:frontend/core/presentation/routes/app_router.gr.dart';

const _hardCodedRoutes = [
  BuildingTab(
    children: [
      MenuBuildingRoute(),
    ],
  ),
  LineTab(
    children: [
      MenuLineRoute(),
    ],
  ),
  ForkliftTab(
    children: [
      MenuForkLiftRoute(),
    ],
  ),
  SettingsTab(
    children: [
      MenuSettingsRoute(),
    ],
  ),
];

class MenuFramePage extends HookConsumerWidget {
  const MenuFramePage({Key? key}) : super(key: key);

  // @override
  // void initState() {
  //   super.initState();
  //   // showAllowNotificationDialog(context);
  // }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print("main frame built");

    ref.listen<NfcRegisterState>(
      nfcRegisterStateNotifierProvider,
      (state) {
        state.maybeWhen(
          saved: () {
            Future.delayed(const Duration(milliseconds: 500)).then(
              (_) {
                Dialogs.showOneAnswerDialog(
                  context,
                  color: Theme.of(context).colorScheme.secondary,
                  title: "완료",
                  message: "NFC 등록이 완료되었습니다.",
                  yesTitle: "확인",
                  onYesPressed: () {},
                  onDismissed: () {
                    AutoRouter.of(context)
                        .popUntilRouteWithName(MenuFrameRoute.name);
                  },
                );
              },
            );
          },
          failure: (failure) async {
            Dialogs.showOneAnswerDialog(
              context,
              color: Theme.of(context).errorColor,
              title: "오류",
              message: "오류가 발생하였습니다.\n오류는 다음과 같습니다.\n\n${failure.when(
                api: (code, message) => message,
                noConnection: () => "인터넷 연결 오류",
              )}\n",
              yesTitle: "확인",
              onYesPressed: () {},
              onDismissed: () {
                AutoRouter.of(context)
                    .popUntilRouteWithName(MenuFrameRoute.name);
              },
            );
          },
          orElse: () {
            print("checkState orElse invoked!!!");
          },
        );
      },
    );

    return AutoTabsRouter(
      routes: _hardCodedRoutes,
      builder: (context, child, animation) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          extendBody: true,
          resizeToAvoidBottomInset: false,
          body: child,
          bottomNavigationBar: BottomNavBar(
            currentIdx: tabsRouter.activeIndex,
            onTap: (index) => tabsRouter.setActiveIndex(index),
          ),
          floatingActionButton: const MainFAB(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        );
      },
    );
  }
}
