// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../../../tag/core/presentation/tag_scan_page.dart' as _i6;
import '../../../tag/qr/presentation/qr_scan_page.dart' as _i7;
import '../../../theme/settings_page.dart' as _i4;
import '../../../theme/theme_change_page.dart' as _i5;
import '../home_page.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.HomePage();
        }),
    SettingsRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.SettingsPage();
        }),
    ThemeChangeRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.ThemeChangePage();
        }),
    TagScanRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i6.TagScanPage();
        }),
    QRScanRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i7.QRScanPage();
        },
        transitionsBuilder: _i1.TransitionsBuilders.slideBottom,
        opaque: true,
        barrierDismissible: false)
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomeRoute.name, path: '/'),
        _i1.RouteConfig(SettingsRoute.name, path: '/settings'),
        _i1.RouteConfig(ThemeChangeRoute.name, path: '/settings/themes'),
        _i1.RouteConfig(TagScanRoute.name, path: '/tag-scan'),
        _i1.RouteConfig(QRScanRoute.name, path: '/spot-checker?method=qr')
      ];
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '/');

  static const String name = 'HomeRoute';
}

class SettingsRoute extends _i1.PageRouteInfo {
  const SettingsRoute() : super(name, path: '/settings');

  static const String name = 'SettingsRoute';
}

class ThemeChangeRoute extends _i1.PageRouteInfo {
  const ThemeChangeRoute() : super(name, path: '/settings/themes');

  static const String name = 'ThemeChangeRoute';
}

class TagScanRoute extends _i1.PageRouteInfo {
  const TagScanRoute() : super(name, path: '/tag-scan');

  static const String name = 'TagScanRoute';
}

class QRScanRoute extends _i1.PageRouteInfo {
  const QRScanRoute() : super(name, path: '/spot-checker?method=qr');

  static const String name = 'QRScanRoute';
}
