// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_standard_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CheckStandardDTO _$_$_CheckStandardDTOFromJson(Map<String, dynamic> json) {
  return _$_CheckStandardDTO(
    intervals: (json['intervals'] as List<dynamic>)
        .map((e) => CheckIntervalDTO.fromJson(e as Map<String, dynamic>))
        .toList(),
    sessions: (json['sessions'] as List<dynamic>)
        .map((e) => CheckSessionDTO.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_CheckStandardDTOToJson(
        _$_CheckStandardDTO instance) =>
    <String, dynamic>{
      'intervals': instance.intervals,
      'sessions': instance.sessions,
    };

_$_CheckIntervalDTO _$_$_CheckIntervalDTOFromJson(Map<String, dynamic> json) {
  return _$_CheckIntervalDTO(
    id: json['GUBUN'] ?? '',
    name: json['GUBUN_NM'] ?? '',
  );
}

Map<String, dynamic> _$_$_CheckIntervalDTOToJson(
        _$_CheckIntervalDTO instance) =>
    <String, dynamic>{
      'GUBUN': instance.id,
      'GUBUN_NM': instance.name,
    };

_$_CheckSessionDTO _$_$_CheckSessionDTOFromJson(Map<String, dynamic> json) {
  return _$_CheckSessionDTO(
    id: json['GUBUN'] ?? '',
    name: json['GUBUN_NM'] ?? '',
  );
}

Map<String, dynamic> _$_$_CheckSessionDTOToJson(_$_CheckSessionDTO instance) =>
    <String, dynamic>{
      'GUBUN': instance.id,
      'GUBUN_NM': instance.name,
    };

_$_CheckProfileDTO _$_$_CheckProfileDTOFromJson(Map<String, dynamic> json) {
  return _$_CheckProfileDTO(
    spotId: json['GUBUN'] as String,
    spotNm: json['GUBUN_NM'] as String,
    userId: json['userId'] as String? ?? '',
    userNm: json['userNm'] as String? ?? '',
    time: json['time'] as String? ?? '',
  );
}

Map<String, dynamic> _$_$_CheckProfileDTOToJson(_$_CheckProfileDTO instance) =>
    <String, dynamic>{
      'GUBUN': instance.spotId,
      'GUBUN_NM': instance.spotNm,
      'userId': instance.userId,
      'userNm': instance.userNm,
      'time': instance.time,
    };
