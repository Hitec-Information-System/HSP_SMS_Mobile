import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/constants/constants.dart';

class Responsive extends StatelessWidget {
  const Responsive({
    Key? key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  }) : super(key: key);

  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= LayoutConstants.screenDesktop) {
        return desktop;
      } else if (constraints.maxWidth >= LayoutConstants.screenTablet) {
        return tablet;
      } else {
        return mobile;
      }
    });
  }
}
