import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:frontend/check/domain/check_details_extension.dart';
import 'package:frontend/check/domain/check_info.dart';
import 'package:frontend/check/presentation/widgets/check_save_button.dart';
import 'package:frontend/check/shared/providers.dart';
import 'package:frontend/core/presentation/constants/constants.dart';
import 'package:frontend/core/presentation/widgets/dialogs.dart';
import 'package:frontend/core/presentation/widgets/responsive.dart';
import 'package:frontend/core/shared/providers.dart';
import 'package:frontend/tag/core/shared/providers.dart';

import '../widgets.dart';

class CheckInfoSection extends StatelessWidget {
  const CheckInfoSection({
    Key? key,
    required this.info,
  }) : super(key: key);

  final CheckInfo info;

  @override
  Widget build(BuildContext context) {
    print("base info built");

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CheckTitle(
          objNm: info.header.objNm,
          objGubunNm: info.header.objGubunNm,
        ),
        const SizedBox(height: LayoutConstants.spaceL),
        CheckHeaderInfo(
          header: info.header,
        ),
        const SizedBox(height: LayoutConstants.spaceL),
        Consumer(builder: (context, ref, child) {
          final tagId = ref.watch(
            tagNotifierProvider.select(
              (state) => state.maybeWhen(
                nfcRead: (tag) => tag.id,
                qrRead: (tag) => tag.id,
                orElse: () => "",
              ),
            ),
          );
          return CheckStandardRow(
            label: "회차",
            isSelected: info.sessions
                .map((item) => item.id == info.header.session)
                .toList(),
            onPressed: (index) {
              final selectedSession = info.sessions[index].id;

              ref
                  .read(checkInfoStateNotifierProvider.notifier)
                  .getCheckInfo(tagId, info.header.interval, selectedSession);
            },
            children: info.sessions.map((item) => item.name).toList(),
          );
        }),
        if (!Responsive.isMobile(context)) const CheckSaveButton(),
      ],
    );
  }
}
