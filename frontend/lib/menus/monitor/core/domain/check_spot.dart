import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'check_spot.freezed.dart';

@freezed
class CheckSpot with _$CheckSpot {
  const CheckSpot._();
  const factory CheckSpot({
    required String objCd,
    required String objNm,
    required String objFlag,
    required String objSubFlag,
    required String objSubFlagNm,
    required List<CheckedItem> checkedList,
  }) = _CheckSpot;
}

@freezed
class CheckedItem with _$CheckedItem {
  const CheckedItem._();
  const factory CheckedItem({
    required String id,
    required String session,
    required String userId,
    required String userNm,
    required String checkedTime,
    required String checkState,
  }) = _CheckedItem;

  String get formattedSession => "$session:00";

  String get delayedHm {
    final scheduledTime =
        DateTime.parse(DateFormat("yyyy-MM-dd").format(DateTime.now()))
            .add(Duration(hours: int.parse(session)));
    final delayedDuration = DateTime.now().difference(scheduledTime);
    final delayedHH = delayedDuration.inHours.toString().padLeft(2, "0");
    final delayedMm =
        delayedDuration.inMinutes.remainder(60).toString().padLeft(2, "0");

    return "$delayedHH:$delayedMm";
  }
}
