import 'package:flutter/material.dart';
import 'package:web/core/constant/constant.dart';

class DecorationPage extends StatelessWidget {
  const DecorationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kPrimaryThemeColor.withOpacity(.8),
      ),
    );
  }
}
