import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:web/core/routes/app_router.gr.dart';
import 'package:web/features/auth/shared/provider.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  ref.read(authStateNotifierProvider.notifier).signOut();
                },
                child: const Text("Logout")),
            ElevatedButton(
                onPressed: () {
                  const UploadRoute().show(context);
                },
                child: const Text("Upload")),
          ],
        ),
      ),
    );
  }
}
