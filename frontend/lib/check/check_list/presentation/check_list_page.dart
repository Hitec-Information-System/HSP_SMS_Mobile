import 'package:flutter/material.dart';
import 'package:frontend/check/check_list/presentation/mobile/check_list_mobile_page.dart';
import 'package:frontend/check/check_list/presentation/tablet/check_list_tablet_page.dart';

import 'package:frontend/core/presentation/widgets/responsive.dart';

class CheckListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: const ChecklistMobilePage(),
      tablet: const ChecklistTabletPage(),
      desktop: Container(),
    );
  }
}
