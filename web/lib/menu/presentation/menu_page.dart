import 'package:flutter/material.dart';
import 'package:web/core/presentation/widgets/responsive_widget.dart';
import 'package:web/menu/presentation/widgets/status_chart_widget.dart';

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
            Expanded(
              flex: 2,
              child: StatusChartWidget(),
            )
          ],
        ),
        tablet: Row(
          children: [
            Expanded(
                flex: 6,
                child: Container(
                  color: Colors.blueAccent,
                )),
            Expanded(
              flex: 2,
              child: StatusChartWidget(),
            )
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
