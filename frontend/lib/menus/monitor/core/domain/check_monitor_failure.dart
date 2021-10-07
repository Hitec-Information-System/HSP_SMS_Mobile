import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_monitor_failure.freezed.dart';

@freezed
class CheckMonitorFailure with _$CheckMonitorFailure {
  const CheckMonitorFailure._();
  const factory CheckMonitorFailure.api([int? statusCode, String? message]) = _Api;
  const factory CheckMonitorFailure.noConnection() = _NoConnection;
}
