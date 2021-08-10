// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_serial.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CheckSerial _$_$_CheckSerialFromJson(Map<String, dynamic> json) {
  return _$_CheckSerial(
    id: json['id'] as String,
    location: json['location'] as String,
    lastCheckDate: DateTime.parse(json['lastCheckDate'] as String),
  );
}

Map<String, dynamic> _$_$_CheckSerialToJson(_$_CheckSerial instance) =>
    <String, dynamic>{
      'id': instance.id,
      'location': instance.location,
      'lastCheckDate': instance.lastCheckDate.toIso8601String(),
    };
