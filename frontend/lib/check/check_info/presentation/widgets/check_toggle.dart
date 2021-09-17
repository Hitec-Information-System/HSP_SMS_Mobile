import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/constants/constants.dart';
import 'package:frontend/core/presentation/widgets/custom_toggle_button/widgets.dart';

class CheckToggle extends StatelessWidget {
  const CheckToggle({
    Key? key,
    required this.isSelected,
    required this.children,
    required this.onPressed,
  }) : super(key: key);

  final List<bool> isSelected;
  final List<String> children;
  final void Function(int) onPressed;

  @override
  Widget build(BuildContext context) {
    return CustomToggleButton(
      constraints: const BoxConstraints(
        minHeight: 35,
        minWidth: 40,
      ),
      selectedColor: Theme.of(context).colorScheme.secondary,
      fillColor: Theme.of(context).colorScheme.secondary.withOpacity(.5),
      hoverColor: Theme.of(context).colorScheme.secondary.withOpacity(.2),
      disabledBorderColor: Theme.of(context).disabledColor,
      disabledColor: Theme.of(context).disabledColor,
      selectedBorderColor: Theme.of(context).colorScheme.secondary,
      borderWidth: 2,
      borderRadius: LayoutConstants.radiusM,
      isSelected: isSelected,
      onPressed: (index) {
        onPressed(index);
      },
      children: children.isNotEmpty
          ? children.map((item) => Text(item)).toList()
          : const [
              Text("없음"),
            ],
    );
  }
}
