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

  Future<void> addVersionFile() async {
    final picked = await _picker.pickFiles();

    if (picked == null) return;

    if (picked.files.length > 1) {
      state = VersionState.failed(
        state.version,
        const Failure.internal(message: "Uploading only one file is allowed"),
      );
      return;
    }

    if (picked.files[0].extension == null ||
        ["apk", "appbundle"].contains(picked.files[0].extension)) {
      state = VersionState.failed(
        state.version,
        const Failure.internal(
            message: "apk or appbundle is allowed to upload"),
      );
      return;
    }

    state = VersionState.fileAdded(
      state.version.copyWith(
        versionFile: picked,
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

    final failureOrSucess = await _repository
        .uploadVersion(state.version.versionFile!.files[0].bytes!);
    state = failureOrSucess.fold(
      (l) => VersionState.failed(state.version, l),
      (r) => VersionState.uploaded(state.version),
    );
  }
}
