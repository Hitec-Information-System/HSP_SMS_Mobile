import 'package:frontend/check/check_serial/application/check_serial_notifier.dart';
import 'package:frontend/check/check_serial/infrastructure/check_serial_loader.dart';
import 'package:frontend/check/check_serial/infrastructure/remote/remote_check_serial_loader.dart';
import 'package:frontend/core/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final remoteCheckSerialLoaderProvider = Provider<CheckSerialLoader>(
  (ref) => RemoteCheckSerialLoader(
    ref.watch(dioProvider),
  ),
);

final checkSerialNotifierProvider =
    StateNotifierProvider<CheckSerialNotifier, CheckSerialState>(
  (ref) => CheckSerialNotifier(
    ref.watch(remoteCheckSerialLoaderProvider),
  ),
);
