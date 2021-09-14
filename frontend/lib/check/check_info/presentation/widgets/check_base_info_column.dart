import 'package:flutter/material.dart';
import 'package:frontend/check/check_info/shared/providers.dart';
import 'package:frontend/core/presentation/constants/constants.dart';
import 'package:frontend/core/presentation/widgets/responsive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../widgets.dart';

class CheckBaseInfoColumn extends ConsumerWidget {
  const CheckBaseInfoColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print("base info built");
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const CheckTitle(),
        const SizedBox(height: LayoutConstants.spaceL),
        const CheckInfoSection(),
        const SizedBox(height: LayoutConstants.spaceL),
        ref.watch(checkInfoStateNotifierProvider).maybeWhen(
              loaded: (tagId, data) => CheckStandardRow(
                label: "회차",
                isSelected: data.intervals
                    .map((item) => item.id == data.header.interval)
                    .toList(),
                children: data.intervals.map((item) => item.name).toList(),
                onPressed: (index) {
                  ref
                      .read(checkInfoStateNotifierProvider.notifier)
                      .setCheckInfo(data.copyWith.header(
                        interval: data.intervals[index].id,
                      ));
                  ref
                      .read(checkInfoStateNotifierProvider.notifier)
                      .getCheckInfo(tagId, data.intervals[index].id);
                },
              ),
              orElse: () => const SizedBox(),
            ),
        const SizedBox(height: LayoutConstants.spaceM),
        ref.watch(checkInfoStateNotifierProvider).maybeWhen(
            loaded: (_, data) => CheckStandardRow(
                  label: "점검주기",
                  isSelected: data.sessions
                      .map((item) => item.id == data.header.chasu)
                      .toList(),
                  onPressed: (index) {
                    ref
                        .read(checkInfoStateNotifierProvider.notifier)
                        .setCheckInfo(
                          data.copyWith.header(
                            chasu: data.sessions[index].id,
                          ),
                        );
                  },
                  children: data.sessions.map((item) => item.name).toList(),
                ),
            orElse: () => const SizedBox()),
        if (!Responsive.isMobile(context))
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: LayoutConstants.paddingM),
            child: ElevatedButton(
              onPressed: () {
                // TODO: Save
              },
              child: const Text(
                "저장",
              ),
            ),
          ),
      ],
    );
  }
}
