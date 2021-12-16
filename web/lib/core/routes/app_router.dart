import 'package:auto_route/auto_route.dart';
import 'package:web/core/routes/auth_route_guard.dart';
import 'package:web/features/auth/presentation/screen/login_screen.dart';
import 'package:web/features/home/core/presentation/screen/home_screen.dart';
import 'package:web/features/upload/presentation/screen/upload_screen.dart';

@MaterialAutoRouter(
  routes: [
    AutoRoute(
      page: LoginScreen,
      path: "signin",
    ),
    AutoRoute<EmptyRouterPage>(
      name: "BoardRoute",
      page: EmptyRouterPage,
      initial: true,
      guards: [AuthRouteGuard],
      children: [
        AutoRoute(
          page: HomeScreen,
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
  ],
  replaceInRouteName: "Screen,Route",
)
class $AppRouter {}
