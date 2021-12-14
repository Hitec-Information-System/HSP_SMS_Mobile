import 'package:dartz/dartz.dart';
import 'package:web/core/error/failures.dart';

abstract class IAuthRepsitory {
  Future<Either<Failure, Unit>> signIn(Map<String, dynamic> params);
}
