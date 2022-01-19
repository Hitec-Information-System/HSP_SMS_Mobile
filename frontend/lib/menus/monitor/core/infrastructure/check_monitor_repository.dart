import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:frontend/core/domain/fresh.dart';
import 'package:frontend/core/infrastructure/dio_extensions.dart';
import 'package:frontend/core/infrastructure/network_exceptions.dart';
import 'package:frontend/menus/monitor/core/domain/check_monitor_failure.dart';
import 'package:frontend/menus/monitor/core/domain/check_spot.dart';
import 'package:frontend/menus/monitor/core/infrastructure/check_spot_dto.dart';

// TODO: failure 객체가 동일하게 동작한다면 하나로 통합하기
class CheckMonitorRepository {
  final Dio _dio;

  const CheckMonitorRepository(this._dio);

  Future<Either<CheckMonitorFailure, Fresh<List<CheckSpot>>>>
      fetchCheckMonitsList(Map<String, dynamic> params) async {
    try {
      final response = await _dio.get("/monitor", queryParameters: params);

      if (response.statusCode == 200) {
        final data = response.data as List<dynamic>;

        return right(
          Fresh.yes(
            data
                .map((e) =>
                    CheckSpotDTO.fromJson(e as Map<String, dynamic>).toDomain())
                .toList(),
          ),
        );
      } else {
        throw RestApiException(errorCode: response.statusCode);
      }
    } on DioError catch (e) {
      if (e.isNoConnectionError) {
        return left(
          const CheckMonitorFailure.noConnection(),
        );
      }

      if (e.type == DioErrorType.connectTimeout) {
        return left(
          CheckMonitorFailure.api(
            e.response?.statusCode,
            "서버 응답이 없습니다.",
          ),
        );
      }

      if (e.response?.statusCode == 400) {
        return left(
          CheckMonitorFailure.api(
            e.response?.statusCode,
            e.response?.data["msg"] as String?,
          ),
        );
      }

      rethrow;
    } on RestApiException catch (e) {
      return left(
        CheckMonitorFailure.api(e.errorCode),
      );
    }
  }

  Future<Either<CheckMonitorFailure, Unit>> saveNFCTag(
      Map<String, dynamic> params) async {
    try {
      final response = await _dio.post("/nfc", data: params);
      if (response.statusCode != 200) {
        return left(
          CheckMonitorFailure.api(
            response.statusCode,
            response.statusMessage,
          ),
        );
      }

      final data = response.data as Map<String, dynamic>;

      if (data["RESULT"] == "OK") {
        return right(unit);
      }

      return left(
        CheckMonitorFailure.api(response.statusCode, data["RESULT"] as String),
      );
    } on DioError catch (e) {
      if (e.isNoConnectionError) {
        return left(const CheckMonitorFailure.noConnection());
      } else if (e.response != null) {
        return left(
          CheckMonitorFailure.api(e.response?.statusCode),
        );
      } else if (e.type == DioErrorType.connectTimeout) {
        return left(
          CheckMonitorFailure.api(
            e.response?.statusCode,
            "서버 응답이 없습니다.",
          ),
        );
      } else {
        rethrow;
      }
    }
  }
}
