import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:web/core/constant/strings.dart';
import 'package:web/core/error/failures.dart';
import 'package:web/core/usecases/usecase.dart';
import 'package:web/features/upload/domain/entity/app_version.dart';
import 'package:web/features/upload/domain/use_case/fetch_latest_info.dart';
import 'package:web/features/upload/domain/use_case/save_app_version.dart';
import 'package:web/features/upload/presentation/provider/app_version_event.dart';
import 'package:web/features/upload/presentation/provider/app_version_state.dart';

class AppVersionNotifier extends StateNotifier<AppVersionState> {
  final FetchLatestFileInfo fetchLatestFileInfo;
  final SaveAppVersion saveAppVersion;

  AppVersionNotifier({
    required this.fetchLatestFileInfo,
    required this.saveAppVersion,
  }) : super(
          const AppVersionState.empty(
            AppVersion(
              info: AppVersionInfo(major: -1, minor: -1, patch: -1),
            ),
          ),
        );

  Future<void> mapEventToState(AppVersionEvent event) async {
    event.map(
      getLatestInfo: (_) async {
        state = AppVersionState.loading(state.version);
        final failureOrVersion = await fetchLatestFileInfo(const NoParams());
        state = failureOrVersion.fold(
          (failure) => AppVersionState.failure(
              state.version, _mapFailureToMessage(failure)),
          (newVersion) => AppVersionState.loaded(newVersion),
        );
      },
      addFileToDomain: (value) {
        state =
            AppVersionState.fileAdded(state.version.copyWith(file: value.file));
      },
      saveNewVersion: (value) async {
        final failureOrUnit =
            await saveAppVersion(Params(version: value.newVersion));
        state = failureOrUnit.fold(
          (failure) => AppVersionState.failure(
              state.version, _mapFailureToMessage(failure)),
          (newUnit) => AppVersionState.saved(state.version),
        );
      },
    );
  }

  String _mapFailureToMessage(Failure failure) {
    return failure.map(
      serverFailure: (_) => serverNoResponseFailureMessage,
      cacheFailure: (_) => cacheFailureMessage,
      invalidInputFailure: (_) => invalidInputFailureMessage,
      connectionFailure: (_) => connectionFailureMessage,
      apiFailure: (_) => apiFailureMessage,
    );
  }
}
