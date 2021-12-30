import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:web/core/network/network_info.dart';
import 'package:web/features/upload/data/datasource/remote/app_version_remote_datasource.dart';
import 'package:web/features/upload/data/datasource/remote/i_app_version_remote_datasource.dart';
import 'package:web/features/upload/data/repository/app_version_repository.dart';
import 'package:web/features/upload/domain/repository/i_app_version_repository.dart';
import 'package:web/features/upload/presentation/provider/app_version_notifier.dart';
import 'package:web/features/upload/presentation/provider/app_version_state.dart';

//! External
final dioProvider = Provider<Dio>(
  (ref) => Dio(
    BaseOptions(
      // TODO: baseUrl constants로 관리하기
      baseUrl: "http://192.168.0.117:9110",
      connectTimeout: 5000,
      receiveTimeout: 5000,
      responseType: ResponseType.json,
    ),
  ),
);
final connectivityProvider = Provider<Connectivity>((ref) => Connectivity());

//! Core
// final networkInfoProvider = Provider<NetworkInfo>(
//   (ref) => NetworkInfoConnectivityAdapter(ref.watch(connectivityProvider)),
// );

//! Feature
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
