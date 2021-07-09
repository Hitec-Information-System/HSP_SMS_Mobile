import 'package:auto_route/auto_route.dart';
import 'package:frontend/auth/presentation/sign_in_page.dart';
import 'package:frontend/core/presentation/home_page.dart';
import 'package:frontend/core/presentation/loading_page.dart';
import 'package:frontend/nfc/presentation/nfc_scan_page.dart';
import 'package:frontend/splash/presentation/splash_page.dart';
import 'package:frontend/theme/settings_page.dart';
import 'package:frontend/theme/theme_change_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: LoadingPage, path: "/load"),
    AutoRoute(page: HomePage, path: "/home"),
    AutoRoute(page: SignInPage, path: "/sign-in"),
    AutoRoute(page: SettingsPage, path: '/settings'),
    AutoRoute(page: ThemeChangePage, path: '/settings/themes'),
    AutoRoute(page: NfcReadPage, path: '/nfc-read'),
  ],
)
class $AppRouter {}
