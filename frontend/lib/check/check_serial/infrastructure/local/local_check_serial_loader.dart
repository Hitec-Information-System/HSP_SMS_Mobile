import 'package:frontend/check/check_serial/domain/check_serial_failure.dart';
import 'package:frontend/check/check_serial/domain/check_serial.dart';
import 'package:dartz/dartz.dart';
import 'package:frontend/check/check_serial/infrastructure/check_serial_loader.dart';

class LocalCheckSerialLoader extends CheckSerialLoader {
  @override
  Future<Either<CheckSerialFailure, CheckSerial>> getSerial(String tagId) {
    // TODO: implement getSerial
    throw UnimplementedError();
  }
}
