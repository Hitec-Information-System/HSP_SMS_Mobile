// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthInfo _$_$_AuthInfoFromJson(Map<String, dynamic> json) {
  return _$_AuthInfo(
    accessToken: json['access_token'] as String,
    refreshToken: json['refresh_token'] as String,
    expiration: DateTime.parse(json['expiration'] as String),
    userId: json['user_id'] as String,
    userNm: json['user_nm'] as String,
  );
}

Map<String, dynamic> _$_$_AuthInfoToJson(_$_AuthInfo instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
      'expiration': instance.expiration.toIso8601String(),
      'user_id': instance.userId,
      'user_nm': instance.userNm,
    };
