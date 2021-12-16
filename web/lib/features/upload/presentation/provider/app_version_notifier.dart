import 'package:cross_file/cross_file.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:web/core/constant/strings.dart';
import 'package:web/core/error/failures.dart';
import 'package:web/features/upload/domain/entity/app_version.dart';
import 'package:web/features/upload/domain/repository/i_app_version_repository.dart';
import 'package:web/features/upload/presentation/provider/app_version_event.dart';
import 'package:web/features/upload/presentation/provider/app_version_state.dart';

class AppVersionNotifier extends StateNotifier<AppVersionState> {
  final IAppVersionRepository _repository;

  AppVersionNotifier(
    this._repository,
  ) : super(
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
        final failureOrVersion = await _repository.fetchLatestInfo();
        state = failureOrVersion.fold(
          (failure) => AppVersionState.failure(
              state.version, _mapFailureToMessage(failure)),
          (newVersion) => AppVersionState.loaded(newVersion),
        );
      },
      addFileToDomain: (value) {
        state = AppVersionState.fileAdded(
          state.version.copyWith(
            file: XFile(value.path),
          ),
        );
      },
      saveNewVersion: (_) async {
        if (state.version.file == null) {
          state =
              AppVersionState.failure(state.version, missingFileFailrueMessage);
          return;
        }

        final failureOrUnit = await _repository.saveAppVersion(state.version);
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
