import 'package:flutter/material.dart';

class InheritedParentWidget extends InheritedWidget {
  const InheritedParentWidget({
    Key? key,
    required this.controller,
    required this.parentTitle,
    required this.child1Title,
    required this.child2Title,
    required Widget child,
  }) : super(key: key, child: child);

  final String parentTitle;
  final String child1Title;
  final String child2Title;
  final TabController controller;

  static InheritedParentWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedParentWidget>();
  }

  @override
  bool updateShouldNotify(InheritedParentWidget oldWidget) {
    return true;
  }
}
