import 'package:auto_route/auto_route.dart';
import 'package:frontend/auth/presentation/sign_in_page.dart';
import 'package:frontend/check/presentation/check_list_page.dart';
import 'package:frontend/menus/core/presentation/menu_frame_page.dart';
import 'package:frontend/splash/presentation/splash_page.dart';
import 'package:frontend/tag/qr/presentation/qr_scan_page.dart';
import 'package:frontend/theme/settings_page.dart';
import 'package:frontend/theme/theme_change_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: SignInPage, path: "/sign-in"),
    AutoRoute(page: SettingsPage, path: '/settings'),
    AutoRoute(page: ThemeChangePage, path: '/settings/themes'),

    AutoRoute(page: MenuFramePage, path: "/home"),
    // AutoRoute(page: MenuFramePage, initial: true),

    // Qr scan page
    CustomRoute(
      page: QRScanPage,
      path: '/spot-checker?method=qr',
      transitionsBuilder: TransitionsBuilders.slideBottom,
    ),

    CustomRoute(
      page: CheckListPage,
      // initial: true,
      path: '/inspection',
      transitionsBuilder: TransitionsBuilders.slideBottom,
    ),
  ],
)
class $AppRouter {}
