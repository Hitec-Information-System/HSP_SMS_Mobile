import 'package:frontend/auth/domain/user.dart';
import 'package:frontend/core/shared/providers.dart';
import 'package:frontend/menus/monitor/core/application/check_monitor_notifier.dart';
import 'package:frontend/menus/monitor/core/infrastructure/check_monitor_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const buildingFlag = "BUILDING";
const lineFlag = "LINE";
const forkliftFlag = "FORKLIFT";

final checkMonitRepositoryProvider = Provider(
  (ref) => CheckMonitorRepository(
    ref.watch(dioProvider),
  ),
);

final buildingMonitStateNotifierProvider =
    StateNotifierProvider<CheckMonitorStateNotifier, CheckMonitorState>(
  (ref) => CheckMonitorStateNotifier(
    ref.watch(checkMonitRepositoryProvider),
    ref.watch(
      userProvider.select((value) => value ?? User.empty()),
    ),
    buildingFlag,
  ),
);

final lineMonitStateNotifierProvider =
    StateNotifierProvider<CheckMonitorStateNotifier, CheckMonitorState>(
  (ref) => CheckMonitorStateNotifier(
    ref.watch(checkMonitRepositoryProvider),
    ref.watch(
      userProvider.select((value) => value ?? User.empty()),
    ),
    lineFlag,
  ),
);

final forkliftMonitStateNotifierProvider =
    StateNotifierProvider<CheckMonitorStateNotifier, CheckMonitorState>(
  (ref) => CheckMonitorStateNotifier(
    ref.watch(checkMonitRepositoryProvider),
    ref.watch(
      userProvider.select((value) => value ?? User.empty()),
    ),
    forkliftFlag,
  ),
);
