import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:web_front/core/error/exceptions.dart';
import 'package:web_front/version_update/domain/version.dart';
import 'package:web_front/version_update/infrastructure/dto/version_dto.dart';

class VersionRemoteDataSource {
  final Dio _dio;

  const VersionRemoteDataSource(this._dio);

  static const _url = "/apk";

  Future<VersionDTO> getAppVersion() async {
    try {
      final response = await _dio.get(_url);
      if (response.statusCode == 200) {
        return VersionDTO.fromJson(json.decode(response.data));
      } else {
        throw ServerException();
      }
    } on DioError catch (e) {
      if (e.response?.statusCode == 404 || e.response?.statusCode == 400) {
        throw ServerException();
      }

      if (e.type == DioErrorType.other && e is SocketException) {
        throw NoConnectionException();
      }

      if (e.type == DioErrorType.connectTimeout) {
        throw TimeoutException("no response from server");
      }

      rethrow;
    }
  }

  Future<void> uploadAppVersion(Version version) async {
    late MultipartFile file;
    if (version.versionFile!.isPicked) {
      // TODO: 이름 바꾸기
      file = MultipartFile.fromBytes(version.versionFile!.bytes!,
          filename: "test.apk");
    } else {
      file = MultipartFile.fromFileSync(version.versionFile!.path!,
          filename: "test.apk");
    }

    final formData = FormData.fromMap(
      <String, MultipartFile>{"file": file},
    );

    try {
      final response = await _dio.post(_url, data: formData);

      if (response.statusCode == 200) {
        return;
      } else {
        throw ServerException();
      }
    } on DioError catch (e) {
      if (e.response?.statusCode == 404 || e.response?.statusCode == 400) {
        throw ServerException();
      }

      if (e.type == DioErrorType.other && e is SocketException) {
        throw NoConnectionException();
      }

      if (e.type == DioErrorType.connectTimeout) {
        throw TimeoutException("no response from server");
      }

      rethrow;
    }
  }
}
