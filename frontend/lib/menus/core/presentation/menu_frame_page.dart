import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/constants/constants.dart';
import 'package:frontend/core/presentation/widgets/dialogs.dart';
import 'package:frontend/menus/core/presentation/menu_nav_bar.dart';
import 'package:frontend/menus/core/presentation/widgets/widgets.dart';
import 'package:frontend/menus/monitor/core/application/nfc_register_notifier.dart';
import 'package:frontend/menus/monitor/core/shared/providers.dart';
import 'package:frontend/version_check/application/app_info_notifier.dart';
import 'package:frontend/version_check/domain/app_info.dart';
import 'package:frontend/version_check/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:frontend/core/presentation/routes/app_router.gr.dart';
import 'package:url_launcher/url_launcher.dart';

const _hardCodedRoutes = [
  HomeTab(
    children: [
      MenuHomeRoute(),
    ],
  ),
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
];

class MenuFramePage extends ConsumerWidget {
  const MenuFramePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print("main frame built");

    ref.listen<AppInfoState>(appInfoStateNotifierProvider, (state) {
      state.maybeWhen(
        outDated: (AppInfo info) {
          Dialogs.showOneAnswerDialog(
            context,
            color: Theme.of(context).colorScheme.secondary,
            icon: Icons.check_circle,
            title: "새 버전 다운로드",
            message:
                "새로운 기능을 추가, 수정한 버전을 다운로드할 수 있습니다. 확인을 눌러 다운로드 합니다.\n(새 버전을 다운로드 받지 않아 발생한 오류는 책임지지 않습니다.)",
            yesTitle: "확인",
            onYesPressed: () async {
              final apkUrl =
                  "${LogicConstants.apkDownloadBaseUrl}/${info.version.replaceAll(".", "-")}";
              if (await canLaunch(apkUrl)) {
                launch(apkUrl);
              }
            },
            onDismissed: () {},
          );
        },
        orElse: () {},
      );
    });

    ref.listen<NfcRegisterState>(
      nfcRegisterStateNotifierProvider,
      (state) {
        state.maybeWhen(
          saved: () {
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
          failure: (failure) async {
            Dialogs.showOneAnswerDialog(
              context,
              color: Theme.of(context).errorColor,
              title: "오류",
              message: "${failure.when(
                api: (int? code, String? message) => message,
                noConnection: () => "인터넷 연결 오류",
                internal: (String message) => "애플리케이션 내 오류",
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
