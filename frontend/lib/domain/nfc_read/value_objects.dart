import 'package:dartz/dartz.dart';
import 'package:frontend/domain/core/failures.dart';
import 'package:frontend/domain/core/value_objects.dart';
import 'package:frontend/domain/core/value_validators.dart';
import 'package:nfc_manager/nfc_manager.dart';

class NfcTagId extends ValueObject<NfcTag> {
  @override
  final Either<ValueFailure<NfcTag>, NfcTag> value;

  factory NfcTagId(NfcTag value) {
    return NfcTagId._(value: validateNfcId(tag: value));
  }

  const NfcTagId._({required this.value});
}
