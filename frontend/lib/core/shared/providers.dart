import 'package:dio/dio.dart';
import 'package:frontend/auth/domain/user.dart';
import 'package:frontend/auth/shared/providers.dart';
import 'package:frontend/core/infrastructure/sembast_database.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const String baseUrl = "http://ss.hitecis.co.kr:9110";
// const String baseUrl = "http://192.168.0.117:9110";

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

final userProvider = Provider<User?>(
  (ref) => ref.watch(authNotifierProvider).maybeWhen(
        authenticated: (user) => user,
        orElse: () => null,
      ),
);
