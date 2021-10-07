import 'package:flutter/material.dart';

import 'package:frontend/check/domain/check_info.dart';
import 'package:frontend/check/presentation/mobile/check_list_mobile_page.dart';
import 'package:frontend/check/presentation/tablet/check_list_tablet_page.dart';
import 'package:frontend/core/presentation/widgets/responsive.dart';

class CheckListPage extends StatelessWidget {
  const CheckListPage({
    Key? key,
    required this.info,
  }) : super(key: key);

  final CheckInfo info;

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: ChecklistMobilePage(
        info: info,
      ),
      tablet: ChecklistTabletPage(info: info),
      // desktop: ChecklistDesktopPage(),
      desktop: ChecklistTabletPage(
        info: info,
      ),
    );
  }
}
