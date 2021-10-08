import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:frontend/check/domain/check_info.dart';
import 'package:frontend/core/presentation/constants/constants.dart';

class CheckHeaderInfo extends StatelessWidget {
  const CheckHeaderInfo({
    Key? key,
    required this.header,
  }) : super(key: key);

  final CheckHeader header;

  @override
  Widget build(BuildContext context) {
    print("header rebuilt");
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
              children: [
                CheckInfoRow(
                  label: header.objGubunNm,
                  value: header.objNm,
                ),
                const Divider(thickness: 1),
                CheckInfoRow(
                  label: "작성자",
                  value: header.userNm,
                ),
                const Divider(thickness: 1),
                CheckInfoRow(
                  label: "점검시간",
                  value: header.dateCreated != ""
                      ? header.dateFormatted
                      : DateFormat("yyyy-MM-dd HH:mm").format(
                          DateTime.now(),
                        ),
                ),
              ],
            )),
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
