import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:web/core/constant/constant.dart';
import 'package:web/core/gen/fonts.gen.dart';
import 'package:web/core/widgets/widgets.dart';
import 'package:web/features/upload/application/app_version_state.dart';
import 'package:web/features/upload/presentation/page/upload_page.dart';
import 'package:web/features/upload/shared/provider.dart';

class UploadScreen extends ConsumerWidget {
  const UploadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AppVersionState>(
      appVersionStateNotifierProvider,
      (prev, state) {
        state.maybeWhen(
          failure: (version, message) {
            final snackBar = SnackBar(
                content: Text(
              message,
              style: const TextStyle(
                fontFamily: FontFamily.gmarketSans,
              ),
            ));

            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          saved: (_) {
            showDialog(
              context: context,
              barrierColor: Colors.black26,
              barrierDismissible: false,
              builder: (context) {
                return NormalDialog(
                  title: kDoneText,
                  message: saveDoneDialogText,
                  color: kPrimaryThemeColor,
                  leadingIcon: Icons.done,
                  yesTitle: kConfirmText,
                  onYesPressed: () => context.router.popTop(),
                );
              },
            );
          },
          orElse: () {},
        );
      },
    );

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).iconTheme.color,
      ),
      body: const UploadPage(),
    );
  }
}
