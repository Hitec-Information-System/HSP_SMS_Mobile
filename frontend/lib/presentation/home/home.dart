import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frontend/application/core/app_localizations.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.translate('title')!),
        actions: [
          IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                AutoRouter.of(context).pushNamed('/settings');
              })
        ],
      ),
      body: Center(
          child: Text(
        AppLocalizations.of(context)!.translate('first_string')!,
        style: const TextStyle(fontSize: 25),
        textAlign: TextAlign.center,
      )),
    );
  }
}
