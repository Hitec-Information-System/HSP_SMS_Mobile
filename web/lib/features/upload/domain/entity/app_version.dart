import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cross_file/cross_file.dart';

part 'app_version.freezed.dart';

@freezed
class AppVersion with _$AppVersion {
  const AppVersion._();
  const factory AppVersion({
    required AppVersionInfo info,
    XFile? file,
  }) = _AppVersion;

  String get infoNo => "${info.major}.${info.minor}.${info.patch}";
}

@freezed
class AppVersionInfo with _$AppVersionInfo {
  const AppVersionInfo._();
  const factory AppVersionInfo({
    required int major,
    required int minor,
    required int patch,
  }) = _AppVersionInfo;
}
