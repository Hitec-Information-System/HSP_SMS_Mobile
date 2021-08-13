import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:frontend/core/application/localization/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BottomSheetChildLoaded extends ConsumerWidget {
  const BottomSheetChildLoaded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      key: const ValueKey<String>("BTM-SH-LOADED"),
      children: [
        Text(
          AppLocalizations.of(context)?.translate('scan_ready') ?? "",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Listening"),
              AnimatedTextKit(repeatForever: true, animatedTexts: [
                TyperAnimatedText(
                  "...",
                  speed: const Duration(milliseconds: 200),
                )
              ]),
            ],
          ),
        ),
      ],
    );
  }
}
