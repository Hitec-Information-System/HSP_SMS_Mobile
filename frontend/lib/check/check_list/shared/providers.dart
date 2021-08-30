import 'package:frontend/auth/shared/providers.dart';
import 'package:frontend/check/check_list/application/check_standard_notifier.dart';
import 'package:frontend/check/check_list/infrastructure/check_standard_remote_service.dart';
import 'package:frontend/check/check_list/infrastructure/check_standard_repository.dart';
import 'package:frontend/core/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final checkStandardRemoteServiceProvider = Provider(
  (ref) => CheckStandardRemoteService(
    ref.watch(dioProvider),
    ref.watch(authenticatorProvider),
  ),
);

final checkStandardRepositoryProvider = Provider(
  (ref) => CheckStandardRepository(
    ref.watch(checkStandardRemoteServiceProvider),
  ),
);

final checkStandardNotifierProvider =
    StateNotifierProvider<CheckStandardNotifier, CheckStandardState>(
  (ref) => CheckStandardNotifier(
    ref.watch(checkStandardRepositoryProvider),
  ),
);
