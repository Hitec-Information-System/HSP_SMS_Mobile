import 'package:dartz/dartz.dart';
import 'package:frontend/nfc/domain/nfc_failure.dart';
import 'package:frontend/nfc/infrastructure/tag_read/tag_reader.dart';

class IdTagToInfoConverter {
  IdTagToInfoConverter(
    this.tagReader,
  );

  final TagReader tagReader;

  Future<Either<NfcFailure, String>> read() async {
    final tagId = await tagReader.read();
    if (tagId != null) {
      return right(tagId);
    }
    return left(const NfcFailure.readError());
  }
}
