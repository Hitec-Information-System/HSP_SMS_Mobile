import 'package:flutter/material.dart';
import 'package:web/core/widgets/widgets.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveWidget(
        desktop: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.amber,
              ),
            ),
            Expanded(
                flex: 6,
                child: Container(
                  color: Colors.blueAccent,
                )),
          ],
        ),
        tablet: Row(
          children: [
            Expanded(
                flex: 6,
                child: Container(
                  color: Colors.blueAccent,
                )),
          ],
        ),
        mobile: Expanded(
            flex: 6,
            child: Container(
              color: Colors.blueAccent,
            )),
      ),
    );
  }
}
