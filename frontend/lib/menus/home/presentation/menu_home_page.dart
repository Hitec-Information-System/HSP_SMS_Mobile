import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:frontend/core/presentation/routes/app_router.gr.dart';
import 'package:frontend/menus/home/presentation/home_web_view_widget.dart';

class MenuHomePage extends StatelessWidget {
  const MenuHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Home"),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () => AutoRouter.of(context).push(
              const MenuSettingsRoute(),
            ),
            icon: Icon(
              Icons.settings,
              color: Theme.of(context).iconTheme.color,
            ),
          )
        ],
      ),
      body: Center(
        child: HomeWebViewWidget(),
      ),
    );
  }
}
