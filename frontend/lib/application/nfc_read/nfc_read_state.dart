part of 'nfc_read_bloc.dart';

@freezed
class NfcReadState with _$NfcReadState {
  const factory NfcReadState({
    required NfcTagId tagId,
    required bool isSubmitting,
  }) = _NfcReadState;

  const factory NfcReadState.initial() = _Initial;
}
