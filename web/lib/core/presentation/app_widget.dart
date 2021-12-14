import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:web/core/routes/app_router.gr.dart';
import 'package:web/core/routes/auth_route_guard.dart';
import 'package:web/features/auth/application/auth_notifier.dart';
import 'package:web/features/auth/shared/provider.dart';

class AppWidget extends ConsumerStatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends ConsumerState<AppWidget> {
  late final _appRouter = AppRouter(
    authRouteGuard: AuthRouteGuard(ref),
  );

  @override
  Widget build(BuildContext context) {
    ref.listen<AuthState>(
      authStateNotifierProvider,
      (previous, state) {
        state.maybeWhen(
          authenticated: () {
            _appRouter.pushAndPopUntil(const BoardRoute(),
                predicate: (route) => false);
          },
          unauthenticated: () {
            _appRouter.pushAndPopUntil(const LoginRoute(),
                predicate: (route) => false);
          },
          orElse: () {},
        );
      },
    );

    return MaterialApp.router(
      title: 'Hwashin',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
