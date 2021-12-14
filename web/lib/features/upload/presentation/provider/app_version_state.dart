import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:web/features/upload/domain/entity/app_version.dart';

part 'app_version_state.freezed.dart';

@freezed
class AppVersionState with _$AppVersionState {
  const AppVersionState._();
  const factory AppVersionState.empty(AppVersion version) = _Initial;
  const factory AppVersionState.loading(AppVersion version) = _Loading;
  const factory AppVersionState.loaded(AppVersion version) = _Loaded;
  const factory AppVersionState.fileAdded(AppVersion version) = _FileAdded;
  const factory AppVersionState.saved(AppVersion version) = _Saved;
  const factory AppVersionState.failure(AppVersion version, String message) =
      _Failure;
}
