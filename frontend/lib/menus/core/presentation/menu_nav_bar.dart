import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:frontend/menus/core/shared/providers.dart';

// class MenuNavBar extends ConsumerWidget {
//   const MenuNavBar({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final menuState = ref.watch(menuNotifierProvider);

//     return BottomNavigationBar(
//       type: BottomNavigationBarType.fixed,
//       showSelectedLabels: true,
//       showUnselectedLabels: true,
//       backgroundColor: Theme.of(context).bottomAppBarColor,
//       onTap: (tabIndex) =>
//           ref.read(menuNotifierProvider.notifier).changeCurrentPage(tabIndex),
//       currentIndex: menuState.index,
//       items: [
//         BottomNavigationBarItem(
//             icon: const Icon(Icons.home),
//             label: AppLocalizations.of(context)?.translate('menu_main') ?? ""),
//         BottomNavigationBarItem(
//             icon: const Icon(Icons.gite),
//             label:
//                 AppLocalizations.of(context)?.translate('menu_facility') ?? ""),
//         BottomNavigationBarItem(
//             icon: const Icon(Icons.precision_manufacturing),
//             label: AppLocalizations.of(context)?.translate('menu_line') ?? ""),
//         BottomNavigationBarItem(
//             icon: const Icon(MdiIcons.forklift),
//             label:
//                 AppLocalizations.of(context)?.translate('menu_forklift') ?? ""),
//         BottomNavigationBarItem(
//             icon: const Icon(Icons.settings),
//             label:
//                 AppLocalizations.of(context)?.translate('menu_settings') ?? ""),
//       ],
//     );
//   }
// }

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 5,
      color: Theme.of(context).bottomAppBarColor,
      child: Row(
        children: const [
          BottomNavBarItem(icon: Icons.gite, index: 0),
          BottomNavBarItem(icon: Icons.precision_manufacturing, index: 1),
          BottomNavBarItem(),
          BottomNavBarItem(icon: MdiIcons.forklift, index: 2),
          BottomNavBarItem(icon: Icons.settings, index: 3),
        ],
      ),
    );
  }
}

class BottomNavBarItem extends ConsumerWidget {
  const BottomNavBarItem({
    Key? key,
    this.icon,
    this.index,
  }) : super(key: key);

  final IconData? icon;
  final int? index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIdx =
        ref.watch(menuNotifierProvider.select((state) => state.index));

    if (index == null) {
      return const Expanded(
        child: Opacity(
          opacity: 0,
          child: IconButton(
            icon: Icon(
              Icons.no_cell,
              color: Colors.transparent,
            ),
            color: Colors.transparent,
            onPressed: null,
          ),
        ),
      );
    } else {
      return Expanded(
        child: GestureDetector(
          behavior: HitTestBehavior.translucent, // to increase touchable area
          onTap: () {
            ref.read(menuNotifierProvider.notifier).changeCurrentPage(index!);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 20),
            child: Icon(
              icon,
              size: currentIdx == index ? 30 : 25,
              color: currentIdx == index
                  ? Theme.of(context).colorScheme.secondary
                  : Theme.of(context).unselectedWidgetColor,
            ),
          ),
        ),
      );
    }
  }
}
