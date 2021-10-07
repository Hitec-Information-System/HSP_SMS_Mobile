import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:frontend/auth/domain/user.dart';
import 'package:frontend/auth/domain/auth_failure.dart';
import 'package:frontend/auth/infrastructure/user_dto.dart';
import 'package:frontend/auth/infrastructure/credentials_storage/credentials_storage.dart';
import 'package:frontend/core/presentation/constants/constants.dart';

import 'package:frontend/core/infrastructure/dio_extensions.dart';

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

  Future<Either<AuthFailure, User>> handleAuthorizationResponse(
    Map<String, dynamic> params,
  ) async {
    try {
      // TODO: hard-coded Company Code
      params["comp-cd"] = "3000";
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
