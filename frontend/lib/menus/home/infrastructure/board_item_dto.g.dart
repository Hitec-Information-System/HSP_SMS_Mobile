// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'board_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BoardItemsListDTO _$_$_BoardItemsListDTOFromJson(Map<String, dynamic> json) {
  return _$_BoardItemsListDTO(
    items: (json['items'] as List<dynamic>)
        .map((e) => BoardItemDTO.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_BoardItemsListDTOToJson(
        _$_BoardItemsListDTO instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
    };

_$_BoardItemDTO _$_$_BoardItemDTOFromJson(Map<String, dynamic> json) {
  return _$_BoardItemDTO(
    id: json['B_PK'] as String,
    compCd: json['COMP_CD'] as String,
    rowNo: _rowNoStingToInt(json['ROW_NO'] as String),
    topFixYn: json['TOP_FIX_YN'] as String,
    title: json['TITLE'] as String,
    contents: json['TXT'] as String,
    createdBy: json['CRT_BY'] as String,
    createdDate: _dateStringsToDateTime(json['CRT_DT'] as String),
    updatedBy: json['UDT_BY'] as String,
    updatedDate: _dateStringsToDateTime(json['UDT_DT'] as String),
    isInUse: _useYnToBool(json['USE_YN'] as String),
  );
}

Map<String, dynamic> _$_$_BoardItemDTOToJson(_$_BoardItemDTO instance) =>
    <String, dynamic>{
      'B_PK': instance.id,
      'COMP_CD': instance.compCd,
      'ROW_NO': instance.rowNo,
      'TOP_FIX_YN': instance.topFixYn,
      'TITLE': instance.title,
      'TXT': instance.contents,
      'CRT_BY': instance.createdBy,
      'CRT_DT': instance.createdDate.toIso8601String(),
      'UDT_BY': instance.updatedBy,
      'UDT_DT': instance.updatedDate.toIso8601String(),
      'USE_YN': instance.isInUse,
    };
