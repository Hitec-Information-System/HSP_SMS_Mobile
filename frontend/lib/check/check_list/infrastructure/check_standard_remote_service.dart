import 'package:dio/dio.dart';
import 'package:frontend/auth/infrastructure/authenticator.dart';
import 'package:frontend/core/infrastructure/network_exceptions.dart';
import 'package:frontend/core/infrastructure/remote_response.dart';
import 'package:frontend/core/infrastructure/dio_extensions.dart';

import 'check_standard_dto.dart';

class CheckStandardRemoteService {
  final Dio _dio;
  final Authenticator _authenticator;

  const CheckStandardRemoteService(
    this._dio,
    this._authenticator,
  );

  Future<RemoteResponse<CheckStandardDTO>> fetchCheckStandard() async {
    try {
      final compCd = await _authenticator
          .getSignedInCredentials()
          .then((user) => user!.compCd);

      final response = await _dio.get(
        "/check-list",
        queryParameters: {
          "comp-cd": compCd,
          // TODO: change hardCoded flag to dynamic flag
          "obj-flag": "LINE",
        },
      );

      if (response.statusCode == 200) {
        final convertedData =
            CheckStandardDTO.fromJson(response.data as Map<String, dynamic>);
        return RemoteResponse.withNewData(convertedData);
      } else {
        throw RestApiException(errorCode: response.statusCode);
      }
    } on DioError catch (e) {
      if (e.isNoConnectionError) {
        return const RemoteResponse.noConnection();
      } else if (e.response != null) {
        throw RestApiException(errorCode: e.response?.statusCode);
      } else {
        rethrow;
      }
    }
  }
}
