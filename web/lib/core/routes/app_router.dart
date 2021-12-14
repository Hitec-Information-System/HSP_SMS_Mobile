import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:web/core/routes/auth_route_guard.dart';
import 'package:web/features/auth/presentation/screen/login_screen.dart';
import 'package:web/features/upload/presentation/pages/upload_screen.dart';
// import 'package:web/features/upload/presentation/pages/upload_screen.dart';
import 'package:web/home/feature/about/about_screen.dart';
import 'package:web/home/feature/dashboard/dash_board_screen.dart';

@AdaptiveAutoRouter(
  routes: [
    AutoRoute(page: LoginScreen, path: "/signin"),
    AutoRoute<EmptyRouterPage>(
      name: "BoardRoute",
      initial: true,
      page: EmptyRouterPage,
      guards: [AuthRouteGuard],
      children: [
        AutoRoute(
          page: DashboardScreen,
          path: "",
        ),
        AutoRoute(
          page: UploadScreen,
          path: "upload",
        ),
        RedirectRoute(
          path: "*",
          redirectTo: "",
        ),
      ],
    ),
    AutoRoute(page: AboutScreen, path: "/about"),
  ],
  replaceInRouteName: "Screen,Route",
)
class $AppRouter {}
