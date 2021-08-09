import 'package:flutter/material.dart';
import 'package:frontend/menus/core/presentation/menu_nav_bar.dart';
import 'package:frontend/menus/core/shared/providers.dart';
import 'package:frontend/menus/inspection/facility/presentation/menu_facility_inspection_page.dart';
import 'package:frontend/menus/inspection/forklift/presentation/menu_forklift_inspection_page.dart';
import 'package:frontend/menus/inspection/line/presentation/menu_line_inspection_page.dart';
import 'package:frontend/menus/main/presentation/menu_main_page.dart';
import 'package:frontend/menus/settings/presentation/menu_settings_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MenuFramePage extends HookConsumerWidget {
  final _pages = const [
    MenuMainPage(),
    MenuFacilityInspectionPage(),
    MenuLineInspectionPage(),
    MenuForkLiftInspectionPage(),
    MenuSettingsPage(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final menuState = ref.watch(menuNotifierProvider);

    return Scaffold(
      body: _pages[menuState.index],
      bottomNavigationBar: const MenuNavBar(),
    );
  }
}
