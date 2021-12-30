import 'package:web/core/error/exceptions.dart';
import 'package:web/features/upload/data/datasource/remote/i_app_version_remote_datasource.dart';
import 'package:web/features/upload/domain/entity/app_version.dart';
import 'package:web/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:web/features/upload/domain/repository/i_app_version_repository.dart';

class AppVersionRepository implements IAppVersionRepository {
  final IAppVersionRemoteDatasource _remoteDatasource;

  const AppVersionRepository(
    this._remoteDatasource,
  );

  @override
  Future<Either<Failure, AppVersion>> fetchLatestInfo() async {
    try {
      return right((await _remoteDatasource.getAppVersion()).toDomain());
    } on ServerException {
      return const Left(Failure.serverFailure());
    } on ConnectionException {
      return const Left(Failure.connectionFailure());
    } on ApiException catch (e) {
      return Left(Failure.apiFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, Unit>> saveAppVersion(AppVersion newVersion) async {
    try {
      final _ = await _remoteDatasource.saveAppVersion(newVersion);
      return const Right(unit);
    } on ServerException {
      return const Left(Failure.serverFailure());
    } on ConnectionException {
      return const Left(Failure.connectionFailure());
    } on ApiException catch (e) {
      return Left(Failure.apiFailure(e.message));
    }
  }
}
