import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cross_file/cross_file.dart';

part 'app_version.freezed.dart';

@freezed
class AppVersion with _$AppVersion {
  const AppVersion._();
  const factory AppVersion({
    required String name,
    required AppVersionSementicNo versionNo,
    required AppVersionSementicNo lastVersionNo,
    XFile? file,
  }) = _AppVersion;
}

@freezed
class AppVersionSementicNo with _$AppVersionSementicNo {
  const AppVersionSementicNo._();
  const factory AppVersionSementicNo({
    required int majorNum,
    required int minorNum,
    required int patchNum,
  }) = _AppVersionSementicNo;

  @override
  String toString() => "$majorNum.$minorNum.$patchNum";
}
