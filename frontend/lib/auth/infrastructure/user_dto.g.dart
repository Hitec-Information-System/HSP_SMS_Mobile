// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDTO _$_$_UserDTOFromJson(Map<String, dynamic> json) {
  return _$_UserDTO(
    key: json['API_KEY'] as String,
    userInfo: UserInfoDTO.fromJson(json['INFO'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_UserDTOToJson(_$_UserDTO instance) =>
    <String, dynamic>{
      'API_KEY': instance.key,
      'INFO': instance.userInfo.toJson(),
    };

_$_UserInfoDTO _$_$_UserInfoDTOFromJson(Map<String, dynamic> json) {
  return _$_UserInfoDTO(
    compCd: json['COMP_CD'] as String,
    userNm: json['USER_NM'] as String,
  );
}

Map<String, dynamic> _$_$_UserInfoDTOToJson(_$_UserInfoDTO instance) =>
    <String, dynamic>{
      'COMP_CD': instance.compCd,
      'USER_NM': instance.userNm,
    };
