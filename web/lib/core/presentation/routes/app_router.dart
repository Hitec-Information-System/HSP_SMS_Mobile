import 'package:auto_route/annotations.dart';
import 'package:web/menu/presentation/menu_page.dart';
import 'package:web/pie_chart_example/presentation/pie_chart_page.dart';

@MaterialAutoRouter(
  routes: [
    MaterialRoute(page: MenuPage, initial: true),
    MaterialRoute(page: PieChartPage, path: "/chart"),
  ],
  replaceInRouteName: "Page,Route",
)
class $AppRouter {}
