import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:web/core/network/network_info.dart';
import 'package:web/features/upload/data/datasource/remote/app_version_remote_datasource.dart';
import 'package:web/features/upload/data/datasource/remote/i_app_version_remote_datasource.dart';
import 'package:web/features/upload/data/repository/app_version_repository.dart';
import 'package:web/features/upload/domain/repository/i_app_version_repository.dart';
import 'package:web/features/upload/domain/use_case/fetch_latest_info.dart';
import 'package:web/features/upload/domain/use_case/save_app_version.dart';
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
      responseType: ResponseType.plain,
    ),
  ),
);
final connectivityProvider = Provider<Connectivity>((ref) => Connectivity());

//! Core
final networkInfoProvider = Provider<NetworkInfo>(
  (ref) => NetworkInfoConnectivityAdapter(ref.watch(connectivityProvider)),
);

//! Feature
final appVersionRemoteDataSourceProvider =
    Provider<IAppVersionRemoteDatasource>(
  (ref) => AppVersionRemoteDatasource(ref.watch(dioProvider)),
);

final appVersionRepositoryProvider = Provider<IAppVersionRepository>(
  (ref) => AppVersionRepository(
    ref.watch(appVersionRemoteDataSourceProvider),
    ref.watch(networkInfoProvider),
  ),
);

final fetchLatestInfoProvider = Provider<FetchLatestFileInfo>(
  (ref) => FetchLatestFileInfo(ref.watch(appVersionRepositoryProvider)),
);

final saveAppVersionProvider = Provider<SaveAppVersion>(
  (ref) => SaveAppVersion(ref.watch(appVersionRepositoryProvider)),
);

final appVersionStateNotifierProvider =
    StateNotifierProvider<AppVersionNotifier, AppVersionState>(
  (ref) => AppVersionNotifier(
    fetchLatestFileInfo: ref.watch(fetchLatestInfoProvider),
    saveAppVersion: ref.watch(saveAppVersionProvider),
  ),
);
