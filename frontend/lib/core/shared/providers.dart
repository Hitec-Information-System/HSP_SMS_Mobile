import 'package:dio/dio.dart';
import 'package:frontend/auth/domain/api_key.dart';
import 'package:frontend/auth/shared/providers.dart';
import 'package:frontend/core/infrastructure/sembast_database.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// const String baseUrl = "http://ss.hitecis.co.kr:9110";
const String baseUrl = "http://192.168.0.117:9110";

final dioProvider = Provider<Dio>(
  (ref) => Dio(
    BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: 5000,
      receiveTimeout: 5000,
    ),
  ),
);

final sembastProvider = Provider<SembastDatabase>(
  (ref) => SembastDatabase(),
);

final tokenProvider = Provider<APIKey?>(
  (ref) => ref.watch(authNotifierProvider).maybeWhen(
        authenticated: (auth) => auth,
        orElse: () => null,
      ),
);
