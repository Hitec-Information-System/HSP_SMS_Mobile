import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:web/core/routes/app_router.gr.dart';

class AuthRouteGuard extends AutoRedirectGuard {
  final AuthService authService;

  AuthRouteGuard(this.authService) {
    authService.addListener(() {
      if (!authService.authenticated) {
        reevaluate();
      }
    });
  }

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    // it is called anytime navigation takes place
    if (authService.authenticated) return resolver.next();
    router.push(
      LoginRoute(
        onLogin: (_) {
          resolver.next();
          router.removeLast();
        },
      ),
    );
  }
}

class AuthService extends ChangeNotifier {
  bool _authenticated = false;
  bool get authenticated => _authenticated;
  set authenticated(bool value) {
    _authenticated = value;
    notifyListeners();
  }
}
