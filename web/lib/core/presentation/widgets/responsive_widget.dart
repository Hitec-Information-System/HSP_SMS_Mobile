import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({
    Key? key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  }) : super(key: key);

  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  static const minTabletWidth = 650;
  static const maxTabletWidth = 1100;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < minTabletWidth;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= minTabletWidth &&
      MediaQuery.of(context).size.width < maxTabletWidth;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= maxTabletWidth;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= maxTabletWidth) {
          return desktop;
        } else if (constraints.maxWidth >= minTabletWidth) {
          return tablet;
        } else {
          return mobile;
        }
      },
    );
  }
}
