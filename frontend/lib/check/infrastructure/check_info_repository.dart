import 'package:dartz/dartz.dart';
import 'package:frontend/check/domain/check_info.dart';
import 'package:frontend/check/domain/check_info_failure.dart';
import 'package:frontend/check/infrastructure/remote/check_info_remote_service.dart';

import 'package:frontend/core/domain/fresh.dart';
import 'package:frontend/core/infrastructure/network_exceptions.dart';

class CheckInfoRepository {
  final CheckInfoRemoteService _remoteService;

  const CheckInfoRepository(
    this._remoteService,
  );

  Future<Either<CheckInfoFailure, Fresh<CheckInfo>>> getCheckInfo(
      Map<String, dynamic> params) async {
    try {
      final remoteFetch = await _remoteService.fetchCheckInfo(params);
      return await remoteFetch.when(
        noConnection: () async => left(
          const CheckInfoFailure.noConnection(),
        ),
        withNewData: (data) async {
          return right(
            Fresh.yes(
              data.toDomain(),
            ),
          );
        },
      );
    } on RestApiException catch (e) {
      return left(
        CheckInfoFailure.api(
          statusCode: e.errorCode,
          message: e.message,
        ),
      );
    }
  }

  Future<Either<CheckInfoFailure, Fresh<Unit>>> saveCheckInfo(
      Map<String, dynamic> params, List<CheckImage> images) async {
    try {
      final remoteFetch = await _remoteService.saveCheckResults(params, images);
      return await remoteFetch.when(
        noConnection: () async {
          // await _localService.upsertCheckInfo(params, "$interval$tagId");
          return left(const CheckInfoFailure.noConnection());
        },
        withNewData: (data) async {
          return right(Fresh.yes(unit));
        },
      );
    } on RestApiException catch (e) {
      return left(
        CheckInfoFailure.api(
          statusCode: e.errorCode,
          message: e.message,
        ),
      );
    }
  }
}
