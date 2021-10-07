import 'package:flutter/material.dart';
import 'package:frontend/menus/monitor/core/presentation/monit_page.dart';
import 'package:frontend/menus/monitor/core/shared/providers.dart';

class MenuBuildingPage extends StatelessWidget {
  const MenuBuildingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("building built");
    return MonitPage(
      categoryNm: "시설물",
      monitNotifierProvider: buildingMonitStateNotifierProvider,
    );
  }
}
