import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_standard.freezed.dart';

@freezed
class CheckStandard with _$CheckStandard {
  const CheckStandard._();
  const factory CheckStandard({
    required List<CheckInterval> intervals,
    required List<CheckSession> sessions,
  }) = _CheckStandard;

  factory CheckStandard.empty() => const CheckStandard(
        intervals: [],
        sessions: [],
      );
}

@freezed
class CheckInterval with _$CheckInterval {
  const CheckInterval._();
  const factory CheckInterval({
    required String id,
    required String name,
  }) = _CheckInterval;
}

@freezed
class CheckSession with _$CheckSession {
  const CheckSession._();
  const factory CheckSession({
    required String id,
    required String name,
  }) = _CheckSession;
}
