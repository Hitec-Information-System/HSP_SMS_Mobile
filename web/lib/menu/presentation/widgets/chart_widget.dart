import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:web/menu/presentation/widgets/chart_indicator_widget.dart';

final values = [
  20.0,
  30.0,
  40.0,
];

const graphColors = [
  Color(0xFF2697FF),
  Color(0xFFFFCF25),
  Color(0xFFED2728),
];

const legendTitle = [
  "점검 완료",
  "점검 중",
  "점검 전",
];

const legendIcons = [
  Icons.done,
  Icons.checklist,
  Icons.motion_photos_pause_rounded,
];

class ChartWidget extends HookWidget {
  const ChartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;

    // HookWidget 사용 이유
    final touchedIndex = useState(-1);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // graph part
        AspectRatio(
          aspectRatio: 1,
          child: PieChart(
            PieChartData(
              pieTouchData: PieTouchData(touchCallback: (pieTouchResponse) {
                final desiredTouch =
                    pieTouchResponse.touchInput is! PointerExitEvent &&
                        pieTouchResponse.touchInput is! PointerUpEvent;
                if (desiredTouch && pieTouchResponse.touchedSection != null) {
                  touchedIndex.value =
                      pieTouchResponse.touchedSection!.touchedSectionIndex;
                } else {
                  touchedIndex.value = -1;
                }
              }),
              borderData: FlBorderData(
                show: false,
              ),
              sectionsSpace: 5,
              centerSpaceRadius: _width * 0.045,
              // pie graphe degree (starts from 1st plane)
              startDegreeOffset: -90.0,
              sections: List.generate(values.length, (i) {
                final isTouched = i == touchedIndex.value;
                final radius = isTouched ? _width * 0.03 : _width * 0.025;

                const fontSize = 16.0;

                final totalValue =
                    values.reduce((value, element) => value + element);

                final percent = (values[i] / totalValue) * 100;

                return PieChartSectionData(
                  color: graphColors[i],
                  value: values[i],
                  title: "${percent - percent % 0.01}%",
                  showTitle: isTouched,
                  radius: radius,
                  titleStyle: const TextStyle(
                      fontSize: fontSize,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffffffff)),
                );
              }),
            ),
          ),
        ),
        // legend details
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: List.generate(values.length, (i) {
            final totalValue =
                values.reduce((value, element) => value + element);

            final percent = (values[i] / totalValue) * 100;

            return ChartIndicatorWidget(
              color: graphColors[i],
              text: legendTitle[i],
              percent: percent,
              value: values[i],
              icon: legendIcons[i],
            );
          }),
        ),
      ],
    );
  }
}
