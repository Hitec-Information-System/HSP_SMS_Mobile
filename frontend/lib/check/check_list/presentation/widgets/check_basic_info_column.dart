import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frontend/check/check_list/shared/providers.dart';
import 'package:frontend/core/presentation/constants/constants.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../widgets.dart';

class CheckBasicInfoColumn extends ConsumerWidget {
  const CheckBasicInfoColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(LayoutConstants.radiusM),
            bottomRight: Radius.circular(LayoutConstants.radiusM),
          )),
      padding: const EdgeInsets.all(
        LayoutConstants.paddingM,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const CheckTitle(),
                  const SizedBox(height: LayoutConstants.spaceL),
                  const CheckInfoSection(),
                  const SizedBox(height: LayoutConstants.spaceL),
                  ref.watch(checkStandardNotifierProvider).when(
                        initial: () => Container(),
                        loadInProgress: () => Container(),
                        loadSuccess: (data) => CheckConditionCard(
                          label: "회차",
                          children: data.intervals.map((e) => e.name).toList(),
                        ),
                        loadFailure: (_) => Container(),
                      ),
                  const SizedBox(height: LayoutConstants.spaceL),
                  ref.watch(checkStandardNotifierProvider).when(
                        initial: () => Container(),
                        loadInProgress: () => Container(),
                        loadSuccess: (data) => CheckConditionCard(
                          label: "점검주기",
                          children: data.sessions.map((e) => e.name).toList(),
                        ),
                        loadFailure: (_) => Container(),
                      ),
                ],
              ),
            ],
          )),
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
      ),
    );
  }
}
