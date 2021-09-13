import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/constants/constants.dart';

import '../widgets.dart';

class ChecklistDesktopPage extends StatelessWidget {
  const ChecklistDesktopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 3,
            child: CheckBaseInfoColumn(),
          ),
          Expanded(
            flex: 5,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: LayoutConstants.paddingL,
                    vertical: LayoutConstants.paddingM),
                child: CheckListDetailsSection(),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.blueAccent,
            ),
          ),
        ],
      ),
    );
  }
}
