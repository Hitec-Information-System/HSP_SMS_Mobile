import 'package:flutter/material.dart';
import 'package:frontend/menus/monitor/core/presentation/monit_page.dart';
import 'package:frontend/menus/monitor/core/shared/providers.dart';

class MenuLinePage extends StatelessWidget {
  const MenuLinePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MonitPage(
      categoryNm: "라인",
      monitNotifierProvider: lineMonitStateNotifierProvider,
    );
  }
}
