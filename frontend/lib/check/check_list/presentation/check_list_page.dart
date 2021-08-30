import 'package:flutter/material.dart';
import 'package:frontend/check/check_list/presentation/desktop/check_list_desktop_page.dart';
import 'package:frontend/check/check_list/presentation/mobile/check_list_mobile_page.dart';
import 'package:frontend/check/check_list/presentation/tablet/check_list_tablet_page.dart';
import 'package:frontend/check/check_list/shared/providers.dart';

import 'package:frontend/core/presentation/widgets/responsive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CheckListPage extends ConsumerStatefulWidget {
  @override
  _CheckListPageState createState() => _CheckListPageState();
}

class _CheckListPageState extends ConsumerState<CheckListPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () =>
          ref.watch(checkStandardNotifierProvider.notifier).getCheckStandard(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: ChecklistMobilePage(),
      tablet: ChecklistTabletPage(),
      desktop: ChecklistDesktopPage(),
    );
  }
}
