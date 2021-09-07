import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_serial_failure.freezed.dart';

@freezed
class CheckSerialFailure with _$CheckSerialFailure {
  const CheckSerialFailure._();
  const factory CheckSerialFailure.server([String? message]) = _Server;
}
