import 'package:dio/dio.dart';
import 'package:frontend/auth/domain/user.dart';
import 'package:frontend/auth/shared/providers.dart';
import 'package:frontend/core/infrastructure/sembast_database.dart';
import 'package:frontend/core/presentation/constants/constants.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final dioProvider = Provider<Dio>(
  (ref) => Dio(
    BaseOptions(
      baseUrl: LogicConstants.baseApiUrl,
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
