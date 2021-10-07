import 'package:flutter/material.dart';
import 'package:frontend/check/shared/providers.dart';
import 'package:frontend/core/presentation/constants/constants.dart';
import 'package:frontend/core/presentation/widgets/dialogs.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:frontend/check/domain/check_details_extension.dart';

class CheckSaveButton extends ConsumerWidget {
  const CheckSaveButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final details = ref.watch(checkDetailsProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: LayoutConstants.paddingM),
      child: ElevatedButton(
        onPressed: () {
          print("pressed");

          if (details.hasNormalChecksBeenDone("일상")) {
            Dialogs.showTwoAnswersDialog(
              context,
              color: Theme.of(context).colorScheme.secondary,
              icon: Icons.help,
              title: "점검목록 저장",
              message: "점검내용을 저장하시겠습니까?",
              yesTitle: "저장",
              onYesPressed: () {
                // FIXME : 임시 방편이니 반드시 수정 요망
                final details = ref.watch(checkDetailsProvider);

                ref
                    .read(checkInfoStateNotifierProvider.notifier)
                    .saveCheckInfo(details);
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
