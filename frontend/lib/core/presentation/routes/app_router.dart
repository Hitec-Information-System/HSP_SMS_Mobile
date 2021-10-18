import 'package:auto_route/auto_route.dart';
import 'package:frontend/auth/presentation/sign_in_page.dart';
import 'package:frontend/check/presentation/check_list_page.dart';
import 'package:frontend/check/presentation/widgets/image_check_page.dart';
import 'package:frontend/core/presentation/widgets/error/error_page.dart';
import 'package:frontend/menus/core/presentation/menu_frame_page.dart';
import 'package:frontend/menus/core/presentation/widgets/bottom_sheet/widgets.dart';
import 'package:frontend/menus/home/presentation/home_web_view_part.dart';
import 'package:frontend/menus/monitor/building/presentation/menu_building_page.dart';
import 'package:frontend/menus/monitor/forklift/presentation/menu_forklift_page.dart';
import 'package:frontend/menus/monitor/line/presentation/menu_line_page.dart';
import 'package:frontend/menus/settings/presentation/menu_settings_page.dart';
import 'package:frontend/menus/settings/presentation/password_change_page.dart';
import 'package:frontend/splash/presentation/splash_page.dart';
import 'package:frontend/tag/qr/presentation/qr_scan_page.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: SignInPage, path: "/sign-in"),
    AutoRoute(page: ErrorPage, path: "/error"),
    // temporary
    AutoRoute(page: HomeWebViewPage, path: "/webview"),
    CustomRoute(
      page: ImageCheckPage,
      path: "/img",
      transitionsBuilder: TransitionsBuilders.slideBottom,
    ),
    AutoRoute(
      path: "/",
      page: MenuFramePage,
      children: [
        AutoRoute(
          path: "building",
          page: EmptyRouterPage,
          name: "BuildingTab",
          children: [
            AutoRoute(path: "", page: MenuBuildingPage),
          ],
        ),
        AutoRoute(
          path: "line",
          page: EmptyRouterPage,
          name: "LineTab",
          children: [
            AutoRoute(path: "", page: MenuLinePage),
          ],
        ),
        AutoRoute(
          path: "forklift",
          page: EmptyRouterPage,
          name: "ForkliftTab",
          children: [
            AutoRoute(path: "", page: MenuForkLiftPage),
          ],
        ),
        AutoRoute(
          path: "settings",
          page: EmptyRouterPage,
          name: "SettingsTab",
          children: [
            AutoRoute(path: "", page: MenuSettingsPage),
            AutoRoute(path: "pwd", page: PasswordChangePage),
          ],
        ),
      ],
    ),
    CustomRoute(
      page: QRScanPage,
      path: '/spot-checker?method=qr',
      transitionsBuilder: TransitionsBuilders.slideBottom,
    ),
    CustomRoute(
      page: CheckListPage,
      path: '/inspection',
      transitionsBuilder: TransitionsBuilders.slideBottom,
    ),
    CustomRoute(
      page: TagBottomSheetPage,
      path: "/tag",
      transitionsBuilder: TransitionsBuilders.slideBottom,
      durationInMilliseconds: 300,
      reverseDurationInMilliseconds: 300,
      opaque: false,
    ),
  ],
)
class $AppRouter {}
