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

  static final revocationEndpoint =
      Uri.parse("http://localhost:8080/token/refresh");

  static final authorizationEndpoint = Uri.parse("http://localhost:8080/login");
  static final tokenEndpoint = Uri.parse("http://localhost:8080/token");

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

  AuthorizationCodeGrant createGrant() {
    return AuthorizationCodeGrant(
      clientId,
      authorizationEndpoint,
      tokenEndpoint,
      secret: clientSecret,
      httpClient: OAuthHttpClient(),
    );
  }

  Future<bool> isSignedIn() =>
      getSignedInCredentials().then((credentials) => credentials != null);

  Future<Either<AuthFailure, Unit>> handleAuthorizationResponse(
    AuthorizationCodeGrant grant,
    Map<String, String> queryParams,
  ) async {
    try {
      // Unit : void를 return 하고 싶을 때 사용
      // redirect 받은 정보를 포함하고 있게 됨
      final httpClient = await grant.handleAuthorizationResponse(
          queryParams); // return client => access token 을 원하는데 왜 나오는가?
      // authorization header를 가지게 됨
      // dio package를 사용하기 위해서 바꿔줘야함
      await _credentialsStorage.save(httpClient.credentials);
      return right(unit);
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
        _dio.deleteUri(
          revocationEndpoint,
          options: Options(
            headers: {
              "Authorization":
                  "bearer ${_credentialsStorage.read().then((value) => value?.accessToken ?? "")}"
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
