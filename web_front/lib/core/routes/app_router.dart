import 'package:auto_route/annotations.dart';
import 'package:web_front/version_update/presentation/pages/version_update_page.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: "Page,Route",
  routes: <AutoRoute>[
    AutoRoute(page: VersionUpdatePage, initial: true),
  ],
)
class $AppRouter {}
