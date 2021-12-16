import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'core/presentation/app_widget.dart';
import 'core/web_config/configure_nonweb.dart'
    if (dart.library.html) 'core/web_config/configure_web.dart';

void main() {
  configureApp();
  runApp(
    const ProviderScope(
      child: AppWidget(),
    ),
  );
}
