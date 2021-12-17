import 'package:flutter/material.dart';
import 'package:web/features/home/core/presentation/prototest/parent_inherited_widget.dart';

class Child2Page extends StatefulWidget {
  const Child2Page({Key? key}) : super(key: key);

  @override
  _Child2PageState createState() => _Child2PageState();
}

class _Child2PageState extends State<Child2Page> {
  String value = "Page 2";

  @override
  Widget build(BuildContext context) {
    print("child2 rebuilt");

    final currentValue = InheritedParentWidget.of(context)!.child2Title;

    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Text(
            currentValue,
          ),
        ],
      ),
    );
  }
}
