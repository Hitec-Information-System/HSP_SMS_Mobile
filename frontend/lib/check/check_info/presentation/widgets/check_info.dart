import 'package:flutter/material.dart';
import 'package:frontend/check/check_info/shared/providers.dart';
import 'package:frontend/core/presentation/constants/constants.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:nil/nil.dart';

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
          child: Consumer(builder: (context, ref, child) {
            final state = ref.watch(checkInfoStateNotifierProvider);
            return state.maybeWhen(
                loaded: (data) => Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        CheckInfoRow(
                          label: data.header.objGubunNm,
                          value: data.header.objNm,
                        ),
                        const Divider(thickness: 1),
                        CheckInfoRow(
                          label: "작성자",
                          value: data.header.userNm,
                        ),
                        const Divider(thickness: 1),
                        CheckInfoRow(
                          label: "점검시간",
                          value: DateFormat("yyyy-MM-dd H:mm")
                              .format(DateTime.now()),
                        ),
                      ],
                    ),
                orElse: () => nil);
          }),
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
