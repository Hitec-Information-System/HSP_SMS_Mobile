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
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const CheckTitle(),
          const SizedBox(height: LayoutConstants.spaceL),
          const CheckInfoSection(),
          const SizedBox(height: LayoutConstants.spaceL),
          ref.watch(checkInfoStateNotifierProvider).maybeWhen(
                loaded: (data) => CheckStandardRow(
                  label: "회차",
                  children: data.intervals.map((e) => e.name).toList(),
                ),
                orElse: () => const SizedBox(),
              ),
          const SizedBox(height: LayoutConstants.spaceM),
          ref.watch(checkInfoStateNotifierProvider).maybeWhen(
              loaded: (data) => CheckStandardRow(
                    label: "점검주기",
                    children: data.sessions.map((e) => e.name).toList(),
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
      ),
    );
  }
}
