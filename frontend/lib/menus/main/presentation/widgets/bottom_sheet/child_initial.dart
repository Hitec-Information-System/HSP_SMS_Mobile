import 'package:flutter/material.dart';
import 'package:frontend/core/application/localization/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BottomSheetChildInitial extends ConsumerWidget {
  const BottomSheetChildInitial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Text(
      AppLocalizations.of(context)?.translate('scan_ready') ?? "",
      key: const ValueKey<String>("BTM-SH-INIT"),
      style: TextStyle(
        color: Theme.of(context).hintColor,
        fontSize: 20,
      ),
    );
  }
}
