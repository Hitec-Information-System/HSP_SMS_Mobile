import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frontend/check/check_list/shared/providers.dart';
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const CheckTitle(),
              const SizedBox(height: LayoutConstants.spaceL),
              const CheckInfoSection(),
              const SizedBox(height: LayoutConstants.spaceL),
              ref.watch(checkStandardNotifierProvider).when(
                    initial: () => Container(),
                    loadInProgress: () => Container(),
                    loadSuccess: (data) => CheckStandardRow(
                      label: "회차",
                      children: data.intervals.map((e) => e.name).toList(),
                    ),
                    loadFailure: (_) => Container(),
                  ),
              const SizedBox(height: LayoutConstants.spaceM),
              ref.watch(checkStandardNotifierProvider).when(
                    initial: () => Container(),
                    loadInProgress: () => Container(),
                    loadSuccess: (data) => CheckStandardRow(
                      label: "점검주기",
                      children: data.sessions.map((e) => e.name).toList(),
                    ),
                    loadFailure: (_) => Container(),
                  ),
            ],
          ),
        )),
        if (!Responsive.isMobile(context))
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: LayoutConstants.paddingM),
            child: ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).pop();
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
