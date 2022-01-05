// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_version_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppVersionModel _$$_AppVersionModelFromJson(Map<String, dynamic> json) =>
    _$_AppVersionModel(
      versionNo: _convertStringToAppVersionModel(json['APK_V'] as String),
    );

Map<String, dynamic> _$$_AppVersionModelToJson(_$_AppVersionModel instance) =>
    <String, dynamic>{
      'APK_V': _convertAppVersionModelToString(instance.versionNo),
    };

_$_AppVersionSemanticNoModel _$$_AppVersionSemanticNoModelFromJson(
        Map<String, dynamic> json) =>
    _$_AppVersionSemanticNoModel(
      majorNum: json['majorNum'] as int,
      minorNum: json['minorNum'] as int,
      patchNum: json['patchNum'] as int,
    );

Map<String, dynamic> _$$_AppVersionSemanticNoModelToJson(
        _$_AppVersionSemanticNoModel instance) =>
    <String, dynamic>{
      'majorNum': instance.majorNum,
      'minorNum': instance.minorNum,
      'patchNum': instance.patchNum,
    };
