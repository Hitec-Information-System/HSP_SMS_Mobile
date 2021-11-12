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

  factory ProgressStatus.noValue() {
    return const ProgressStatus(
      completedCount: 0,
      notCompletedCount: 0,
      session: "",
      sessionName: "",
      totalCount: 0,
      companyCd: "",
      objCd: "",
    );
  }
}
