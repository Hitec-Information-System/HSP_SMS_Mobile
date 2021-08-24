import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const String baseUrl = "http://192.168.0.117:8080";

final dioProvider = Provider(
  (ref) => Dio(
    BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: 5000,
      receiveTimeout: 5000,
    ),
  ),
);
