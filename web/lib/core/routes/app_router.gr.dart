// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i6;

import '../../features/auth/presentation/screen/login_screen.dart' as _i1;
import '../../features/upload/presentation/pages/upload_screen.dart' as _i5;
import '../../home/feature/about/about_screen.dart' as _i3;
import '../../home/feature/dashboard/dash_board_screen.dart' as _i4;
import 'auth_route_guard.dart' as _i7;

class AppRouter extends _i2.RootStackRouter {
  AppRouter(
      {_i6.GlobalKey<_i6.NavigatorState>? navigatorKey,
      required this.authRouteGuard})
      : super(navigatorKey);

  final _i7.AuthRouteGuard authRouteGuard;

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.LoginScreen());
    },
    BoardRoute.name: (routeData) {
      return _i2.MaterialPageX<_i2.EmptyRouterPage>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    AboutRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.AboutScreen());
    },
    DashboardRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.DashboardScreen());
    },
    UploadRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.UploadScreen());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(LoginRoute.name, path: '/signin'),
        _i2.RouteConfig(BoardRoute.name, path: '/', guards: [
          authRouteGuard
        ], children: [
          _i2.RouteConfig(DashboardRoute.name,
              path: '', parent: BoardRoute.name),
          _i2.RouteConfig(UploadRoute.name,
              path: 'upload', parent: BoardRoute.name),
          _i2.RouteConfig('*#redirect',
              path: '*',
              parent: BoardRoute.name,
              redirectTo: '',
              fullMatch: true)
        ]),
        _i2.RouteConfig(AboutRoute.name, path: '/about')
      ];
}

/// generated route for
/// [_i1.LoginScreen]
class LoginRoute extends _i2.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/signin');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class BoardRoute extends _i2.PageRouteInfo<void> {
  const BoardRoute({List<_i2.PageRouteInfo>? children})
      : super(BoardRoute.name, path: '/', initialChildren: children);

  static const String name = 'BoardRoute';
}

/// generated route for
/// [_i3.AboutScreen]
class AboutRoute extends _i2.PageRouteInfo<void> {
  const AboutRoute() : super(AboutRoute.name, path: '/about');

  static const String name = 'AboutRoute';
}

/// generated route for
/// [_i4.DashboardScreen]
class DashboardRoute extends _i2.PageRouteInfo<void> {
  const DashboardRoute() : super(DashboardRoute.name, path: '');

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i5.UploadScreen]
class UploadRoute extends _i2.PageRouteInfo<void> {
  const UploadRoute() : super(UploadRoute.name, path: 'upload');

  static const String name = 'UploadRoute';
}
