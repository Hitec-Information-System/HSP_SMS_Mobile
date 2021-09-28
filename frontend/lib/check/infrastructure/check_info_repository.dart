import 'package:dartz/dartz.dart';
import 'package:frontend/check/domain/check_info.dart';
import 'package:frontend/check/domain/check_info_failure.dart';
import 'package:frontend/check/infrastructure/local/check_info_local_service.dart';
import 'package:frontend/check/infrastructure/remote/check_info_remote_service.dart';

import 'package:frontend/core/domain/fresh.dart';
import 'package:frontend/core/infrastructure/network_exceptions.dart';
import 'package:frontend/core/presentation/constants/constants.dart';

class CheckInfoRepository {
  final CheckInfoLocalService _localService;
  final CheckInfoRemoteService _remoteService;

  const CheckInfoRepository(
    this._localService,
    this._remoteService,
  );

  Future<Either<CheckInfoFailure, Fresh<CheckInfo>>> getCheckInfo(
      String tagId, String interval, String session, String token) async {
    try {
      final params = {
        "check-no": tagId,
        "sys-flag": LogicConstants.systemFlag,
        "comp-cd": LogicConstants.companyCd,
        // TODO: COMP_CD 값 빼기
        "user": token,
        "interval": interval,
        "session": session,
      };

      final remoteFetch = await _remoteService.fetchCheckInfo(params);
      return right(
        await remoteFetch.when(
          noConnection: () async => Fresh.no(
            await _localService.findCheckInfo(tagId).then(
                  (_) => _?.toDomain() ?? CheckInfo.empty(),
                ),
          ),
          withNewData: (data) async {
            await _localService.upsertCheckInfo(
                data.toJson(), "$tagId-$interval-$session");
            return Fresh.yes(
              data.toDomain(),
            );
          },
        ),
      );
    } on RestApiException catch (e) {
      return left(
        CheckInfoFailure.api(e.errorCode),
      );
    }
  }

  Future<Either<CheckInfoFailure, Fresh<String>>> saveCheckInfo(
      Map<String, dynamic> params, List<CheckImage> images) async {
    try {
      final remoteFetch = await _remoteService.saveCheckResults(params, images);
      return right(
        await remoteFetch.when(
          noConnection: () async {
            // await _localService.upsertCheckInfo(params, "$interval$tagId");
            return Fresh.no("error");
          },
          withNewData: (data) async {
            return Fresh.yes(data);
          },
        ),
      );
    } on RestApiException catch (e) {
      return left(
        CheckInfoFailure.api(e.errorCode),
      );
    }
  }
}
