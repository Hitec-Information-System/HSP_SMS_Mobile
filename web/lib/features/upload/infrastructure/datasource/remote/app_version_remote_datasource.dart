import 'package:dio/dio.dart';
import 'package:web/core/error/exceptions.dart';
import 'package:web/features/upload/domain/entity/app_version.dart';
import 'package:web/core/extensions/dio_extensions.dart';
import 'package:web/features/upload/infrastructure/model/app_version_model.dart';

import 'i_app_version_remote_datasource.dart';

class AppVersionRemoteDatasource implements IAppVersionRemoteDatasource {
  final Dio _dio;

  const AppVersionRemoteDatasource(this._dio);

  @override
  Future<AppVersionModel> getAppVersion() async {
    try {
      final response = await _dio.get("/apk");
      return AppVersionModel.fromJson(response.data as Map<String, dynamic>);
    } on DioError catch (e) {
      if (e.isNoConnectionError) {
        throw ConnectionException();
      }
      if (e.type == DioErrorType.connectTimeout) {
        throw ServerException();
      }
      if (e.response?.statusCode != 200) {
        throw ApiException(e.message);
      }
      rethrow;
    }
  }

  @override
  Future<bool> saveAppVersion(AppVersion newVersion) async {
    try {
      final fileName =
          newVersion.file!.name == "" ? "app.apk" : newVersion.file!.name;

      final formData = FormData.fromMap(
        {
          "app-version": newVersion.versionNo.toString(),
          "file-name": fileName,
          "app-name": newVersion.name,
        },
      );

      final versionParams = <MapEntry<String, MultipartFile>>[];

      final versionFile = MultipartFile.fromBytes(
        await newVersion.file!.readAsBytes(),
        filename: fileName,
      );

      versionParams.add(MapEntry("file", versionFile));

      formData.files.addAll(versionParams);

      final _ = await _dio.post("/apk", data: formData);
      return true;
    } on DioError catch (e) {
      if (e.isNoConnectionError) {
        throw ConnectionException();
      }
      if (e.type == DioErrorType.connectTimeout) {
        throw ServerException();
      }
      if (e.response?.statusCode != 200) {
        throw ApiException(e.message);
      }
      rethrow;
    }
  }
}
