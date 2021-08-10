import 'package:dartz/dartz.dart';
import 'package:frontend/check/check_serial/domain/check_serial.dart';
import 'package:frontend/check/check_serial/domain/check_serial_failure.dart';

abstract class CheckSerialLoader {
  Future<Either<CheckSerialFailure, CheckSerial>> getSerial(String tagId);
}
