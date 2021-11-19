import 'package:frontend/core/presentation/constants/constants.dart';
import 'package:frontend/core/shared/providers.dart';
import 'package:frontend/version_check/application/app_info_notifier.dart';
import 'package:frontend/version_check/infrastructure/app_info_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final appInfoRepositoryProvider = Provider<AppInfoRepository>(
  (ref) => AppInfoRepository(
    ref.watch(dioProvider),
  ),
);

final appInfoStateNotifierProvider =
    StateNotifierProvider<AppInfoStateNotifier, AppInfoState>(
  (ref) => AppInfoStateNotifier(
    ref.watch(appInfoRepositoryProvider),
    currentVersion: LogicConstants.versionNo,
  ),
);
