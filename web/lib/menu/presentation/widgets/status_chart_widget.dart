import 'package:flutter/material.dart';
import 'package:web/core/presentation/widgets/widgets.dart';

class StatusChartWidget extends StatelessWidget {
  const StatusChartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
          vertical: kDefaultPadding, horizontal: kDefaultPadding / 2),
      padding: const EdgeInsets.symmetric(
          vertical: kDefaultPadding, horizontal: kDefaultPadding / 2),
      decoration: BoxDecoration(
        color: kGrayColor,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
