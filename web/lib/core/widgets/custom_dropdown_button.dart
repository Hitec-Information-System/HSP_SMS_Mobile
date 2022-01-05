import 'package:flutter/material.dart';

class DropdownList extends StatelessWidget {
  const DropdownList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Stack(
        children: [
          Positioned(
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                color: Colors.transparent,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          ),
          Positioned(
            left: 200,
            top: 200,
            child: Text("Menu"),
          ),
        ],
      ),
    );
  }
}
