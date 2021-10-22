import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
    required this.currentIdx,
    required this.onTap,
  }) : super(key: key);

  final int currentIdx;
  final void Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 5,
      color: Theme.of(context).bottomAppBarColor,
      child: Row(
        children: [
          BottomNavBarItem(
            currentIdx: currentIdx,
            icon: Icons.bar_chart,
            index: 0,
            onTap: onTap,
          ),
          BottomNavBarItem(
            currentIdx: currentIdx,
            icon: Icons.gite,
            index: 1,
            onTap: onTap,
          ),
          BottomNavBarItem(currentIdx: currentIdx),
          BottomNavBarItem(
            currentIdx: currentIdx,
            icon: Icons.precision_manufacturing,
            index: 2,
            onTap: onTap,
          ),
          BottomNavBarItem(
            currentIdx: currentIdx,
            icon: MdiIcons.forklift,
            index: 3,
            onTap: onTap,
          ),
        ],
      ),
    );
  }
}

class BottomNavBarItem extends StatelessWidget {
  const BottomNavBarItem({
    Key? key,
    this.icon,
    this.index,
    required this.currentIdx,
    this.onTap,
  })  : assert((index != null && onTap != null) ||
            (index == null && onTap == null)),
        super(key: key);

  final IconData? icon;
  final int? index;
  final int currentIdx;

  final void Function(int)? onTap;

  @override
  Widget build(BuildContext context) {
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
          behavior: HitTestBehavior.translucent,
          onTap: () => onTap!(index!),
          child: Padding(
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
