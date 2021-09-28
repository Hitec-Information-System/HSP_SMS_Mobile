import 'package:freezed_annotation/freezed_annotation.dart';

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
  }) = _CheckedItem;
}
