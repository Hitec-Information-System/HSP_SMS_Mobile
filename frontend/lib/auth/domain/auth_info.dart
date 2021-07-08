import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_info.freezed.dart';
part 'auth_info.g.dart';

@freezed
class AuthInfo with _$AuthInfo {
  const AuthInfo._();
  const factory AuthInfo({
    @JsonKey(name: "access_token") required String accessToken,
    @JsonKey(name: "refresh_token") required String refreshToken,
    required DateTime expiration,
    @JsonKey(name: "user_id") required String userId,
    @JsonKey(name: "user_nm") required String userNm,
  }) = _AuthInfo;

  factory AuthInfo.fromJson(Map<String, dynamic> json) =>
      _$AuthInfoFromJson(json);

  bool get isExpired => DateTime.now().isAfter(expiration);
}
