import 'package:auto_route/auto_route.dart';
import 'package:frontend/core/presentation/home.dart';
import 'package:frontend/nfc/presentation/nfc_scan_page.dart';
import 'package:frontend/theme/settings_page.dart';
import 'package:frontend/theme/theme_change_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(page: Home, initial: true),
    AutoRoute(page: SettingsPage, path: '/settings'),
    AutoRoute(page: ThemeChangePage, path: '/settings/themes'),
    AutoRoute(page: NfcReadPage, path: '/nfc_read'),
  ],
)
class $AppRouter {}
