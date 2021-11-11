// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'progress_status_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProgressStatusDTO _$_$_ProgressStatusDTOFromJson(Map<String, dynamic> json) {
  return _$_ProgressStatusDTO(
    completedCount: stringToInt(json['CHK_AFTER_CNT'] as String),
    notCompletedCount: stringToInt(json['CHK_BEFORE_CNT'] as String),
    session: json['CHK_CHASU'] as String,
    sessionName: json['CHK_CHASU_NM'] as String,
    totalCount: stringToInt(json['CHK_TOT_CNT'] as String),
    companyCd: json['COMP_CD'] as String,
    objCd: json['OBJ_GUBUN'] as String,
  );
}

Map<String, dynamic> _$_$_ProgressStatusDTOToJson(
        _$_ProgressStatusDTO instance) =>
    <String, dynamic>{
      'CHK_AFTER_CNT': instance.completedCount,
      'CHK_BEFORE_CNT': instance.notCompletedCount,
      'CHK_CHASU': instance.session,
      'CHK_CHASU_NM': instance.sessionName,
      'CHK_TOT_CNT': instance.totalCount,
      'COMP_CD': instance.companyCd,
      'OBJ_GUBUN': instance.objCd,
    };
