import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:frontend/core/domain/added_image.dart';
import 'package:frontend/core/infrastructure/dio_extensions.dart';
import 'package:frontend/core/infrastructure/network_exceptions.dart';
import 'package:frontend/menus/home/domain/board.dart';
import 'package:frontend/menus/home/infrastructure/board_dto.dart';
import 'package:frontend/menus/monitor/core/domain/check_monitor_failure.dart';

class BoardItemRepository {
  final Dio _dio;

  const BoardItemRepository(this._dio);

  Future<Either<CheckMonitorFailure, Board>> fetchBoardItemsList(
      Map<String, dynamic> params) async {
    try {
      final response = await _dio.get("/board-all", queryParameters: params);

      if (response.statusCode == 200) {
        final data = response.data;

        return right(
            BoardDTO.fromJson(data as Map<String, dynamic>).toDomain());
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

  Future<Either<CheckMonitorFailure, BoardItem>> fetchBoardItemDetails(
      Map<String, dynamic> params,
      {required String path}) async {
    try {
      final response = await _dio.get("/board/$path", queryParameters: params);

      if (response.statusCode == 200) {
        final data = response.data;

        return right(
            BoardItemDTO.fromJson(data as Map<String, dynamic>).toDomain());
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

  Future<Either<CheckMonitorFailure, Unit>> saveBoardItem(
    Map<String, dynamic> params,
    List<AddedImage> images,
  ) async {
    try {
      // 2021-12-15
      //  파일 정보는 저장 되었지만 이미지가 저장되지 않는 경우가 생겨
      //  저장 순서를 (이전)db정보->이미지 (현재)이미지->정보로 변경함
      await _saveBoardInfoImages(images);
      await _saveBoardInfo(params);

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

  Future<void> _saveBoardInfo(Map<String, dynamic> params) async {
    try {
      final response = await _dio.post("/board", data: params);
      if (response.statusCode != 200) {
        throw RestApiException(errorCode: response.statusCode);
      }
    } on DioError catch (e) {
      if (e.response?.statusCode == 400) {
        throw RestApiException(
          errorCode: e.response?.statusCode,
          message: e.response?.data["MSG"] as String,
        );
      } else if (e.type == DioErrorType.connectTimeout) {
        throw RestApiException(
          errorCode: e.response?.statusCode,
          message: "서버 응답이 없습니다.",
        );
      } else {
        rethrow;
      }
    }
  }

  Future<void> _saveBoardInfoImages(List<AddedImage> images) async {
    try {
      final formData = FormData();
      final imageParams = <MapEntry<String, MultipartFile>>[];

      for (final image in images) {
        final img = MultipartFile.fromFileSync(image.url, filename: image.name);
        imageParams.add(MapEntry("file", img));
      }

      formData.files.addAll(imageParams);

      // TODO: 추후 업데이트 기능들어간 후 /board/images, /check/images 하나로 합치기. 업데이트 기능이 없어 지금 수정하면 기존 사용자들에게 에러 발생
      final response = await _dio.post("/board/images", data: formData);
      if (response.statusCode != 200) {
        throw RestApiException(errorCode: response.statusCode);
      }
    } on DioError catch (e) {
      if (e.response?.statusCode == 400) {
        throw RestApiException(
          errorCode: e.response?.statusCode,
          message: e.response?.data["MSG"] as String,
        );
      } else if (e.type == DioErrorType.connectTimeout) {
        throw RestApiException(
          errorCode: e.response?.statusCode,
          message: "서버 응답이 없습니다.",
        );
      } else {
        rethrow;
      }
    }
  }
}
