import 'package:auto_route/annotations.dart';
import 'package:web_front/version_update/presentation/pages/upload_screen.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: "Page,Route",
  routes: <AutoRoute>[
    AutoRoute(page: UploadScreen, initial: true),
  ],
)
class $AppRouter {}
