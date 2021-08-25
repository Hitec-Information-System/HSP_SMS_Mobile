import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/constants/constants.dart';

class CheckConditionRow extends StatefulWidget {
  const CheckConditionRow({
    Key? key,
    required this.label,
    required this.children,
  }) : super(key: key);

  final String label;

  final List<String> children;

  @override
  _CheckConditionRowState createState() => _CheckConditionRowState();
}

class _CheckConditionRowState extends State<CheckConditionRow> {
  late List<bool> _isSelected;

  @override
  void initState() {
    if (widget.children.isNotEmpty) {
      _isSelected = widget.children.map((_) => false).toList();
    } else {
      _isSelected = [false];
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: Row(
        children: [
          Text(
            widget.label,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: Theme.of(context).hintColor,
                ),
          ),
          const Spacer(),
          ToggleButtons(
            constraints: const BoxConstraints(
              minHeight: 35,
              minWidth: 40,
            ),
            selectedColor: Theme.of(context).accentColor,
            fillColor: Theme.of(context).accentColor.withOpacity(.5),
            hoverColor: Theme.of(context).accentColor.withOpacity(.2),
            disabledBorderColor: Theme.of(context).disabledColor,
            disabledColor: Theme.of(context).disabledColor,
            selectedBorderColor: Theme.of(context).accentColor,
            borderWidth: 2,
            borderRadius: BorderRadius.circular(LayoutConstants.radiusM),
            isSelected: _isSelected,
            // ! this toggle button will be disabled when onPressed is null
            onPressed: widget.children.isNotEmpty
                ? (index) {
                    setState(() {
                      for (var buttonIndex = 0;
                          buttonIndex < _isSelected.length;
                          buttonIndex++) {
                        if (buttonIndex == index) {
                          _isSelected[buttonIndex] = true;
                        } else {
                          _isSelected[buttonIndex] = false;
                        }
                      }
                    });
                  }
                : null,
            children: widget.children.isNotEmpty
                ? widget.children.map((label) => Text(label)).toList()
                : const [Text("없음")],
          ),
        ],
      ),
    );
  }
}
