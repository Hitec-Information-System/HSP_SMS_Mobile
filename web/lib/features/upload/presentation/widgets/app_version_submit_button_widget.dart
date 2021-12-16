import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:web/features/auth/shared/provider.dart';
import 'package:web/features/upload/presentation/provider/app_version_event.dart';
import 'package:web/provider.dart';

class AppVersionSubmitButton extends ConsumerWidget {
  const AppVersionSubmitButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () {
        ref
            .read(appVersionStateNotifierProvider.notifier)
            .mapEventToState(const AppVersionEvent.saveNewVersion());
      },
      child: Text("Submit"),
    );
  }
}
