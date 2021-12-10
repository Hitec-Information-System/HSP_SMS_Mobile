import 'package:dartz/dartz.dart';
import 'package:web/core/error/failures.dart';
import 'package:web/features/upload/domain/entity/app_version.dart';

abstract class IAppVersionRepository {
  Future<Either<Failure, AppVersion>> fetchLatestInfo();
  Future<Either<Failure, Unit>> saveAppVersion(AppVersion newVerison);
}
