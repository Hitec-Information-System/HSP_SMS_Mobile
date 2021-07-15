import 'package:auto_route/annotations.dart';
import 'package:web/menu/presentation/menu_page.dart';

@MaterialAutoRouter(
  routes: [
    MaterialRoute(page: MenuPage, initial: true),
  ],
  replaceInRouteName: "Page,Route",
)
class $AppRouter {}
