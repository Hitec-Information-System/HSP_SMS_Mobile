import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/check/check_list/domain/check_details.dart';

part 'check_info.freezed.dart';

@freezed
class CheckInfo with _$CheckInfo {
  const CheckInfo._();
  const factory CheckInfo({
    required String spotFlag,
    required String checkDate,
    required String checkTitme,
    required int checkIntervalIndex,
    required int checkRepIndex,
    required List<CheckDetails> details,
  }) = _CheckInfo;
}
