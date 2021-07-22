import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/nfc/domain/nfc_failure.dart';
import 'package:frontend/nfc/domain/tag.dart';
import 'package:frontend/nfc/infrastructure/nfc_reader.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nfc_manager/nfc_manager.dart';

part 'nfc_read_notifier.freezed.dart';

@freezed
class NFCReadState with _$NFCReadState {
  const NFCReadState._();
  const factory NFCReadState.initial() = _Initial;
  const factory NFCReadState.reading() = _Reading;
  const factory NFCReadState.read(Tag tag) = _Read;
  const factory NFCReadState.failure(NfcFailure failure) = _Failure;
}

class NFCReadNotifier extends StateNotifier<NFCReadState> {
  NFCReadNotifier(this._nfcReader, this._nfcManager)
      : super(const NFCReadState.initial());

  final NFCReader _nfcReader;
  final NfcManager _nfcManager;

  Future<void> readNFCTag() async {
    state = const NFCReadState.reading();

    _nfcManager.startSession(onDiscovered: (tag) async {
      try {
        await _nfcManager.stopSession();

        final failureOrSuccess = await _nfcReader.handleNfcTagRequest(tag);

        state = failureOrSuccess.fold(
          (l) => NFCReadState.failure(l),
          (r) => NFCReadState.read(r),
        );
      } on MissingPluginException {
        await _nfcManager.stopSession();
      }
    });
  }
}
