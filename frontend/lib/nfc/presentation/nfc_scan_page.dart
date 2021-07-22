import 'package:flutter/material.dart';
import 'package:frontend/nfc/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NfcReadPage extends ConsumerWidget {
  const NfcReadPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(nfcReadNotifierProvider);

    return ProviderListener(
      onChange: (context, state) {},
      provider: nfcReadNotifierProvider,
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              state.map(
                  initial: (_) => const Text("initial"),
                  reading: (_) => const Text("reading..."),
                  read: (tagState) => Text(tagState.tag.id),
                  failure: (f) => Text(f.failure.toString())),
              ElevatedButton(
                onPressed: () {
                  ref.watch(nfcReadNotifierProvider.notifier).readNFCTag();
                },
                child: Text("Scan"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
