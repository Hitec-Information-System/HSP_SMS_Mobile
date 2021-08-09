import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/routes/app_router.gr.dart';
import 'package:frontend/tag/core/application/tag_notifier.dart';
import 'package:frontend/tag/core/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TagScanPage extends ConsumerWidget {
  const TagScanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(tagNotifierProvider);

    return ProviderListener<TagState>(
      onChange: (context, state) {
        state.maybeMap(
            qrReading: (_) => AutoRouter.of(context).push(const QRScanRoute()),
            read: (_) =>
                AutoRouter.of(context).popUntilRouteWithName("HomeRoute"),
            orElse: () {});
      },
      provider: tagNotifierProvider,
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(state.map(
                  initial: (_) => "initial",
                  qrReading: (_) => "reading...",
                  read: (tagState) => tagState.tag.id,
                  nfcReading: (_) => "reading...",
                  failure: (failState) => failState.failure.toString())),
              ElevatedButton(
                onPressed: () {
                  ref.watch(tagNotifierProvider.notifier).readNFCTag();
                },
                child: Text("Scan"),
              ),
              ElevatedButton(
                onPressed: () {
                  ref.watch(tagNotifierProvider.notifier).clear();
                },
                child: Text("Cancel"),
              ),
              ElevatedButton(
                onPressed: () {
                  ref.watch(tagNotifierProvider.notifier).navigateToQR();
                },
                child: Text("QR Scan"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
