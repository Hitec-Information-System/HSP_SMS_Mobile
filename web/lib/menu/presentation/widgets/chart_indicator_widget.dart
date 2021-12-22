import 'package:flutter/material.dart';
import 'package:web/core/constant/constant.dart';

class ChartIndicatorWidget extends StatelessWidget {
  const ChartIndicatorWidget({
    Key? key,
    required this.color,
    required this.text,
    required this.percent,
    required this.value,
    required this.icon,
    this.size = 30,
    this.textColor = const Color(0xFF505050),
  }) : super(key: key);

  final Color color;
  final String text;
  final double percent;
  final double value;
  final IconData icon;
  final double size;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Card(
        elevation: 1.5,
        color: kPrimaryThemeColor,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Icon(
                icon,
                size: size,
                color: color,
              ),
              const SizedBox(width: 30),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: textColor),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      "$value",
                      style: TextStyle(
                        fontSize: 14,
                        color: textColor,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
              Text(
                "${percent - percent % 0.01}%",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: textColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
