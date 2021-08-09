import 'package:flutter/material.dart';
import 'package:frontend/core/application/localization/app_localizations.dart';
import 'package:frontend/menus/core/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MenuNavBar extends ConsumerWidget {
  const MenuNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final menuState = ref.watch(menuNotifierProvider);

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      onTap: (tabIndex) =>
          ref.watch(menuNotifierProvider.notifier).changeCurrentPage(tabIndex),
      currentIndex: menuState.index,
      items: [
        BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: AppLocalizations.of(context)?.translate('menu_main') ?? ""),
        BottomNavigationBarItem(
            icon: const Icon(Icons.gite),
            label:
                AppLocalizations.of(context)?.translate('menu_facility') ?? ""),
        BottomNavigationBarItem(
            icon: const Icon(Icons.precision_manufacturing),
            label: AppLocalizations.of(context)?.translate('menu_line') ?? ""),
        BottomNavigationBarItem(
            icon: const Icon(MdiIcons.forklift),
            label:
                AppLocalizations.of(context)?.translate('menu_forklift') ?? ""),
        BottomNavigationBarItem(
            icon: const Icon(Icons.settings),
            label:
                AppLocalizations.of(context)?.translate('menu_settings') ?? ""),
      ],
    );
  }
}
