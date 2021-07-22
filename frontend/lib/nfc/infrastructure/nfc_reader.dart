import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:frontend/nfc/domain/nfc_failure.dart';
import 'package:frontend/nfc/domain/tag.dart';
import 'package:frontend/nfc/infrastructure/tag_reader.dart';
import 'package:nfc_manager/platform_tags.dart';

class NFCReader {
  NFCReader(
    this.tagReader,
  );

  final TagReader tagReader;

  Future<Either<NfcFailure, Tag>> handleNfcTagRequest() async {
    final scannedTag = await tagReader.read();
    if (scannedTag != null) {
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
    return left(const NfcFailure.readError());
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
