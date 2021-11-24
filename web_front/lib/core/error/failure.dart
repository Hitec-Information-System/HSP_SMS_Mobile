import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const Failure._();
  const factory Failure.api([String? message]) = _Api;
  const factory Failure.internal({required String message}) = _Internal;
  const factory Failure.noConnection() = _NoConnection;
  const factory Failure.timeout() = _Timeout;
}
