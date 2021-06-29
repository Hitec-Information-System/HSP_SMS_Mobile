import 'package:freezed_annotation/freezed_annotation.dart';

part 'nfc_failure.freezed.dart';

@freezed
class NfcFailure with _$NfcFailure {
  const NfcFailure._();
  const factory NfcFailure.notSupportedTag([String? message]) =
      _NotSupportedTag;
  const factory NfcFailure.readError() = _ReadError;
}
