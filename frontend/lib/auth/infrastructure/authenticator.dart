import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:frontend/auth/domain/auth_failure.dart';
import 'package:frontend/auth/domain/api_key.dart';
import 'package:frontend/auth/infrastructure/api_key_dto.dart';

import 'package:frontend/auth/infrastructure/credentials_storage/credentials_storage.dart';
import 'package:frontend/core/presentation/constants/constants.dart';

class Authenticator {
  final Dio _dio;
  final CredentialsStorage _credentialsStorage;

  const Authenticator(
    this._dio,
    this._credentialsStorage,
  );

  Future<APIKey?> getSignedInCredentials() async {
    try {
      final storedAPIKeyDTO = await _credentialsStorage.read();
      return storedAPIKeyDTO?.toDomain();
    } on PlatformException {
      return null;
    }
  }

  Future<bool> isSignedIn() =>
      getSignedInCredentials().then((key) => key != null);

  Future<Either<AuthFailure, APIKey>> handleAuthorizationResponse(
    Map<String, dynamic> params,
  ) async {
    try {
      params["compCd"] = LogicConstants.companyCd;
      params["sysFlag"] = LogicConstants.systemFlag;

      final response = await _dio.post("/sign-in", data: params);

      // 응답코드가 200이 아닐 때 오류 처리
      if (response.statusCode != 200) {
        return left(const AuthFailure.server());
      }

      if (response.data != "" && response.data != null) {
        final apiKey =
            ApiKeyDTO.fromJson(response.data as Map<String, dynamic>);
        await _credentialsStorage.save(apiKey);
        return right(apiKey.toDomain());
      }

      // 데이터가 없을 때
      return left(
        const AuthFailure.server("Invalid combinations of id and password"),
      );
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
