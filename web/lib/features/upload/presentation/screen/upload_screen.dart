import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:web/core/gen/fonts.gen.dart';
import 'package:web/features/upload/presentation/page/upload_page.dart';
import 'package:web/features/upload/presentation/provider/app_version_state.dart';
import 'package:web/provider.dart';

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
          orElse: () {},
        );
      },
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).iconTheme.color,
      ),
      body: const UploadPage(),
    );
  }
}
