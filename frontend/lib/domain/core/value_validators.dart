import 'package:dartz/dartz.dart';
import 'package:frontend/domain/core/failures.dart';
import 'package:frontend/util/util.dart';
import 'package:nfc_manager/nfc_manager.dart';
import 'package:nfc_manager/platform_tags.dart';

Either<ValueFailure<NfcTag>, NfcTag> validateNfcId({required NfcTag tag}) {
  final id = hexFromBytes(NfcA.from(tag)?.identifier ??
      NfcB.from(tag)?.identifier ??
      NfcF.from(tag)?.identifier ??
      NfcV.from(tag)?.identifier);
  if (id != '-') {
    return right(tag);
  } else {
    return left(ValueFailure.invalidTag(failedValue: tag));
  }
}
