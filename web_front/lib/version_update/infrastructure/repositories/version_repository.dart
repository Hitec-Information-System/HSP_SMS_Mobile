import 'dart:async';
import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:web_front/core/error/exceptions.dart';
import 'package:web_front/core/error/failure.dart';
import 'package:web_front/core/network/network_info.dart';
import 'package:web_front/version_update/domain/version.dart';
import 'package:web_front/version_update/infrastructure/datasources/version_remote_data_source.dart';

class VersionRepository {
  final VersionRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  const VersionRepository({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  Future<Either<Failure, Version>> fetchVersion() async {
    if (await networkInfo.isConnected) {
      try {
        final data = await remoteDataSource.getAppVersion();
        return right(data.toDomain());
      } on ServerException {
        return left(const Failure.api());
      } on TimeoutException {
        return left(const Failure.timeout());
      }
    } else {
      return left(const Failure.noConnection());
    }
  }

  Future<Either<Failure, Unit>> uploadVersion(Uint8List bytes) async {
    if (await networkInfo.isConnected) {
      try {
        await remoteDataSource.uploadAppVersion(bytes);
        return right(unit);
      } on ServerException {
        return left(const Failure.api());
      } on TimeoutException {
        return left(const Failure.timeout());
      }
    } else {
      return left(const Failure.noConnection());
    }
  }

  // Future<Either<Failure, Version>> fetchVersion() async {
  //   try {
  //     final response = await _dio.get("/apk");
  //     final data = response.data as Map<String, dynamic>;
  //     if (response.statusCode == 200) {
  //       return right(VersionDTO.fromJson(data).toDomain());
  //     } else {
  //       return left(Failure.api(data["MSG"] as String));
  //     }
  //   } on DioError catch (e) {
  //     if (e.type == DioErrorType.other && e is SocketException) {
  //       return left(const Failure.noConnection());
  //     }

  //     if (e.type == DioErrorType.connectTimeout) {
  //       return left(const Failure.api("server timeout"));
  //     }

  //     rethrow;
  //   }
  // }

  // Future<Either<Failure, Unit>> uploadVersion(Uint8List bytes) async {
  //   try {
  //     final formData = FormData()
  //       ..files.add(MapEntry("file", MultipartFile.fromBytes(bytes)));

  //     final response = await _dio.post("/apk", data: formData);
  //     final data = response.data as Map<String, dynamic>;
  //     if (response.statusCode == 200) {
  //       return right(unit);
  //     } else {
  //       return left(Failure.api(data["MSG"] as String));
  //     }
  //   } on DioError catch (e) {
  //     if (e.type == DioErrorType.other && e is SocketException) {
  //       return left(const Failure.noConnection());
  //     }

  //     if (e.type == DioErrorType.connectTimeout) {
  //       return left(const Failure.api("server timeout"));
  //     }

  //     rethrow;
  //   }
  // }
}
