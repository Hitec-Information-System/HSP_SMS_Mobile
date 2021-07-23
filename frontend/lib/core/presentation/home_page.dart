import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frontend/auth/shared/providers.dart';
import 'package:frontend/core/application/localization/app_localizations.dart';
import 'package:frontend/core/presentation/routes/app_router.gr.dart';
// import 'package:frontend/core/presentation/routes/app_router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)?.translate('title') ?? ""),
        actions: [
          IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                AutoRouter.of(context).pushNamed('/settings');
              }),
          IconButton(
              icon: const Icon(Icons.logout_rounded),
              onPressed: () {
                // TODO: DB 고쳐지면 활성화
                // ref.watch(authNotifierProvider.notifier).signOut();
              })
        ],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            AppLocalizations.of(context)?.translate('first_string') ?? "",
            style: const TextStyle(fontSize: 25),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: () {
              AutoRouter.of(context).push(TagScanRoute());
            },
            child: Text("NFC Reader Button"),
          )
        ],
      )),
    );
  }
}
