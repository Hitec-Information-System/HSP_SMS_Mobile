import 'package:dio/dio.dart';
import 'package:web/core/error/exceptions.dart';
import 'package:web/features/auth/infrastructure/datasource/i_auth_remote_datasource.dart';
import 'package:web/core/extensions/dio_extensions.dart';

class AuthRemoteDatasource implements IAuthRemoteDatasource {
  final Dio _dio;
  const AuthRemoteDatasource(
    this._dio,
  );

  @override
  Future<bool> validateUser(Map<String, dynamic> params) async {
    try {
      final response = await _dio.post("/auth", data: params);
      final result = response.data as Map<String, dynamic>;

      if (result["msg"] == "OK") {
        return true;
      }

      return false;
    } on DioError catch (e) {
      if (e.isNoConnectionError) {
        throw ConnectionException();
      }

      if (e.response?.statusCode != 200) {
        throw ApiException();
      }

      if (e.type == DioErrorType.connectTimeout) {
        throw ServerException();
      }
      rethrow;
    }
  }
}
