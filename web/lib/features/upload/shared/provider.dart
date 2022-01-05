import 'package:file_picker/file_picker.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:web/features/upload/application/app_version_notifier.dart';
import 'package:web/features/upload/application/app_version_state.dart';
import 'package:web/features/upload/domain/repository/i_app_version_repository.dart';
import 'package:web/features/upload/infrastructure/datasource/remote/app_version_remote_datasource.dart';
import 'package:web/features/upload/infrastructure/datasource/remote/i_app_version_remote_datasource.dart';
import 'package:web/features/upload/infrastructure/repository/app_version_repository.dart';
import 'package:web/provider.dart';

final appVersionRemoteDataSourceProvider =
    Provider.autoDispose<IAppVersionRemoteDatasource>(
  (ref) => AppVersionRemoteDatasource(ref.watch(dioProvider)),
);

final appVersionRepositoryProvider =
    Provider.autoDispose<IAppVersionRepository>(
  (ref) => AppVersionRepository(
    ref.watch(appVersionRemoteDataSourceProvider),
  ),
);

final filePickerProvider = Provider.autoDispose(
  (ref) => FilePicker.platform,
);

final appVersionStateNotifierProvider =
    StateNotifierProvider.autoDispose<AppVersionNotifier, AppVersionState>(
  (ref) => AppVersionNotifier(
    ref.watch(appVersionRepositoryProvider),
    ref.watch(filePickerProvider),
  ),
);
