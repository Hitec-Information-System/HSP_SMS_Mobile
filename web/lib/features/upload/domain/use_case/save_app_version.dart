import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:web/core/error/failures.dart';
import 'package:web/core/usecases/usecase.dart';
import 'package:web/features/upload/domain/entity/app_version.dart';
import 'package:web/features/upload/domain/repository/i_app_version_repository.dart';

part 'save_app_version.freezed.dart';

class SaveAppVersion implements UseCase<Unit, Params> {
  final IAppVersionRepository _repository;

  const SaveAppVersion(
    this._repository,
  );

  @override
  Future<Either<Failure, Unit>> call(params) async {
    return await _repository.saveAppVersion(params.version);
  }
}

@freezed
class Params with _$Params {
  const Params._();
  const factory Params({
    required AppVersion version,
  }) = _Params;
}
