import 'package:flutter/material.dart';
import 'package:frontend/menus/core/presentation/menu_nav_bar.dart';
import 'package:frontend/menus/core/shared/providers.dart';
import 'package:frontend/menus/inspection/facility/presentation/menu_facility_inspection_page.dart';
import 'package:frontend/menus/inspection/forklift/presentation/menu_forklift_inspection_page.dart';
import 'package:frontend/menus/inspection/line/presentation/menu_line_inspection_page.dart';
import 'package:frontend/menus/main/presentation/menu_main_page_backup.dart';
import 'package:frontend/menus/settings/presentation/menu_settings_page.dart';
import 'package:frontend/notifications/presentation/dialogs.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MenuFramePage extends ConsumerStatefulWidget {
  @override
  _MenuFramePageState createState() => _MenuFramePageState();
}

class _MenuFramePageState extends ConsumerState<MenuFramePage> {
  final _pages = const [
    MenuMainPage(),
    MenuFacilityInspectionPage(),
    MenuLineInspectionPage(),
    MenuForkLiftInspectionPage(),
    MenuSettingsPage(),
  ];

  @override
  void initState() {
    super.initState();
    showAllowNotificationDialog(context);
  }

  @override
  Widget build(BuildContext context) {
    final menuState = ref.watch(menuNotifierProvider);

    return Scaffold(
      body: _pages[menuState.index],
      bottomNavigationBar: const MenuNavBar(),
    );

    // Size _size = MediaQuery.of(context).size;

    // print(_size);

    // return Responsive(
    //   mobile: Container(
    //     color: Colors.red,
    //   ),
    //   tablet: Row(
    //     children: [
    //       Expanded(
    //         flex: 6,
    //         child: Container(
    //           color: Colors.amber,
    //         ),
    //       ),
    //       Expanded(
    //         flex: 9,
    //         child: Container(
    //           color: Colors.green,
    //         ),
    //       ),
    //     ],
    //   ),
    //   desktop: Row(
    //     children: [
    //       Expanded(
    //         flex: 4,
    //         child: Container(
    //           color: Colors.amber,
    //         ),
    //       ),
    //       Expanded(
    //         flex: 6,
    //         child: Container(
    //           color: Colors.amber,
    //         ),
    //       ),
    //       Expanded(
    //         flex: 9,
    //         child: Container(
    //           color: Colors.green,
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
