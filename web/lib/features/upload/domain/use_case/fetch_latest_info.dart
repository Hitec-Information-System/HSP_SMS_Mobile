import 'package:web/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:web/core/usecases/usecase.dart';
import 'package:web/features/upload/domain/entity/app_version.dart';
import 'package:web/features/upload/domain/repository/i_app_version_repository.dart';

class FetchLatestFileInfo implements UseCase<AppVersion, NoParams> {
  final IAppVersionRepository _repository;

  const FetchLatestFileInfo(
    this._repository,
  );

  @override
  Future<Either<Failure, AppVersion>> call(NoParams params) async {
    return await _repository.fetchLatestInfo();
  }
}
