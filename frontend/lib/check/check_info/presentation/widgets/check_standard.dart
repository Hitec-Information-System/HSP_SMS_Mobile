import 'package:flutter/material.dart';

import 'package:frontend/check/check_info/presentation/widgets.dart';
import 'package:frontend/core/presentation/constants/constants.dart';

class CheckStandardRow extends StatelessWidget {
  const CheckStandardRow({
    Key? key,
    required this.label,
    required this.children,
    required this.isSelected,
    required this.onPressed,
  }) : super(key: key);

  final String label;

  final List<String> children;
  final List<bool> isSelected;
  final void Function(int) onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Text(
        label,
        style: Theme.of(context).textTheme.bodyText1!.copyWith(
              color: Theme.of(context).hintColor,
            ),
      ),
      const SizedBox(height: LayoutConstants.spaceXS),
      CheckToggle(
        isSelected: isSelected,
        children: children,
        onPressed: onPressed,
      )
    ]);
  }
}
