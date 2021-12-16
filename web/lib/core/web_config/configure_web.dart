import 'package:flutter_web_plugins/flutter_web_plugins.dart';

// Web Specific Configuration
//  - reference: https://docs.flutter.dev/development/ui/navigation/url-strategies
void configureApp() {
  setUrlStrategy(PathUrlStrategy());
}
