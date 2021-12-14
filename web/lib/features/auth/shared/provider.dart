import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:web/features/auth/application/auth_notifier.dart';
import 'package:web/features/auth/domain/repository/i_auth_repository.dart';
import 'package:web/features/auth/infrastructure/datasource/auth_remote_datasource.dart';
import 'package:web/features/auth/infrastructure/datasource/i_auth_remote_datasource.dart';
import 'package:web/features/auth/infrastructure/repository/auth_repository.dart';
import 'package:web/provider.dart';

final authRemotedatasourceProvider = Provider<IAuthRemoteDatasource>(
  (ref) => AuthRemoteDatasource(
    ref.watch(dioProvider),
  ),
);

final authRepositoryProvider = Provider<IAuthRepsitory>(
  (ref) => AuthRepository(ref.watch(authRemotedatasourceProvider)),
);

final authStateNotifierProvider =
    StateNotifierProvider<AuthStateNotifier, AuthState>(
  (ref) => AuthStateNotifier(ref.watch(authRepositoryProvider)),
);
