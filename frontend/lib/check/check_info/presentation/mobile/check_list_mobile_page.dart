import 'package:flutter/material.dart';
import 'package:frontend/check/check_info/presentation/widgets/check_base_info_column.dart';
import 'package:frontend/check/check_info/presentation/widgets/check_details.dart';
import 'package:frontend/check/check_info/shared/providers.dart';
import 'package:frontend/core/presentation/constants/constants.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nil/nil.dart';

class ChecklistMobilePage extends StatelessWidget {
  const ChecklistMobilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(LayoutConstants.paddingM),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const CheckBaseInfoColumn(),
                const SizedBox(height: LayoutConstants.spaceM),
                const Divider(thickness: 2),
                const SizedBox(height: LayoutConstants.spaceM),
                Row(
                  children: [
                    Consumer(builder: (context, ref, child) {
                      final state = ref.watch(checkInfoStateNotifierProvider);
                      return state.maybeWhen(
                          loaded: (_, data) =>
                              Text("점검항목 : ${data.details.length}"),
                          orElse: () => nil);
                    }),
                    const Spacer(),
                    ElevatedButton(
                        onPressed: () {
                          // TODO: save check results
                        },
                        child: const Text("저장"))
                  ],
                ),
                const SizedBox(height: LayoutConstants.spaceXS),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: LayoutConstants.paddingXS,
                      vertical: LayoutConstants.paddingM),
                  child: Material(
                    elevation: 1,
                    borderRadius:
                        BorderRadius.circular(LayoutConstants.radiusM),
                    color: Theme.of(context).cardColor,
                    child: const Padding(
                      padding: EdgeInsets.all(LayoutConstants.paddingM),
                      child: CheckListDetailsSection(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
