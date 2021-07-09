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
  static const clientSecret = 'clientSecret';

  static const scopes = ["write", "read"];

  static final revocationEndpoint = Uri.parse("http://localhost:3000/sign-out");

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

      if (response.statusCode != 200) {
        return left(const AuthFailure.server());
      } else {
        if (response.data != "" && response.data != null) {
          final credentials = Credentials.fromJson(response.data as String);
          await _credentialsStorage.save(credentials);
          return right(unit);
        }

        return left(const AuthFailure.invalidIdPwd(
            "invalid combinations of id and password"));
      }
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
      final refreshedCredentials = await credentials.refresh(
        httpClient: OAuthHttpClient(),
      );
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
