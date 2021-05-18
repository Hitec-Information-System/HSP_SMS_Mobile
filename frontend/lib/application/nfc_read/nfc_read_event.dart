part of 'nfc_read_bloc.dart';

@freezed
class NfcReadEvent with _$NfcReadEvent {
  const factory NfcReadEvent.tagButtonClicked() = TagButtonClicked;
  const factory NfcReadEvent.tagCompleted() = TagCompleted;
  const factory NfcReadEvent.tagCancelledByUser() = TagCancelledByUser;
  const factory NfcReadEvent.tagClear() = TagClear;
}
