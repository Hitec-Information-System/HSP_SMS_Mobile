import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'core/constant/constant.dart';

//! External
final dioProvider = Provider<Dio>(
  (ref) => Dio(
    BaseOptions(
      baseUrl: serviceServer,
      connectTimeout: 5000,
      receiveTimeout: 5000,
      responseType: ResponseType.json,
    ),
  ),
);
final connectivityProvider = Provider<Connectivity>((ref) => Connectivity());
