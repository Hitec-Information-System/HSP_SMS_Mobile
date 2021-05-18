import 'package:dartz/dartz.dart';
import 'package:frontend/domain/core/failures.dart';
import 'package:frontend/domain/core/value_objects.dart';
import 'package:nfc_manager/nfc_manager.dart';

class NfcTagValue extends ValueObject<dynamic> {
  @override
  final Either<ValueFailure<dynamic>, dynamic> value;

  // factory NfcTagValue(dynamic value) {
  //   return NfcTagValue._(value: );
  // }

  const NfcTagValue._({required this.value});
}
