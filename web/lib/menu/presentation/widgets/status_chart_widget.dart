import 'package:flutter/material.dart';
import 'package:web/core/presentation/widgets/widgets.dart';
import 'package:web/menu/presentation/widgets/chart_widget.dart';

class StatusChartWidget extends StatelessWidget {
  const StatusChartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
          vertical: kDefaultPadding, horizontal: kDefaultPadding / 2),
      padding: const EdgeInsets.symmetric(
          vertical: kDefaultPadding, horizontal: kDefaultPadding),
      decoration: BoxDecoration(
        color: kBgDarkColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            "점검 현황",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          const SizedBox(height: 12),
          ChartWidget(),
        ],
      ),
    ).addNeumorphism(
      blurRadius: 4,
      borderRadius: 8,
      offset: const Offset(2, 2),
    );
  }
}
