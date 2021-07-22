import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:frontend/nfc/domain/nfc_failure.dart';
import 'package:frontend/nfc/domain/tag.dart';
import 'package:nfc_manager/nfc_manager.dart';
import 'package:nfc_manager/platform_tags.dart';

class NFCReader {
  Future<Either<NfcFailure, Tag>> handleNfcTagRequest(NfcTag scannedTag) async {
    final uintTag = NfcA.from(scannedTag)?.identifier ??
        NfcB.from(scannedTag)?.identifier ??
        NfcF.from(scannedTag)?.identifier ??
        NfcV.from(scannedTag)?.identifier;

    if (uintTag == null) {
      return left(const NfcFailure.notSupported());
    }

    final tagId = hexFromBytes(uintTag);

    return right(Tag(id: tagId));
  }
}

String hexFromBytes(Uint8List? bytes,
    {String separator = ' ', String empty = '-'}) {
  return bytes == null || bytes.isEmpty
      ? empty
      : bytes
          .map((e) => e.toRadixString(16).padLeft(2, '0').toUpperCase())
          .join(separator);
}
