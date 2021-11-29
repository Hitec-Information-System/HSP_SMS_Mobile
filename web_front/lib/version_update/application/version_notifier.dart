import 'package:desktop_drop/desktop_drop.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:web_front/core/error/failure.dart';
import 'package:web_front/version_update/domain/version.dart';

import 'package:web_front/version_update/infrastructure/repositories/version_repository.dart';

part 'version_notifier.freezed.dart';

@freezed
class VersionState with _$VersionState {
  const VersionState._();
  const factory VersionState.initial(Version version) = _Initial;
  const factory VersionState.checking(Version version) = _Loading;
  const factory VersionState.checked(Version version) = _Checked;
  const factory VersionState.fileAdded(Version version) = _FileAdded;
  const factory VersionState.uploaded(Version version) = _Uploaded;
  const factory VersionState.failed(Version version, Failure failure) =
      _Failure;
}

class VersionStateNotifier extends StateNotifier<VersionState> {
  VersionStateNotifier(
    this._repository,
    this._picker,
  ) : super(VersionState.initial(Version.initial()));

  final VersionRepository _repository;
  final FilePicker _picker;

  Future<void> checkAppVersion() async {
    state = VersionState.checking(state.version);

    final failureOrSuccess = await _repository.fetchVersion();

    state = failureOrSuccess.fold(
      (l) => VersionState.failed(state.version, l),
      (r) => VersionState.checked(r),
    );
  }

  // 파일을 선택하는 메뉴에서 불러왔을 때
  Future<void> pickVersionFile() async {
    final picked = await _picker.pickFiles();

    if (picked == null) return;

    if (!_isOnlyOne(picked.files)) {
      state = VersionState.failed(
        state.version,
        const Failure.internal(message: "Uploading only one file is allowed"),
      );
      return;
    }

    if (picked.files[0].extension == null ||
        !_isApkOrAppbundle(picked.files[0].extension!)) {
      state = VersionState.failed(
        state.version,
        const Failure.internal(
            message: "apk or appbundle is allowed to upload"),
      );
      return;
    }

    state = VersionState.fileAdded(
      state.version.copyWith(
        versionFile: VersionFile(
          bytes: picked.files[0].bytes,
          path: null,
          isPicked: true,
        ),
      ),
    );
  }

  // 파일을 drag&drop 으로 불러왔을 때
  Future<void> dropVersionFile(DropDoneDetails file) async {
    if (!_isOnlyOne(file.urls)) {
      state = VersionState.failed(
        state.version,
        const Failure.internal(message: "Uploading only one file is allowed"),
      );
      return;
    }

    final filePath = file.urls[0].toString();

    if (!_isApkOrAppbundle(filePath.split(".").last)) {
      state = VersionState.failed(
        state.version,
        const Failure.internal(
            message: "apk or appbundle is allowed to upload"),
      );
      return;
    }

    state = VersionState.fileAdded(
      state.version.copyWith(
        versionFile: VersionFile(
          bytes: null,
          path: filePath,
          isPicked: false,
        ),
      ),
    );
  }

  Future<void> uploadVersion() async {
    if (state.version.versionFile == null) {
      state = VersionState.failed(
        state.version,
        const Failure.internal(message: "A file must be added"),
      );
      return;
    }

    final failureOrSucess = await _repository.uploadVersion(state.version);
    state = failureOrSucess.fold(
      (l) => VersionState.failed(state.version, l),
      (r) => VersionState.uploaded(state.version),
    );
  }

  bool _isOnlyOne<T>(List<T> files) => files.length == 1;
  bool _isApkOrAppbundle(String file) => ["apk", "appbundle"].contains(file);
}
