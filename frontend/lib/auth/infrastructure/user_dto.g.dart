// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDTO _$_$_UserDTOFromJson(Map<String, dynamic> json) {
  return _$_UserDTO(
    id: json['USER_ID'] as String,
    name: json['USER_NM'] as String,
    compCd: json['COMP_CD'] as String,
  );
}

Map<String, dynamic> _$_$_UserDTOToJson(_$_UserDTO instance) =>
    <String, dynamic>{
      'USER_ID': instance.id,
      'USER_NM': instance.name,
      'COMP_CD': instance.compCd,
    };
