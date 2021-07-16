import 'package:flutter/material.dart';
import 'package:web/pie_chart_example/presentation/samples/samples.dart';

class PieChartPage extends StatelessWidget {
  const PieChartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFECEAEB),
      child: Padding(
        padding: const EdgeInsets.all(28),
        child: ListView(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  "Pie Chart",
                  style: TextStyle(
                      color: Color(0xFF333333),
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 8),
            PieChartSample1(),
            const SizedBox(height: 12),
            PieChartSample2(),
            const SizedBox(height: 12),
            PieChartSample3(),
          ],
        ),
      ),
    );
  }
}
