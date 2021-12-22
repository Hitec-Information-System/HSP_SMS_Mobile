import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:web/features/upload/domain/entity/app_version.dart';

part 'app_version_event.freezed.dart';

@freezed
class AppVersionEvent with _$AppVersionEvent {
  const AppVersionEvent._();
  const factory AppVersionEvent.getLatestInfo() = GetLatestInfo;
  const factory AppVersionEvent.addFileToDomain(String path) = AddFileToDomain;
  const factory AppVersionEvent.changeVersionNo(AppVersionInfo info) =
      ChangeVersionNo;
  const factory AppVersionEvent.saveNewVersion() = SaveNewVersion;
}
