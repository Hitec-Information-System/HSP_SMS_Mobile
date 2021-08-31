import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:frontend/core/infrastructure/utility.dart';

void showAllowNotificationDialog(BuildContext context) {
  AwesomeNotifications().isNotificationAllowed().then(
    (isAllowed) {
      if (!isAllowed) {
        AwesomeNotifications().requestPermissionToSendNotifications();
      }
    },
  );
}

Future<void> createScheduledNotification() async {
  await AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: createUniqueId(),
        channelKey: "scheduled_channel",
        title: "점검 확인 알림",
        body: "점검을 완료해야할 시간이 만료되었습니다. 점검을 마쳤는지 확인해주세요.",
      ),
      actionButtons: [
        NotificationActionButton(
          key: "MARK_DONE",
          label: "확인",
        ),
      ],
      schedule: NotificationCalendar(
        weekday: 2, // 1: monday
        hour: 15,
        minute: 12,
        second: 0,
        millisecond: 0,
      ));
}

Future<void> cancelScheduledNotification(int id) async {
  await AwesomeNotifications().cancelSchedule(id);
}
