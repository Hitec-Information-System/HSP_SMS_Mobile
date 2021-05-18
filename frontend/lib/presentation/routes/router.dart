import 'package:auto_route/auto_route.dart';
import 'package:frontend/presentation/home/home.dart';
import 'package:frontend/presentation/settings/settings_page.dart';
import 'package:frontend/presentation/settings/theme/theme_change_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(page: Home, initial: true),
    AutoRoute(page: SettingsPage, path: '/settings'),
    AutoRoute(page: ThemeChangePage, path: '/settings/themes'),
  ],
)
class $AppRouter {}
