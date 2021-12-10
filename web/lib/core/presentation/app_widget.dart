import 'package:flutter/material.dart';
import 'package:web/core/routes/app_router.gr.dart';
import 'package:web/core/routes/auth_route_guard.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  static _AppWidgetState of(BuildContext context) =>
      context.findAncestorStateOfType<_AppWidgetState>()!;

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final authService = AuthService();
  late final _appRouter =
      AppRouter(authRouteGuard: AuthRouteGuard(authService));

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
