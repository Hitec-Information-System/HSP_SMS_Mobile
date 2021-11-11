import 'package:freezed_annotation/freezed_annotation.dart';

part 'progress_status.freezed.dart';

@freezed
class ProgressStatus with _$ProgressStatus {
  const ProgressStatus._();
  const factory ProgressStatus({
    required int completedCount,
    required int notCompletedCount,
    required String session,
    required String sessionName,
    required int totalCount,
    required String companyCd,
    required String objCd,
  }) = _ProgressStatus;

  double get completedRate {
    if (notCompletedCount == 0.0) {
      return 0.0;
    }
    return completedCount / (completedCount + notCompletedCount) * 100;
  }
}
