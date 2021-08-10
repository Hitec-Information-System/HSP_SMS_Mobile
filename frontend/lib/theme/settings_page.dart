import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

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
        ],
      )),
    );
  }
}
