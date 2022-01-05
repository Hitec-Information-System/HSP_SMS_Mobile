import 'package:cross_file/cross_file.dart';
import 'package:file_picker/file_picker.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:web/core/constant/constant.dart';
import 'package:web/core/error/failures.dart';
import 'package:web/features/upload/domain/entity/app_version.dart';
import 'package:web/features/upload/domain/repository/i_app_version_repository.dart';

import 'app_version_event.dart';
import 'app_version_state.dart';

class AppVersionNotifier extends StateNotifier<AppVersionState> {
  final IAppVersionRepository _repository;
  final FilePicker _picker;

  AppVersionNotifier(
    this._repository,
    this._picker,
  ) : super(
          const AppVersionState.empty(
            AppVersion(
              name: "",
              versionNo: AppVersionSementicNo(
                  majorNum: -1, minorNum: -1, patchNum: -1),
              lastVersionNo: AppVersionSementicNo(
                  majorNum: -1, minorNum: -1, patchNum: -1),
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
          (newVersion) => AppVersionState.edit(newVersion),
        );
      },
      dropFileToDomain: (value) {
        state = AppVersionState.edit(
          state.version.copyWith(
            file: value.file,
          ),
        );
      },
      pickFileToDomain: (_) {
        _pickFile();
      },
      cancelAddFile: (_) {
        _backToEditInit();
      },
      saveNewVersion: (_) {
        _saveNewVersion();
      },
      changeVersionNo: (value) {
        _changeVersionNo(newVersionNo: value.info);
      },
    );
  }

  // 첨부하려는 파일의 갯수, 확장자가 맞는지 확인
  bool canAddFile(List<XFile> files) {
    if (files.length != 1) {
      state =
          AppVersionState.failure(state.version, tooManyFilesFailureMessage);
      return false;
    }

    final fileNameChunk = files[0].name.split(".");
    final fileExtension = fileNameChunk[fileNameChunk.length - 1];

    if (fileExtension != "apk") {
      state = AppVersionState.failure(
          state.version, invalidFileExtensionFailureMessage);
      return false;
    }

    return true;
  }

  bool get canSave {
    if (!_hasHigherVersionNo(state.version.versionNo)) {
      state =
          AppVersionState.failure(state.version, invalidVersionFailrueMessage);
      return false;
    }

    if (!_hasUploadFile) {
      state = AppVersionState.failure(state.version, noFileFailrueMessage);
      return false;
    }

    if (!_isValidAppName) {
      state =
          AppVersionState.failure(state.version, invalidAppNameFailureMessage);
      return false;
    }

    return true;
  }

  bool get _isValidAppName => state.version.name != "";

  Future<void> _pickFile() async {
    final result = await _picker.pickFiles(
      type: FileType.custom,
      allowedExtensions: ["apk"],
    );

    if (result == null) {
      return;
    }

    final file = XFile.fromData(result.files.single.bytes!);
    state = AppVersionState.edit(state.version.copyWith(file: file));
  }

  void setAppName(String appName) {
    state = AppVersionState.edit(
      state.version.copyWith(
        name: appName,
      ),
    );
  }

  Future<void> _saveNewVersion() async {
    final failureOrUnit = await _repository.saveAppVersion(state.version);
    state = failureOrUnit.fold(
      (failure) =>
          AppVersionState.failure(state.version, _mapFailureToMessage(failure)),
      (_) => AppVersionState.saved(state.version),
    );
  }

  void _changeVersionNo({required AppVersionSementicNo newVersionNo}) {
    if (!_hasHigherVersionNo(newVersionNo)) {
      state = AppVersionState.failure(
        state.version.copyWith(versionNo: newVersionNo),
        invalidVersionFailrueMessage,
      );
      return;
    }

    state = AppVersionState.edit(
      state.version.copyWith(
        versionNo: newVersionNo,
      ),
    );
  }

  void _backToEditInit() {
    state = AppVersionState.edit(
      state.version.copyWith(
        versionNo: state.version.lastVersionNo,
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

  // majorNum, minorNum, patchNum 셋 중 이전보다 하나라도 크면 큰 버전이다
  bool _hasHigherVersionNo(AppVersionSementicNo versionNo) {
    return versionNo.majorNum > state.version.lastVersionNo.majorNum ||
        versionNo.minorNum > state.version.lastVersionNo.minorNum ||
        versionNo.patchNum > state.version.lastVersionNo.patchNum;
  }
}
