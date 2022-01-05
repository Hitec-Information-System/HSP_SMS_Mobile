import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:web/features/upload/domain/entity/app_version.dart';

part 'app_version_state.freezed.dart';

@freezed
class AppVersionState with _$AppVersionState {
  const AppVersionState._();
  const factory AppVersionState.empty(AppVersion version) = _Initial;
  const factory AppVersionState.edit(AppVersion version) = _Edit;
  const factory AppVersionState.saved(AppVersion version) = _Saved;
  const factory AppVersionState.failure(AppVersion version, String message) =
      _Failure;
}
