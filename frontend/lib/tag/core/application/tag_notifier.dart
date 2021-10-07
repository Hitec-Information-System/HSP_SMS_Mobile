import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nfc_manager/nfc_manager.dart';

import 'package:frontend/tag/core/domain/tag.dart';
import 'package:frontend/tag/core/domain/tag_failure.dart';
import 'package:frontend/tag/nfc/infrastructure/nfc_converter.dart';
import 'package:frontend/tag/qr/infrastructure/qr_converter.dart';

part 'tag_notifier.freezed.dart';

@freezed
class TagState with _$TagState {
  const TagState._();
  const factory TagState.initial() = _TagInitial;
  const factory TagState.qrReading() = _QrTagReading;
  const factory TagState.nfcReading() = _NfcTagReading;
  const factory TagState.qrRead(Tag tag) = _TagQrRead;
  const factory TagState.nfcRead(Tag tag) = _TagNfcRead;
  const factory TagState.failure(TagFailure failure) = _TagFailure;
}

class TagNotifier extends StateNotifier<TagState> {
  TagNotifier(
    this._nfcConverter,
    this._qrConverter,
    this._nfcManager,
  ) : super(const TagState.initial());

  final NFCConverter _nfcConverter;
  final QRConverter _qrConverter;
  final NfcManager _nfcManager;

  Future<void> readNFCTag() async {
    state = const TagState.nfcReading();

    _nfcManager.startSession(onDiscovered: (tag) async {
      try {
        stopNFCSession();

        final failureOrSuccess = await _nfcConverter.convertToDomain(tag);

        state = failureOrSuccess.fold(
          (failure) => TagState.failure(failure),
          (success) => TagState.nfcRead(success),
        );
      } on MissingPluginException {
        await _nfcManager.stopSession();

        state = const TagState.failure(TagFailure.tagError());
      }
    });
  }

  Future<void> readQRTag(String rawTag) async {
    final failureOrSuccess = await _qrConverter.convertToDomain(rawTag);

    state = failureOrSuccess.fold(
      (failure) => TagState.failure(failure),
      (success) => TagState.qrRead(success),
    );
  }

  void navigateToQR() {
    state = const TagState.qrReading();
  }

  Future<void> stopNFCSession() async {
    await _nfcManager.stopSession();
  }

  Future<void> clear() async {
    state = const TagState.initial();
  }
}
