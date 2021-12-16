import 'package:dartz/dartz.dart';
import 'package:web/core/error/exceptions.dart';

import 'package:web/core/error/failures.dart';
import 'package:web/features/auth/domain/repository/i_auth_repository.dart';
import 'package:web/features/auth/infrastructure/datasource/i_auth_remote_datasource.dart';

class AuthRepository implements IAuthRepsitory {
  final IAuthRemoteDatasource _remoteDatasource;
  const AuthRepository(
    this._remoteDatasource,
  );

  @override
  Future<Either<Failure, Unit>> signIn(Map<String, dynamic> params) async {
    try {
      final isAuthenticated = await _remoteDatasource.validateUser(params);
      if (isAuthenticated) {
        return right(unit);
      }
      return left(const Failure.apiFailure("not authenticated"));
    } on ConnectionException {
      return left(const Failure.connectionFailure());
    } on ApiException catch (e) {
      return left(Failure.apiFailure(e.message));
    } on ServerException {
      return left(const Failure.serverFailure());
    }
  }
}
