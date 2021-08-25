import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/constants/constants.dart';

class CheckInfoSection extends StatelessWidget {
  const CheckInfoSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: LayoutConstants.paddingXS),
      child: Material(
        elevation: 2,
        borderRadius: BorderRadius.circular(LayoutConstants.radiusM),
        color: Theme.of(context).cardColor,
        child: Padding(
          padding: const EdgeInsets.all(
              (LayoutConstants.paddingM + LayoutConstants.paddingL) / 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              CheckInfoRow(
                label: "시설물",
                value: "외부 물류창고 및 서편 외각",
              ),
              Divider(thickness: 1),
              CheckInfoRow(
                label: "작성자",
                value: "홍길동",
              ),
              Divider(thickness: 1),
              CheckInfoRow(
                label: "점검시간",
                value: "2021.01.01 14:25",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CheckInfoRow extends StatelessWidget {
  const CheckInfoRow({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                color: Theme.of(context).hintColor,
              ),
        ),
        Expanded(
          child: Text(
            value,
            textAlign: TextAlign.right,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
      ],
    );
  }
}
