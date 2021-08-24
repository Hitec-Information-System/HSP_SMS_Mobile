import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:frontend/auth/domain/auth_failure.dart';
import 'package:frontend/auth/domain/user.dart';
import 'package:frontend/auth/infrastructure/user_dto.dart';

import 'package:frontend/auth/infrastructure/credentials_storage/credentials_storage.dart';

class Authenticator {
  final Dio _dio;
  final CredentialsStorage _credentialsStorage;

  Authenticator(
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
        final user = UserDTO.fromJson(response.data as Map<String, dynamic>);
        await _credentialsStorage.save(user);
        return right(unit);
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
