import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/nfc/domain/nfc_failure.dart';
import 'package:frontend/nfc/infrastructure/tag_read/id_tag_to_info_converter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'nfc_notifier.freezed.dart';

@freezed
class NfcState with _$NfcState {
  const NfcState._();
  const factory NfcState.initial() = _Initial;
  const factory NfcState.reading() = _Reading;
  const factory NfcState.read() = _Read;
  const factory NfcState.failure(NfcFailure failure) = _Failure;
}

class NfcNotifier extends StateNotifier<NfcState> {
  NfcNotifier(this._converter) : super(const NfcState.initial());

  final IdTagToInfoConverter _converter;

  Future<void> read() async {
    final failureOrSuccess = await _converter.read();

    state = failureOrSuccess.fold(
        (l) => NfcState.failure(l), (r) => const NfcState.read());
  }
}
