import 'dart:typed_data';

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
    @Default(null) @JsonKey(ignore: true) VersionFileDTO? versionFile,
  }) = _VersionDTO;

  factory VersionDTO.fromJson(Map<String, dynamic> json) =>
      _$VersionDTOFromJson(json);

  factory VersionDTO.fromDomain(Version _) => VersionDTO(
        versionNo: VersionNoDTO.fromDomain(_.versionNo),
        versionFile: _.versionFile != null
            ? VersionFileDTO.fromDomain(_.versionFile!)
            : null,
      );

  Version toDomain() => Version(
        versionNo: versionNo.toDomain(),
        versionFile: versionFile?.toDomain(),
      );
}

@freezed
class VersionNoDTO with _$VersionNoDTO {
  const VersionNoDTO._();
  const factory VersionNoDTO({
    int? major,
    int? minor,
    int? patch,
  }) = _VersionNoDTO;

  factory VersionNoDTO.fromDomain(VersionNo _) => VersionNoDTO(
        major: _.major,
        minor: _.minor,
        patch: _.patch,
      );

  VersionNo toDomain() => VersionNo(
        major: major ?? -1,
        minor: minor ?? -1,
        patch: patch ?? -1,
      );

  factory VersionNoDTO.fromJson(Map<String, dynamic> json) =>
      _$VersionNoDTOFromJson(json);
}

@freezed
class VersionFileDTO with _$VersionFileDTO {
  const VersionFileDTO._();
  const factory VersionFileDTO({
    @Default(null) @JsonKey(ignore: true) Uint8List? bytes,
    @Default(null) @JsonKey(ignore: true) String? path,
    @Default(false) @JsonKey(ignore: true) bool isPicked,
  }) = _VersionFileDTO;

  factory VersionFileDTO.fromDomain(VersionFile _) => VersionFileDTO(
        bytes: _.bytes,
        path: _.path,
        isPicked: _.isPicked,
      );

  VersionFile toDomain() => VersionFile(
        bytes: bytes,
        path: path,
        isPicked: isPicked,
      );

  factory VersionFileDTO.fromJson(Map<String, dynamic> json) =>
      _$VersionFileDTOFromJson(json);
}
