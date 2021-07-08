import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frontend/core/application/localization/app_localizations.dart';
import 'package:frontend/core/presentation/routes/app_router.gr.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)?.translate('title') ?? ""),
        actions: [
          IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                AutoRouter.of(context).pushNamed('/settings');
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
              AutoRouter.of(context).push(const NfcReadRoute());
            },
            child: Text("NFC Reader Button"),
          )
        ],
      )),
    );
  }
}
