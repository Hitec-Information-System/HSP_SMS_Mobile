import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:frontend/check/check_serial/domain/check_serial_failure.dart';
import 'package:frontend/check/check_serial/domain/check_serial.dart';
import 'package:dartz/dartz.dart';
import 'package:frontend/check/check_serial/infrastructure/check_serial_loader.dart';

class RemoteCheckSerialLoader extends CheckSerialLoader {
  final Dio _dio;

  RemoteCheckSerialLoader(this._dio);

  @override
  Future<Either<CheckSerialFailure, CheckSerial>> getSerial(
      String tagId) async {
    final response = await _dio.get("/tag", queryParameters: {"id": tagId});
    if (response.statusCode != 200) {
      return left(CheckSerialFailure.serverError(
          response.statusMessage ?? "unknown error"));
    }

    final data = response.data as Map<String, dynamic>;

    if (data.isEmpty) {
      return left(const CheckSerialFailure.notFound());
    }

    return right(CheckSerial.fromJson(data));
  }
}
