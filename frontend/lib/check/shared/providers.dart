import 'package:frontend/auth/domain/user.dart';
import 'package:frontend/check/application/check_info_notifier.dart';
import 'package:frontend/check/domain/check_info.dart';
import 'package:frontend/check/infrastructure/check_info_repository.dart';
import 'package:frontend/check/infrastructure/local/check_info_local_service.dart';
import 'package:frontend/check/infrastructure/remote/check_info_remote_service.dart';
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
    ref.watch(
      userProvider.select((value) => value ?? User.empty()),
    ),
  ),
);

final checkHeaderNotifierProvider =
    StateNotifierProvider.autoDispose<CheckHeaderNotifier, CheckHeader>(
  (ref) => CheckHeaderNotifier(
    ref.watch(
      checkInfoStateNotifierProvider.select((state) => state.info.header),
    ),
  ),
);

final checkDetailsProvider =
    StateNotifierProvider.autoDispose<CheckDetailsNotifier, List<CheckDetails>>(
  (ref) => CheckDetailsNotifier(
    ref.watch(
      checkInfoStateNotifierProvider.select((state) => state.info.details),
    ),
    ref.watch(imagePickerProvider),
  ),
);
