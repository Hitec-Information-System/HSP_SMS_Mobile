import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:web/core/routes/auth_route_guard.dart';
import 'package:web/features/auth/presentation/screen/login_screen.dart';
// import 'package:web/features/upload/presentation/pages/upload_screen.dart';
import 'package:web/home/core/presentation/screen/home_screen.dart';
import 'package:web/home/feature/about/about_screen.dart';
import 'package:web/home/feature/dashboard/dash_board_screen.dart';
import 'package:web/home/feature/dashboard/products/add_product_screen.dart';
import 'package:web/home/feature/dashboard/products/products_screen.dart';
import 'package:web/home/feature/dashboard/profile/profile_screen.dart';

@AdaptiveAutoRouter(
  routes: [
    AutoRoute(page: LoginScreen, path: "/signin"),
    AutoRoute(
      page: HomeScreen,
      path: "/",
    ),
    AutoRoute(
      page: DashboardScreen,
      path: "/dashboard",
      guards: [AuthRouteGuard],
      children: <AutoRoute>[
        AutoRoute<EmptyRouterPage>(
          path: "products",
          page: EmptyRouterPage,
          children: [
            // path : '' means default page
            AutoRoute(page: ProductsScreen, path: ''),
            AutoRoute(
              page: AddProductScreen,
              path: "add-products",
            ),
          ],
        ),
        AutoRoute(
          page: ProfileScreen,
          path: "profile",
        ),
      ],
    ),
    AutoRoute(page: AboutScreen, path: "/about"),
    // AutoRoute(page: UploadScreen, initial: true),
  ],
  replaceInRouteName: "Screen,Route",
)
class $AppRouter {}
