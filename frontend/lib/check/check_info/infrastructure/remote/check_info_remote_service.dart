import 'package:dio/dio.dart';
import 'package:frontend/check/check_info/infrastructure/check_info_dto.dart';
import 'package:frontend/core/infrastructure/network_exceptions.dart';
import 'package:frontend/core/infrastructure/remote_response.dart';
import 'package:frontend/core/presentation/constants/constants.dart';

import 'package:frontend/core/infrastructure/dio_extensions.dart';

class CheckInfoRemoteService {
  final Dio _dio;

  const CheckInfoRemoteService(this._dio);

  Future<RemoteResponse<CheckInfoDTO>> fetchCheckInfo(String tagId) async {
    try {
      final response = await _dio.get("/info", queryParameters: {
        "check-no": tagId,
        "sys-flag": LogicConstants.systemFlag,
        "comp-cd": LogicConstants.companyCd,
        // TODO: USER, COMP_CD 값 빼기
        "user": "dev",
      });
      if (response.statusCode != 200) {
        throw RestApiException(errorCode: response.statusCode);
      }

      final data = response.data as Map<String, dynamic>;

      if (data.isEmpty) {
        // TODO: 없을 때?
      }

      return RemoteResponse.withNewData(CheckInfoDTO.fromJson(data));
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
