import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_info.freezed.dart';

@freezed
class AppInfo with _$AppInfo {
  const AppInfo._();
  const factory AppInfo({
    required String version,
  }) = _AppInfo;
}
