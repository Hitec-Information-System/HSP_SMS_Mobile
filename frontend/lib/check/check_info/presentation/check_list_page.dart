import 'package:flutter/material.dart';
import 'package:frontend/check/check_info/presentation/mobile/check_list_mobile_page.dart';
import 'package:frontend/check/check_info/presentation/tablet/check_list_tablet_page.dart';
import 'package:frontend/core/presentation/widgets/responsive.dart';

class CheckListPage extends StatelessWidget {
  const CheckListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: ChecklistMobilePage(),
      tablet: ChecklistTabletPage(),
      // desktop: ChecklistDesktopPage(),
      desktop: ChecklistTabletPage(),
    );
  }
}
