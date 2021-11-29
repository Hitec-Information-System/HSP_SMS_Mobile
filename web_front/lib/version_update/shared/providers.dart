import 'package:file_picker/file_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:web_front/core/shared/providers.dart';
import 'package:web_front/version_update/application/version_notifier.dart';
import 'package:web_front/version_update/infrastructure/datasources/version_remote_data_source.dart';
import 'package:web_front/version_update/infrastructure/repositories/version_repository.dart';

final versionRemoteDataSourceProvider =
    Provider.autoDispose<VersionRemoteDataSource>(
  (ref) => VersionRemoteDataSource(ref.watch(dioProvider)),
);

final versionRepositoryProvider = Provider.autoDispose<VersionRepository>(
  (ref) => VersionRepository(
    remoteDataSource: ref.watch(versionRemoteDataSourceProvider),
    networkInfo: ref.watch(networkInfoProvider),
  ),
);

final filePickerProvider = Provider.autoDispose<FilePicker>(
  (ref) => FilePicker.platform,
);

final versionStateNotifierProvider =
    StateNotifierProvider.autoDispose<VersionStateNotifier, VersionState>(
  (ref) => VersionStateNotifier(
    ref.watch(versionRepositoryProvider),
    ref.watch(filePickerProvider),
  ),
);
