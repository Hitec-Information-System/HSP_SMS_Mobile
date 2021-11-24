import 'package:file_picker/file_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:web_front/version_update/domain/version.dart';

part 'version_dto.freezed.dart';
part 'version_dto.g.dart';

VersionNoDTO _tearDownStringToSemVer(String versionNo) {
  final versionRaw = versionNo.split(".");
  if (versionRaw.length != 3) {
    return const VersionNoDTO(major: null, minor: null, patch: null);
  }

  return VersionNoDTO(
    major: int.tryParse(versionRaw[0]),
    minor: int.tryParse(versionRaw[1]),
    patch: int.tryParse(versionRaw[2]),
  );
}

String _mergeSemVerToString(VersionNoDTO versionNo) {
  return "${versionNo.major}.${versionNo.minor}.${versionNo.patch}";
}

@freezed
class VersionDTO with _$VersionDTO {
  const VersionDTO._();
  const factory VersionDTO({
    @JsonKey(name: "APK_V", fromJson: _tearDownStringToSemVer, toJson: _mergeSemVerToString)
        required VersionNoDTO versionNo,
    @Default(null) @JsonKey(ignore: true) FilePickerResult? versionFile,
  }) = _VersionDTO;

  factory VersionDTO.fromJson(Map<String, dynamic> json) =>
      _$VersionDTOFromJson(json);

  factory VersionDTO.fromDomain(Version _) => VersionDTO(
        versionNo: VersionNoDTO.fromDomain(_.versionNo),
        versionFile: _.versionFile,
      );

  Version toDomain() => Version(
        versionNo: versionNo.toDomain(),
        versionFile: versionFile,
      );
}

@freezed
class VersionNoDTO with _$VersionNoDTO {
  const VersionNoDTO._();
  const factory VersionNoDTO({
    required int? major,
    required int? minor,
    required int? patch,
  }) = _VersionNoDTO;

  factory VersionNoDTO.fromDomain(VersionNo _) => VersionNoDTO(
        major: _.major,
        minor: _.minor,
        patch: _.patch,
      );

  VersionNo toDomain() => VersionNo(
        major: major,
        minor: minor,
        patch: patch,
      );

  factory VersionNoDTO.fromJson(Map<String, dynamic> json) =>
      _$VersionNoDTOFromJson(json);
}
