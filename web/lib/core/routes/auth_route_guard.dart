import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:web/core/routes/app_router.gr.dart';
import 'package:web/features/auth/shared/provider.dart';

class AuthRouteGuard extends AutoRedirectGuard {
  final WidgetRef ref;

  AuthRouteGuard(this.ref) {
    ref.watch(authStateNotifierProvider).maybeWhen(
          authenticated: () {},
          orElse: () => reevaluate(),
        );
  }

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    // it is called anytime navigation takes place
    ref.watch(authStateNotifierProvider).maybeWhen(
          authenticated: () => resolver.next(),
          orElse: () {
            router.push(
              const LoginRoute(),
            );
          },
        );
  }
}
