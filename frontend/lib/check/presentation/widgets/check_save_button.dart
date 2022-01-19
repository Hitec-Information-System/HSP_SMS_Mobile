import 'package:flutter/material.dart';
import 'package:frontend/check/shared/providers.dart';
import 'package:frontend/core/presentation/constants/constants.dart';
import 'package:frontend/core/presentation/widgets/dialogs.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CheckSaveButton extends ConsumerWidget {
  const CheckSaveButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: LayoutConstants.paddingM),
      child: ElevatedButton(
        onPressed: () {
          if (ref
              .watch(
                  checkInfoStateNotifierProvider.select((state) => state.info))
              .hasNormalChecksBeenDone("일상")) {
            Dialogs.showTwoAnswersDialog(
              context,
              color: Theme.of(context).colorScheme.secondary,
              icon: Icons.help,
              title: "점검목록 저장",
              message: "점검내용을 저장하시겠습니까?",
              yesTitle: "저장",
              onYesPressed: () {
                ref
                    .read(checkInfoStateNotifierProvider.notifier)
                    .saveCheckInfo();
              },
              noTitle: "취소",
              onNoPressed: () {},
              onDismissed: () {},
            );
          } else {
            Dialogs.showOneAnswerDialog(
              context,
              color: Theme.of(context).errorColor,
              title: "점검 미완료",
              message: "점검을 모두 완료하지 않았습니다",
              yesTitle: "확인",
              onYesPressed: () {},
            );
          }
        },
        child: const Text(
          "저장",
        ),
      ),
    );
  }
}
