import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:frontend/auth/domain/auth_failure.dart';
import 'package:frontend/auth/domain/user.dart';
import 'package:frontend/auth/infrastructure/credentials_storage/credentials_storage.dart';
import 'package:frontend/auth/infrastructure/user_dto.dart';
import 'package:frontend/core/infrastructure/dio_extensions.dart';
import 'package:frontend/core/presentation/constants/constants.dart';

class Authenticator {
  final Dio _dio;
  final CredentialsStorage _credentialsStorage;

  const Authenticator(
    this._dio,
    this._credentialsStorage,
  );

  Future<User?> getSignedInCredentials() async {
    try {
      final storedUserDTO = await _credentialsStorage.read();
      return storedUserDTO?.toDomain();
    } on PlatformException {
      return null;
    }
  }

  Future<Either<AuthFailure, Unit>> changePassword(
    Map<String, dynamic> params,
  ) async {
    try {
      final user = await getSignedInCredentials();

      if (user == null) {
        return left(
          const AuthFailure.server("저장된 사용자 정보가 없습니다."),
        );
      }

      params["user-id"] = user.key;
      params["comp-cd"] = user.userInfo.compCd;
      params["sys-flag"] = LogicConstants.systemFlag;

      final response = await _dio.post("/pwd", data: params);

      // 응답코드가 200이 아닐 때 오류 처리
      if (response.statusCode != 200) {
        return left(const AuthFailure.server());
      }

      if ((response.data as Map<String, dynamic>)["msg"] != "OK") {
        return left(AuthFailure.server(response.data["msg"] as String));
      }

      return right(unit);
    } on DioError catch (e) {
      if (e.isNoConnectionError) {
        return left(
          const AuthFailure.server("인터넷 연결 신호가 약합니다."),
        );
      }

      if (e.type == DioErrorType.connectTimeout) {
        return left(
          const AuthFailure.server("서버 응답이 없습니다."),
        );
      }

      rethrow;
    } on FormatException {
      return left(const AuthFailure.server());
    } on PlatformException {
      return left(const AuthFailure.storage());
    }
  }

  Future<Either<AuthFailure, User>> handleAuthorizationResponse(
    Map<String, dynamic> params,
  ) async {
    try {
      // TODO: 수정 필요. api key와 함께 company code 를 return 받기 전까지는 빈값일 수 밖에 없어서 임의로 설정함.

      params["comp-cd"] = LogicConstants.compCd;
      params["sys-flag"] = LogicConstants.systemFlag;

      final response = await _dio.post("/sign-in", data: params);

      // 응답코드가 200이 아닐 때 오류 처리
      if (response.statusCode != 200) {
        return left(const AuthFailure.server());
      }

      if ((response.data as Map<String, dynamic>)["msg"] != null) {
        return left(AuthFailure.server(response.data["msg"] as String));
      }

      if (response.data != "" && response.data != null) {
        final apiKey = UserDTO.fromJson(response.data as Map<String, dynamic>);
        await _credentialsStorage.save(apiKey);
        return right(apiKey.toDomain());
      }

      // 데이터가 없을 때
      return left(
        const AuthFailure.server("아이디, 비밀번호의 조합이 맞지 않습니다."),
      );
    } on DioError catch (e) {
      if (e.isNoConnectionError) {
        return left(
          const AuthFailure.server("인터넷 연결 신호가 약합니다."),
        );
      }

      if (e.response?.statusCode == 400) {
        return left(
          const AuthFailure.server("아이디, 비밀번호의 조합이 맞지 않습니다."),
        );
      }

      if (e.type == DioErrorType.connectTimeout) {
        return left(
          const AuthFailure.server("서버 응답이 없습니다. 관리자에게 문의해주세요."),
        );
      }

      rethrow;
    } on FormatException {
      return left(const AuthFailure.server());
    } on PlatformException {
      return left(const AuthFailure.storage());
    }
  }

  Future<Either<AuthFailure, Unit>> signOut() async {
    try {
      await _credentialsStorage.clear();
      return right(unit);
    } on PlatformException {
      return left(const AuthFailure.storage());
    }
  }
}
