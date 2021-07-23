import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:frontend/tag/core/domain/tag_failure.dart';
import 'package:frontend/tag/core/domain/tag.dart';
import 'package:frontend/tag/core/infrastructure/tag_converter.dart';
import 'package:nfc_manager/nfc_manager.dart';
import 'package:nfc_manager/platform_tags.dart';

class NFCConverter extends TagConverter {
  @override
  Future<Either<TagFailure, Tag>> convertToDomain<T>(T value) async {
    try {
      final uintTag = NfcA.from(value as NfcTag)?.identifier ??
          NfcB.from(value)?.identifier ??
          NfcF.from(value)?.identifier ??
          NfcV.from(value)?.identifier;

      if (uintTag == null) {
        return left(const TagFailure.notSupportedTag());
      }

      final tagId = hexFromBytes(uintTag);

      return right(Tag(id: tagId));
    } on FormatException {
      return left(const TagFailure.tagError());
    }
  }
}

// bytes to string
String hexFromBytes(Uint8List? bytes,
    {String separator = ' ', String empty = '-'}) {
  return bytes == null || bytes.isEmpty
      ? empty
      : bytes
          .map((e) => e.toRadixString(16).padLeft(2, '0').toUpperCase())
          .join(separator);
}
