import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_serial_failure.freezed.dart';

@freezed
class CheckSerialFailure with _$CheckSerialFailure {
  const CheckSerialFailure._();
  const factory CheckSerialFailure.notFound() = _CheckSerialNotFound;
  const factory CheckSerialFailure.serverError([String? message]) =
      _CheckSerialServerError;
}
