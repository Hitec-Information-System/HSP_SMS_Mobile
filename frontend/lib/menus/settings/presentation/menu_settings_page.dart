import 'package:flutter/material.dart';
import 'package:frontend/auth/shared/providers.dart';
import 'package:frontend/core/presentation/constants/constants.dart';
import 'package:frontend/core/presentation/widgets/dialogs.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MenuSettingsPage extends ConsumerWidget {
  const MenuSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(LayoutConstants.paddingL),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: LayoutConstants.spaceL),
            Text(
              "설정",
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(height: LayoutConstants.spaceM),
            Card(
              color: Theme.of(context).bottomAppBarColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(LayoutConstants.radiusM),
              ),
              child: ListTile(
                onTap: () => Dialogs.showTwoAnswersDialog(
                  context,
                  color: Theme.of(context).colorScheme.secondary,
                  icon: Icons.help,
                  title: "로그아웃",
                  message: "로그아웃 하시겠습니까?",
                  yesTitle: "확인",
                  onYesPressed: () {
                    ref.read(authNotifierProvider.notifier).signOut();
                  },
                  noTitle: "취소",
                  onNoPressed: () {},
                  onDismissed: () {},
                ),
                title: const Text(
                  "로그아웃",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
            )
          ],
        ),
      ),
    );
  }
}
