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
              lastInfo: AppVersionInfo(major: -1, minor: -1, patch: -1),
            ),
          ),
        );

  Future<void> mapEventToState(AppVersionEvent event) async {
    event.map(
      getLatestInfo: (_) async {
        final failureOrVersion = await _repository.fetchLatestInfo();
        state = failureOrVersion.fold(
          (failure) => AppVersionState.failure(
              state.version, _mapFailureToMessage(failure)),
          (newVersion) => AppVersionState.infoLoaded(newVersion),
        );
      },
      addFileToDomain: (value) {
        state = AppVersionState.fileAdded(
          state.version.copyWith(
            file: XFile(value.path),
          ),
        );
      },
      cancelAddFile: (_) {
        _cancelAddFile();
      },
      saveNewVersion: (_) async {
        if (!_hasHigherVersionNo) {
          state = AppVersionState.failure(
              state.version, invalidVersionFailrueMessage);
          return;
        }

        if (!_hasUploadFile) {
          state = AppVersionState.failure(state.version, noFileFailrueMessage);
          return;
        }

        final failureOrUnit = await _repository.saveAppVersion(state.version);
        state = failureOrUnit.fold(
          (failure) => AppVersionState.failure(
              state.version, _mapFailureToMessage(failure)),
          (_) => AppVersionState.saved(state.version),
        );
      },
      changeVersionNo: (value) {
        _changeVersionNo(newInfo: value.info);
      },
    );
  }

  void _changeVersionNo({required AppVersionInfo newInfo}) {
    state = state.copyWith(
      version: state.version.copyWith(
        info: newInfo,
      ),
    );
  }

  void _cancelAddFile() {
    state = AppVersionState.infoLoaded(
      state.version.copyWith(
        file: null,
      ),
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

  bool get _hasUploadFile => state.version.file != null;

  // major, minor, patch 셋 중 이전보다 하나라도 크면 큰 버전이다
  bool get _hasHigherVersionNo {
    return state.version.info.major > state.version.lastInfo.major ||
        state.version.info.minor > state.version.lastInfo.minor ||
        state.version.info.patch > state.version.lastInfo.patch;
  }
}
