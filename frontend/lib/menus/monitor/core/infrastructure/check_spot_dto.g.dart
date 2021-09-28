// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_spot_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CheckSpotDTO _$_$_CheckSpotDTOFromJson(Map<String, dynamic> json) {
  return _$_CheckSpotDTO(
    objCd: json['OBJ_CD'] as String? ?? '',
    objNm: json['OBJ_NM'] as String? ?? '',
    objFlag: json['OBJ_GUBUN'] as String? ?? '',
    objSubFlag: json['OBJ_GUBUN_SUB'] as String? ?? '',
    objSubFlagNm: json['OBJ_GUBUN_SUB_NM'] as String? ?? '',
    checkedList: (json['checkedList'] as List<dynamic>)
        .map((e) => CheckedItemDTO.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_CheckSpotDTOToJson(_$_CheckSpotDTO instance) =>
    <String, dynamic>{
      'OBJ_CD': instance.objCd,
      'OBJ_NM': instance.objNm,
      'OBJ_GUBUN': instance.objFlag,
      'OBJ_GUBUN_SUB': instance.objSubFlag,
      'OBJ_GUBUN_SUB_NM': instance.objSubFlagNm,
      'checkedList': instance.checkedList.map((e) => e.toJson()).toList(),
    };

_$_CheckedItemDTO _$_$_CheckedItemDTOFromJson(Map<String, dynamic> json) {
  return _$_CheckedItemDTO(
    id: json['CHKLIST_NO'] as String? ?? '',
    session: json['CHK_CHASU'] ?? '',
    userId: json['CHK_USER_ID'] as String? ?? '',
    userNm: json['CHK_USER_NM'] as String? ?? '',
    checkedTime: json['CRT_DT_DISP'] as String? ?? '',
  );
}

Map<String, dynamic> _$_$_CheckedItemDTOToJson(_$_CheckedItemDTO instance) =>
    <String, dynamic>{
      'CHKLIST_NO': instance.id,
      'CHK_CHASU': instance.session,
      'CHK_USER_ID': instance.userId,
      'CHK_USER_NM': instance.userNm,
      'CRT_DT_DISP': instance.checkedTime,
    };
