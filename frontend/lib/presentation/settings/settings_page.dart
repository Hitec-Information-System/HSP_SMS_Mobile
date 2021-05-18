import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        children: [
          TextButton(
              onPressed: () {
                AutoRouter.of(context).pushNamed('/settings/themes');
              },
              child: Text('Confingure Theme mode')),
          TextButton(
              onPressed: () async {
                final settings = await Hive.openBox('settings');
                final isLightTheme = settings.get('isLightTheme');
                print(isLightTheme);
              },
              child: Text('Hive test')),
        ],
      )),
    );
  }
}
