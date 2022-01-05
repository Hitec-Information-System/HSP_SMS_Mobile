import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'core/config/configure_nonweb.dart'
    if (dart.library.html) 'core/config/configure_web.dart';
import 'core/widgets/widgets.dart';

void main() {
  configureApp();
  runApp(
    const ProviderScope(
      child: AppWidget(),
    ),
  );
}
