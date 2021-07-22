import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:frontend/auth/domain/auth_failure.dart';
import 'package:oauth2/oauth2.dart';
import 'package:http/http.dart' as http;

import 'package:frontend/auth/infrastructure/credentials_storage/credentials_storage.dart';
import 'package:frontend/core/infrastructure/dio_extensions.dart';

class OAuthHttpClient extends http.BaseClient {
  final httpClient = http.Client();
  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    request.headers["Accept"] = "application/json";
    return httpClient.send(request);
  }
}

class Authenticator {
  final Dio _dio;
  final CredentialsStorage _credentialsStorage;

  Authenticator(
    this._dio,
    this._credentialsStorage,
  );

  // client id, secret 정의
  static const clientId = 'clientId';
  static const clientSecret = 'testRefreshToken';

  static const scopes = ["write", "read"];

  Future<Credentials?> getSignedInCredentials() async {
    try {
      final storedCredentials = await _credentialsStorage.read();

      if (storedCredentials != null) {
        if (storedCredentials.canRefresh && storedCredentials.isExpired) {
          final failureOrCredentials = await refresh(storedCredentials);
          return failureOrCredentials.fold((l) => null, (r) => r);
        }
      }
      return storedCredentials;
    } on PlatformException {
      return null;
    }
  }

  Future<bool> isSignedIn() =>
      getSignedInCredentials().then((credentials) => credentials != null);

  Future<Either<AuthFailure, Unit>> handleAuthorizationResponse(
    Map<String, dynamic> params,
  ) async {
    try {
      final response = await _dio.post("/sign-in", data: params);

      // 응답코드가 200이 아닐 때 오류 처리
      if (response.statusCode != 200) {
        return left(const AuthFailure.server());
      }

      if (response.data != "" && response.data != null) {
        final credentials = Credentials.fromJson(json.encode(response.data));
        await _credentialsStorage.save(credentials);
        return right(unit);
      }

      // 데이터가 없을 때
      return left(
        const AuthFailure.server("Invalid combinations of id and password"),
      );
    } on FormatException {
      return left(const AuthFailure.server());
    } on AuthorizationException catch (e) {
      return left(AuthFailure.server("${e.error}: ${e.description}"));
    } on PlatformException {
      return left(const AuthFailure.storage());
    }
  }

  Future<Either<AuthFailure, Credentials>> refresh(
    Credentials credentials,
  ) async {
    try {
      Credentials? refreshedCredentials;

      final response = await _dio.post("/token",
          options: Options(
            headers: {"Authorization": "bearer ${credentials.accessToken}"},
          ),
          data: {"refresh_token": credentials.refreshToken});

      if (response.statusCode != 201) {
        return left(const AuthFailure.server());
      }

      if (response.data == "" || response.data == null) {
        return left(const AuthFailure.server());
      }

      // TODO: json 변환하지 않고 변환 방법 추가
      refreshedCredentials = Credentials.fromJson(json.encode(response.data));

      if (refreshedCredentials == null) {
        return left(const AuthFailure.server());
      }

      await _credentialsStorage.save(refreshedCredentials);
      return right(refreshedCredentials);
    } on FormatException {
      return left(const AuthFailure.server());
    } on AuthorizationException catch (e) {
      return left(AuthFailure.server("${e.error}:${e.description}"));
    } on PlatformException {
      return left(const AuthFailure.storage());
    }
  }

  Future<Either<AuthFailure, Unit>> signOut() async {
    try {
      try {
        final accessToken = await _credentialsStorage
            .read()
            .then((value) => value?.accessToken ?? "");

        await _dio.delete(
          "/sign-out",
          options: Options(
            headers: {
              "Authorization": "bearer $accessToken",
              "content-type": "application/json"
            },
          ),
        );
      } on DioError catch (e) {
        if (e.isNoConnectionError) {
        } else {
          rethrow;
        }
      }
      await _credentialsStorage.clear();
      return right(unit);
    } on PlatformException {
      return left(const AuthFailure.storage());
    }
  }
}
