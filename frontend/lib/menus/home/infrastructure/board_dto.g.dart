// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'board_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BoardDTO _$_$_BoardDTOFromJson(Map<String, dynamic> json) {
  return _$_BoardDTO(
    status:
        BoardProgressStatusDTO.fromJson(json['STATUS'] as Map<String, dynamic>),
    notice: (json['NOTICE'] as List<dynamic>)
        .map((e) => BoardItemDTO.fromJson(e as Map<String, dynamic>))
        .toList(),
    safety: (json['SAFETY_OFFER'] as List<dynamic>)
        .map((e) => BoardItemDTO.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_BoardDTOToJson(_$_BoardDTO instance) =>
    <String, dynamic>{
      'STATUS': instance.status.toJson(),
      'NOTICE': instance.notice.map((e) => e.toJson()).toList(),
      'SAFETY_OFFER': instance.safety.map((e) => e.toJson()).toList(),
    };

_$_BoardProgressStatusDTO _$_$_BoardProgressStatusDTOFromJson(
    Map<String, dynamic> json) {
  return _$_BoardProgressStatusDTO(
    building: json['BUILDING'] == null
        ? null
        : ProgressStatusDTO.fromJson(json['BUILDING'] as Map<String, dynamic>),
    line: json['LINE'] == null
        ? null
        : ProgressStatusDTO.fromJson(json['LINE'] as Map<String, dynamic>),
    forklift: json['FORKLIFT'] == null
        ? null
        : ProgressStatusDTO.fromJson(json['FORKLIFT'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_BoardProgressStatusDTOToJson(
        _$_BoardProgressStatusDTO instance) =>
    <String, dynamic>{
      'BUILDING': instance.building?.toJson(),
      'LINE': instance.line?.toJson(),
      'FORKLIFT': instance.forklift?.toJson(),
    };

_$_BoardItemDTO _$_$_BoardItemDTOFromJson(Map<String, dynamic> json) {
  return _$_BoardItemDTO(
    board: json['BOARD_ID'] as String,
    key: json['B_PK'] as String,
    compCd: json['COMP_CD'] as String,
    topFixYn: json['TOP_FIX_YN'] as String,
    title: json['TITLE'] as String,
    contents: json['TXT'] as String,
    createdBy: json['CRT_BY'] as String,
    createdDate: dateStringsToDateTime(json['CRT_DT'] as String),
    updatedBy: json['UDT_BY'] as String,
    updatedDate: dateStringsToDateTime(json['UDT_DT'] as String),
    isInUse: _useYnToBool(json['USE_YN'] as String),
    images: (json['IMGS'] as List<dynamic>?)
            ?.map((e) => AddedImageBoardDTO.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_BoardItemDTOToJson(_$_BoardItemDTO instance) =>
    <String, dynamic>{
      'BOARD_ID': instance.board,
      'B_PK': instance.key,
      'COMP_CD': instance.compCd,
      'TOP_FIX_YN': instance.topFixYn,
      'TITLE': instance.title,
      'TXT': instance.contents,
      'CRT_BY': instance.createdBy,
      'CRT_DT': instance.createdDate.toIso8601String(),
      'UDT_BY': instance.updatedBy,
      'UDT_DT': instance.updatedDate.toIso8601String(),
      'USE_YN': instance.isInUse,
      'IMGS': instance.images.map((e) => e.toJson()).toList(),
    };

_$_AddedImageBoardDTO _$_$_AddedImageBoardDTOFromJson(
    Map<String, dynamic> json) {
  return _$_AddedImageBoardDTO(
    key: json['B_PK'] as String? ?? '',
    no: json['ATT_NO'] as String? ?? '',
    name: json['NAME'] as String? ?? '',
    url: json['CHK_IMG_URL_FULL'] as String? ?? '',
    remark: json['RMK'] as String? ?? '',
    isRemote: json['isRemote'] as bool? ?? true,
  );
}

Map<String, dynamic> _$_$_AddedImageBoardDTOToJson(
        _$_AddedImageBoardDTO instance) =>
    <String, dynamic>{
      'B_PK': instance.key,
      'ATT_NO': instance.no,
      'NAME': instance.name,
      'CHK_IMG_URL_FULL': instance.url,
      'RMK': instance.remark,
      'isRemote': instance.isRemote,
    };
