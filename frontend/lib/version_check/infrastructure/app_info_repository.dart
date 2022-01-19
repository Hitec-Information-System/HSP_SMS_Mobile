import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:frontend/core/infrastructure/dio_extensions.dart';
import 'package:frontend/menus/monitor/core/domain/check_monitor_failure.dart';
import 'package:frontend/version_check/domain/app_info.dart';
import 'package:frontend/version_check/infrastructure/app_info_dto.dart';

class AppInfoRepository {
  final Dio _dio;

  const AppInfoRepository(this._dio);

  Future<Either<CheckMonitorFailure, AppInfo>> fetchApkVersionInfo() async {
    try {
      final response = await _dio.get("/apk");
      final data = response.data as Map<String, dynamic>;
      if (response.statusCode == 200) {
        return right(AppInfoDTO.fromJson(data).toDomain());
      } else {
        return left(
          CheckMonitorFailure.api(
            response.statusCode,
            data["MSG"] as String,
          ),
        );
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
    }
  }
}
