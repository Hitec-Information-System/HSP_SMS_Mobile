import 'package:cross_file/cross_file.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:web/features/upload/domain/entity/app_version.dart';

part 'app_version_event.freezed.dart';

@freezed
class AppVersionEvent with _$AppVersionEvent {
  const AppVersionEvent._();
  const factory AppVersionEvent.getLatestInfo() = GetLatestInfo;
  const factory AppVersionEvent.dropFileToDomain(XFile file) = DropFileToDomain;
  const factory AppVersionEvent.pickFileToDomain() = PickFileToDomain;
  const factory AppVersionEvent.changeVersionNo(AppVersionSementicNo info) =
      ChangeVersionNo;
  const factory AppVersionEvent.cancelAddFile() = CancelAddFile;
  const factory AppVersionEvent.saveNewVersion() = SaveNewVersion;
}
