import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_monitor_failure.freezed.dart';

// TODO: 공통화 하여 수정하기
@freezed
class CheckMonitorFailure with _$CheckMonitorFailure {
  const CheckMonitorFailure._();
  const factory CheckMonitorFailure.api([int? statusCode, String? message]) =
      _Api;
  const factory CheckMonitorFailure.internal({required String message}) = _Internal;
  const factory CheckMonitorFailure.noConnection() = _NoConnection;
}
