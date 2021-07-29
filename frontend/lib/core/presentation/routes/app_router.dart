import 'package:auto_route/auto_route.dart';
import 'package:frontend/auth/presentation/sign_in_page.dart';
import 'package:frontend/home/presentation/home_page.dart';
import 'package:frontend/splash/presentation/splash_page.dart';
import 'package:frontend/tag/core/presentation/tag_scan_page.dart';
import 'package:frontend/tag/qr/presentation/qr_scan_page.dart';
import 'package:frontend/theme/settings_page.dart';
import 'package:frontend/theme/theme_change_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    // AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: HomePage, initial: true), //path: "/home"),
    // AutoRoute(page: SignInPage, path: "/sign-in"),
    AutoRoute(page: SettingsPage, path: '/settings'),
    AutoRoute(page: ThemeChangePage, path: '/settings/themes'),
    AutoRoute(page: TagScanPage, path: '/tag-scan'),
    CustomRoute(
      page: QRScanPage,
      path: '/spot-checker?method=qr',
      transitionsBuilder: TransitionsBuilders.slideBottom,
    ),
  ],
)
class $AppRouter {}
