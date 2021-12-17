import 'package:flutter/material.dart';

import 'package:web/features/home/core/presentation/prototest/parent_inherited_widget.dart';

class Child1Page extends StatefulWidget {
  const Child1Page({
    Key? key,
    required this.onParentAction,
    required this.onChild2Action,
  }) : super(key: key);

  final ValueChanged<String> onParentAction;
  final ValueChanged<String> onChild2Action;

  @override
  _Child1PageState createState() => _Child1PageState();
}

class _Child1PageState extends State<Child1Page> {
  String value = "Page 1";

  String parentValue = "Updated by child";

  @override
  Widget build(BuildContext context) {
    print("child 1 rebuilt");

    final currentValue = InheritedParentWidget.of(context)!.child1Title;

    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Text(
            currentValue,
          ),
          ElevatedButton(
            child: Text("Action 2"),
            onPressed: () {
              widget.onParentAction(parentValue);
            },
          ),
          ElevatedButton(
            child: Text("Action 3"),
            onPressed: () {
              widget.onChild2Action("Updated from child 1");
            },
          ),
          ElevatedButton(
            child: Text("Action 4"),
            onPressed: () {
              InheritedParentWidget.of(context)!.controller.index = 1;
            },
          )
        ],
      ),
    );
  }
}
