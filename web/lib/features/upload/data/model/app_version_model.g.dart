// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_version_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppVersion _$$_AppVersionFromJson(Map<String, dynamic> json) =>
    _$_AppVersion(
      info: _convertStringToAppVersionModel(json['APK_V'] as String),
    );

Map<String, dynamic> _$$_AppVersionToJson(_$_AppVersion instance) =>
    <String, dynamic>{
      'APK_V': _convertAppVersionModelToString(instance.info),
    };

_$_AppVersionInfoModel _$$_AppVersionInfoModelFromJson(
        Map<String, dynamic> json) =>
    _$_AppVersionInfoModel(
      major: json['major'] as int,
      minor: json['minor'] as int,
      patch: json['patch'] as int,
    );

Map<String, dynamic> _$$_AppVersionInfoModelToJson(
        _$_AppVersionInfoModel instance) =>
    <String, dynamic>{
      'major': instance.major,
      'minor': instance.minor,
      'patch': instance.patch,
    };
