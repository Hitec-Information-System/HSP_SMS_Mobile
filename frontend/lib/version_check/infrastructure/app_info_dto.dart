import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/version_check/domain/app_info.dart';

part 'app_info_dto.freezed.dart';
part 'app_info_dto.g.dart';

@freezed
class AppInfoDTO with _$AppInfoDTO {
  const AppInfoDTO._();
  const factory AppInfoDTO({
    @JsonKey(name: "APK_V") required String version,
  }) = _AppInfoDTO;

  factory AppInfoDTO.fromJson(Map<String, dynamic> json) =>
      _$AppInfoDTOFromJson(json);

  factory AppInfoDTO.fromDomain(AppInfo _) {
    return AppInfoDTO(
      version: _.version,
    );
  }

  AppInfo toDomain() {
    return AppInfo(
      version: version,
    );
  }
}
