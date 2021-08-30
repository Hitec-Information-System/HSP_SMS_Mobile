import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:frontend/check/check_list/domain/check_failure.dart';
import 'package:frontend/check/check_list/domain/check_standard.dart';
import 'package:frontend/check/check_list/infrastructure/check_standard_remote_service.dart';
import 'package:frontend/core/domain/fresh.dart';
import 'package:frontend/core/infrastructure/network_exceptions.dart';

class CheckStandardRepository {
  final CheckStandardRemoteService _remoteService;
  // TODO: take local service into account

  const CheckStandardRepository(
    this._remoteService,
  );

  Future<Either<CheckFailure, Fresh<CheckStandard>>>
      fetchCheckStandard() async {
    try {
      final remoteStandard = await _remoteService.fetchCheckStandard();
      return right(await remoteStandard.when(
          noConnection: () => Fresh.no(
                CheckStandard.empty(),
              ),
          withNewData: (data) {
            // TODO: save data to local service
            return Fresh.yes(data.toDomain());
          }));
    } on RestApiException catch (e) {
      return left(CheckFailure.api(e.errorCode));
    }
  }
}
