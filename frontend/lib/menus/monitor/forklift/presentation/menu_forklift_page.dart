import 'package:flutter/material.dart';
import 'package:frontend/menus/monitor/core/presentation/monit_page.dart';
import 'package:frontend/menus/monitor/core/shared/providers.dart';

class MenuForkLiftPage extends StatelessWidget {
  const MenuForkLiftPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("forklift built");
    return MonitPage(
      categoryNm: "지게차",
      monitNotifierProvider: forkliftMonitStateNotifierProvider,
    );
  }
}
