import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:frontend/core/infrastructure/network_exceptions.dart';
import 'package:frontend/menus/home/domain/board_item.dart';
import 'package:frontend/menus/home/infrastructure/board_item_dto.dart';
import 'package:frontend/menus/monitor/core/domain/check_monitor_failure.dart';

import 'package:frontend/core/infrastructure/dio_extensions.dart';

class BoardItemRepository {
  final Dio _dio;

  const BoardItemRepository(this._dio);

  Future<Either<CheckMonitorFailure, List<BoardItem>>> fetchBoardItemsList(
      Map<String, dynamic> params) async {
    try {
      final response = await _dio.get("/board", queryParameters: params);

      if (response.statusCode == 200) {
        final data = response.data as List<dynamic>;

        return right(
          data
              .map(
                (item) => BoardItemDTO.fromJson(item as Map<String, dynamic>)
                    .toDomain(),
              )
              .toList(),
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

  // TODO: 적용하기
  Future<Either<CheckMonitorFailure, Unit>> saveBoardDetails(
    Map<String, dynamic> params,
  ) async {
    try {
      final response = await _dio.post("/board", data: params);

      // 응답코드가 200이 아닐 때 오류 처리
      if (response.statusCode != 200) {
        return left(CheckMonitorFailure.api(
            response.statusCode, response.data["msg"] as String));
      }

      if ((response.data as Map<String, dynamic>)["msg"] != "OK") {
        return left(CheckMonitorFailure.api(
            response.statusCode, response.data["msg"] as String));
      }

      return right(unit);
    } on DioError catch (e) {
      if (e.isNoConnectionError) {
        return left(
          const CheckMonitorFailure.noConnection(),
        );
      }

      if (e.type == DioErrorType.connectTimeout) {
        return left(
            CheckMonitorFailure.api(e.response?.statusCode, "서버 응답이 없습니다."));
      }

      rethrow;
    }
  }
}
