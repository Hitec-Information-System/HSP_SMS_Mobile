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
