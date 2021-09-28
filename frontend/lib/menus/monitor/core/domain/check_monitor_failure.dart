import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_monitor_failure.freezed.dart';

@freezed
class CheckMonitorFailure with _$CheckMonitorFailure {
  const CheckMonitorFailure._();
  const factory CheckMonitorFailure.api([int? message]) = _Api;
}
