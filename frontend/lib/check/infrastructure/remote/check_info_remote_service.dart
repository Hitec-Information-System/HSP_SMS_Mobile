import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:frontend/check/infrastructure/check_info_dto.dart';
import 'package:frontend/core/domain/added_image.dart';
import 'package:frontend/core/infrastructure/dio_extensions.dart';
import 'package:frontend/core/infrastructure/network_exceptions.dart';
import 'package:frontend/core/infrastructure/remote_response.dart';

class CheckInfoRemoteService {
  final Dio _dio;

  const CheckInfoRemoteService(this._dio);

  Future<RemoteResponse<CheckInfoDTO>> fetchCheckInfo(
      Map<String, dynamic> params) async {
    try {
      final response = await _dio.get(
        "/check",
        queryParameters: params,
      );

      if (response.statusCode != 200) {
        throw RestApiException(
            errorCode: response.statusCode, message: response.statusMessage);
      }

      final data = response.data as Map<String, dynamic>;

      return RemoteResponse.withNewData(CheckInfoDTO.fromJson(data));
    } on DioError catch (e) {
      if (e.isNoConnectionError) {
        return const RemoteResponse.noConnection();
      }

      if (e.response?.statusCode == 400) {
        throw RestApiException(
          errorCode: e.response?.statusCode,
          message: "등록되지 않은 태그 입니다.",
        );
      }

      if (e.type == DioErrorType.connectTimeout) {
        throw RestApiException(
          errorCode: e.response?.statusCode,
          message: "서버 응답이 없습니다.",
        );
      }

      if (e.response != null) {
        throw RestApiException(errorCode: e.response?.statusCode);
      }

      rethrow;
    }
  }

  Future<RemoteResponse<Unit>> saveCheckResults(
      Map<String, dynamic> params, List<AddedImage> images) async {
    try {
      // 2022-01-19
      //  파일 정보는 저장 되었지만 이미지가 저장되지 않는 경우가 생겨
      //  저장 순서를 (이전)db정보->이미지 (현재)이미지->정보로 변경함
      await _saveCheckImages(images);
      await _saveCheckInfoResult(params);

      return const RemoteResponse.withNewData(unit);
    } on DioError catch (e) {
      if (e.isNoConnectionError) {
        return const RemoteResponse.noConnection();
      }

      if (e.response?.statusCode == 400) {
        throw RestApiException(
          errorCode: e.response?.statusCode,
          message: e.response?.data["MSG"] as String,
        );
      }

      if (e.type == DioErrorType.connectTimeout) {
        throw RestApiException(
          errorCode: e.response?.statusCode,
          message: "서버 응답이 없습니다.",
        );
      }

      if (e.response != null) {
        throw RestApiException(
          errorCode: e.response?.statusCode,
          message: e.response?.data.toString(),
        );
      }

      rethrow;
    }
  }

  Future<void> _saveCheckInfoResult(Map<String, dynamic> params) async {
    try {
      final response = await _dio.post("/check", data: params);
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

  Future<void> _saveCheckImages(List<AddedImage> images) async {
    try {
      final formData = FormData();
      final imageParams = <MapEntry<String, MultipartFile>>[];

      for (final image in images) {
        final img = MultipartFile.fromFileSync(image.url, filename: image.name);
        imageParams.add(MapEntry("file", img));
      }

      formData.files.addAll(imageParams);

      final response = await _dio.post("/check/images", data: formData);
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
