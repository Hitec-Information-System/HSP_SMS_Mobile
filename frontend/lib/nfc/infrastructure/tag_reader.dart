import 'package:flutter/services.dart';
import 'package:nfc_manager/nfc_manager.dart';

class TagReader {
  final NfcManager nfcManager;

  TagReader(this.nfcManager);

  Future<NfcTag?> read() async {
    NfcTag? scannedTag;

    await nfcManager.startSession(onDiscovered: (tag) async {
      try {
        await nfcManager.stopSession();
        scannedTag = tag;
      } on MissingPluginException {
        await nfcManager.stopSession();
      }
    });

    return scannedTag;
  }
}
