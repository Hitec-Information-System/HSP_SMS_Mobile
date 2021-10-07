import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frontend/menus/core/presentation/menu_nav_bar.dart';
import 'package:frontend/menus/core/presentation/widgets/widgets.dart';
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

    return AutoTabsRouter(
      routes: _hardCodedRoutes,
      builder: (context, child, animation) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          extendBody: true,
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
