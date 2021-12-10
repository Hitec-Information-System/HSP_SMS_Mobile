import 'package:web/core/error/exceptions.dart';
import 'package:web/core/network/network_info.dart';
import 'package:web/features/upload/data/datasource/remote/i_app_version_remote_datasource.dart';
import 'package:web/features/upload/domain/entity/app_version.dart';
import 'package:web/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:web/features/upload/domain/repository/i_app_version_repository.dart';

class AppVersionRepository implements IAppVersionRepository {
  // TODO: Virtual Linux machine에서 connectivity_plus package가 제대로 작동하지 않아 주석 처리함

  final IAppVersionRemoteDatasource _remoteDatasource;
  final NetworkInfo _networkInfo;

  const AppVersionRepository(
    this._remoteDatasource,
    this._networkInfo,
  );

  @override
  Future<Either<Failure, AppVersion>> fetchLatestInfo() async {
    // if (await _networkInfo.isConnected) {
    try {
      return right((await _remoteDatasource.getAppVersion()).toDomain());
    } on ServerException {
      return const Left(Failure.serverFailure());
    } on ConnectionException {
      return const Left(Failure.connectionFailure());
    }
    // } else {
    //   return const Left(Failure.connectionFailure());
    // }
  }

  @override
  Future<Either<Failure, Unit>> saveAppVersion(AppVersion newVersion) async {
    // if (await _networkInfo.isConnected) {
    try {
      final isSaved = await _remoteDatasource.saveAppVersion(newVersion);
      if (isSaved) {
        return const Right(unit);
      } else {
        return const Left(Failure.serverFailure());
      }
    } on ServerException {
      return const Left(Failure.serverFailure());
    } on ConnectionException {
      return const Left(Failure.connectionFailure());
    }
    // } else {
    //   return const Left(Failure.connectionFailure());
    // }
  }
}
