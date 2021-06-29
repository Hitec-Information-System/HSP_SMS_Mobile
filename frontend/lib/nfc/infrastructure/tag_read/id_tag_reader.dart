import 'package:flutter/services.dart';
import 'package:nfc_manager/nfc_manager.dart';

import 'package:frontend/nfc/infrastructure/tag_read/tag_reader.dart';

class IdTagReader implements TagReader {
  final NfcManager nfcManager;

  IdTagReader(this.nfcManager);

  @override
  Future<String?> read() async {
    nfcManager.startSession(onDiscovered: (tag) async {
      try {
        await nfcManager.stopSession();
        return tag.data["identifier"];
      } on MissingPluginException {
        await nfcManager.stopSession();
        return;
      }
    });
  }
}
