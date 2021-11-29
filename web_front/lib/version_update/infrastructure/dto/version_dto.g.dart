// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'version_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VersionDTO _$$_VersionDTOFromJson(Map<String, dynamic> json) =>
    _$_VersionDTO(
      versionNo: _tearDownStringToSemVer(json['APK_V'] as String),
    );

Map<String, dynamic> _$$_VersionDTOToJson(_$_VersionDTO instance) =>
    <String, dynamic>{
      'APK_V': _mergeSemVerToString(instance.versionNo),
    };

_$_VersionNoDTO _$$_VersionNoDTOFromJson(Map<String, dynamic> json) =>
    _$_VersionNoDTO(
      major: json['major'] as int?,
      minor: json['minor'] as int?,
      patch: json['patch'] as int?,
    );

Map<String, dynamic> _$$_VersionNoDTOToJson(_$_VersionNoDTO instance) =>
    <String, dynamic>{
      'major': instance.major,
      'minor': instance.minor,
      'patch': instance.patch,
    };

_$_VersionFileDTO _$$_VersionFileDTOFromJson(Map<String, dynamic> json) =>
    _$_VersionFileDTO();

Map<String, dynamic> _$$_VersionFileDTOToJson(_$_VersionFileDTO instance) =>
    <String, dynamic>{};
