import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

import 'package:frontend/core/presentation/app_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> main() async {
  AwesomeNotifications().initialize(
    "resource://drawable/res_notification_app_icon",
    [
      NotificationChannel(
        channelKey: "scheduled_channel",
        channelName: "Scheduled Notifications",
        defaultColor: const Color(0xFF8983F7),
        locked: true, // means notifications cannot be dismissible on Android
        importance: NotificationImportance.High,
        channelShowBadge: true,
      )
    ],
  );
  runApp(
    const ProviderScope(
      child: AppWidget(),
    ),
  );
}
