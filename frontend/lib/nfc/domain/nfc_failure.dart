import 'package:freezed_annotation/freezed_annotation.dart';

part 'nfc_failure.freezed.dart';

@freezed
class NfcFailure with _$NfcFailure {
  const NfcFailure._();
  const factory NfcFailure.notSupported([String? message]) = _NotSupported;
  const factory NfcFailure.readError() = _ReadError;
}
