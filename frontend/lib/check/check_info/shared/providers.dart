import 'package:frontend/check/check_info/application/check_info_notifier.dart';
import 'package:frontend/check/check_info/infrastructure/check_info_repository.dart';
import 'package:frontend/check/check_info/infrastructure/local/check_info_local_service.dart';
import 'package:frontend/check/check_info/infrastructure/remote/check_info_remote_service.dart';
import 'package:frontend/core/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

final checkInfoLocalServiceProvider =
    Provider.autoDispose<CheckInfoLocalService>(
  (ref) => CheckInfoLocalService(
    ref.watch(sembastProvider),
  ),
);

final checkInfoRemoteServiceProvider =
    Provider.autoDispose<CheckInfoRemoteService>(
  (ref) => CheckInfoRemoteService(
    ref.watch(dioProvider),
  ),
);

final checkInfoRepositoryProvider = Provider.autoDispose<CheckInfoRepository>(
  (ref) => CheckInfoRepository(
    ref.watch(checkInfoLocalServiceProvider),
    ref.watch(checkInfoRemoteServiceProvider),
  ),
);

final imagePickerProvider = Provider.autoDispose<ImagePicker>(
  (ref) => ImagePicker(),
);

final checkInfoStateNotifierProvider =
    StateNotifierProvider.autoDispose<CheckInfoStateNotifier, CheckInfoState>(
  (ref) => CheckInfoStateNotifier(
    ref.watch(checkInfoRepositoryProvider),
    ref.watch(imagePickerProvider),
  ),
);
