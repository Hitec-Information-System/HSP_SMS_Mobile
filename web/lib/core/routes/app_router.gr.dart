// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i9;
import 'package:web/core/routes/auth_route_guard.dart' as _i10;
import 'package:web/features/auth/presentation/screen/login_screen.dart' as _i1;
import 'package:web/home/core/presentation/screen/home_screen.dart' as _i2;
import 'package:web/home/feature/about/about_screen.dart' as _i4;
import 'package:web/home/feature/dashboard/dash_board_screen.dart' as _i3;
import 'package:web/home/feature/dashboard/products/add_product_screen.dart'
    as _i8;
import 'package:web/home/feature/dashboard/products/products_screen.dart'
    as _i7;
import 'package:web/home/feature/dashboard/profile/profile_screen.dart' as _i6;

class AppRouter extends _i5.RootStackRouter {
  AppRouter(
      {_i9.GlobalKey<_i9.NavigatorState>? navigatorKey,
      required this.authRouteGuard})
      : super(navigatorKey);

  final _i10.AuthRouteGuard authRouteGuard;

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>();
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i1.LoginScreen(key: args.key, onLogin: args.onLogin));
    },
    HomeRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.HomeScreen());
    },
    DashboardRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.DashboardScreen());
    },
    AboutRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.AboutScreen());
    },
    EmptyRouterPage.name: (routeData) {
      return _i5.AdaptivePage<_i5.EmptyRouterPage>(
          routeData: routeData, child: const _i5.EmptyRouterPage());
    },
    ProfileRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i6.ProfileScreen());
    },
    ProductsRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i7.ProductsScreen());
    },
    AddProductRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i8.AddProductScreen());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(LoginRoute.name, path: '/signin'),
        _i5.RouteConfig(HomeRoute.name, path: '/'),
        _i5.RouteConfig(DashboardRoute.name, path: '/dashboard', guards: [
          authRouteGuard
        ], children: [
          _i5.RouteConfig(EmptyRouterPage.name,
              path: 'products',
              parent: DashboardRoute.name,
              children: [
                _i5.RouteConfig(ProductsRoute.name,
                    path: '', parent: EmptyRouterPage.name),
                _i5.RouteConfig(AddProductRoute.name,
                    path: 'add-products', parent: EmptyRouterPage.name)
              ]),
          _i5.RouteConfig(ProfileRoute.name,
              path: 'profile', parent: DashboardRoute.name)
        ]),
        _i5.RouteConfig(AboutRoute.name, path: '/about')
      ];
}

/// generated route for [_i1.LoginScreen]
class LoginRoute extends _i5.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({_i9.Key? key, required void Function(bool) onLogin})
      : super(name,
            path: '/signin', args: LoginRouteArgs(key: key, onLogin: onLogin));

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key, required this.onLogin});

  final _i9.Key? key;

  final void Function(bool) onLogin;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, onLogin: $onLogin}';
  }
}

/// generated route for [_i2.HomeScreen]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute() : super(name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for [_i3.DashboardScreen]
class DashboardRoute extends _i5.PageRouteInfo<void> {
  const DashboardRoute({List<_i5.PageRouteInfo>? children})
      : super(name, path: '/dashboard', initialChildren: children);

  static const String name = 'DashboardRoute';
}

/// generated route for [_i4.AboutScreen]
class AboutRoute extends _i5.PageRouteInfo<void> {
  const AboutRoute() : super(name, path: '/about');

  static const String name = 'AboutRoute';
}

/// generated route for [_i5.EmptyRouterPage]
class EmptyRouterPage extends _i5.PageRouteInfo<void> {
  const EmptyRouterPage({List<_i5.PageRouteInfo>? children})
      : super(name, path: 'products', initialChildren: children);

  static const String name = 'EmptyRouterPage';
}

/// generated route for [_i6.ProfileScreen]
class ProfileRoute extends _i5.PageRouteInfo<void> {
  const ProfileRoute() : super(name, path: 'profile');

  static const String name = 'ProfileRoute';
}

/// generated route for [_i7.ProductsScreen]
class ProductsRoute extends _i5.PageRouteInfo<void> {
  const ProductsRoute() : super(name, path: '');

  static const String name = 'ProductsRoute';
}

/// generated route for [_i8.AddProductScreen]
class AddProductRoute extends _i5.PageRouteInfo<void> {
  const AddProductRoute() : super(name, path: 'add-products');

  static const String name = 'AddProductRoute';
}
