import 'package:dio/dio.dart';
import 'package:web/core/error/exceptions.dart';
import 'package:web/features/upload/data/datasource/remote/i_app_version_remote_datasource.dart';
import 'package:web/features/upload/domain/entity/app_version.dart';
import 'package:web/features/upload/data/model/app_version_model.dart';
import 'package:web/core/extensions/dio_extensions.dart';

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
        throw ApiException();
      }
      rethrow;
    }
  }

  @override
  Future<bool> saveAppVersion(AppVersion newVersion) async {
    try {
      final formData = FormData();
      final versionFile = MultipartFile.fromFileSync(
        newVersion.file!.path,
        filename: newVersion.file!.name,
      );
      formData.files.add(MapEntry("file", versionFile));

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
        throw ApiException();
      }
      rethrow;
    }
  }
}
