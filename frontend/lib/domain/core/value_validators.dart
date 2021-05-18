import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:frontend/domain/core/failures.dart';
import 'package:nfc_manager/nfc_manager.dart';
import 'package:nfc_manager/platform_tags.dart';

// Future<Either<ValueFailure<dynamic>, dynamic>> validateNfcRead(
//     {required NfcTag tag}) async {
//   if (NfcA.from(tag) != null ||
//       NfcB.from(tag) != null ||
//       NfcF.from(tag) != null ||
//       NfcV.from(tag) != null) {}
// }
