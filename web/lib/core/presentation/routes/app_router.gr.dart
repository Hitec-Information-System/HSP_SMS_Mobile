// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../../../menu/presentation/menu_page.dart' as _i3;
import '../../../pie_chart_example/presentation/pie_chart_page.dart' as _i4;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    MenuRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.MenuPage();
        }),
    PieChartRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.PieChartPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(MenuRoute.name, path: '/'),
        _i1.RouteConfig(PieChartRoute.name, path: '/chart')
      ];
}

class MenuRoute extends _i1.PageRouteInfo {
  const MenuRoute() : super(name, path: '/');

  static const String name = 'MenuRoute';
}

class PieChartRoute extends _i1.PageRouteInfo {
  const PieChartRoute() : super(name, path: '/chart');

  static const String name = 'PieChartRoute';
}
