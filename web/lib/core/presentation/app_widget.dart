import 'package:flutter/material.dart';
import 'package:web/core/presentation/routes/app_router.gr.dart';

class AppWidget extends StatelessWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Hwashin',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
