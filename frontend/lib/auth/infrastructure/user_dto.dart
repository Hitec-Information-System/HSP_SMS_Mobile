import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/auth/domain/user.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDTO with _$UserDTO {
  const UserDTO._();
  const factory UserDTO({
    @JsonKey(name: "API_KEY") required String key,
    @JsonKey(name: "INFO") required UserInfoDTO userInfo,
  }) = _UserDTO;

  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);

  factory UserDTO.fromDomain(User _) {
    return UserDTO(
      key: _.key,
      userInfo: UserInfoDTO.fromDomain(_.userInfo),
    );
  }

  User toDomain() {
    return User(
      key: key,
      userInfo: userInfo.toDomain(),
    );
  }
}

@freezed
class UserInfoDTO with _$UserInfoDTO {
  const UserInfoDTO._();
  const factory UserInfoDTO({
    @JsonKey(name: "COMP_CD") required String compCd,
    @JsonKey(name: "USER_NM") required String userNm,
  }) = _UserInfoDTO;

  factory UserInfoDTO.fromJson(Map<String, dynamic> json) =>
      _$UserInfoDTOFromJson(json);

  factory UserInfoDTO.fromDomain(UserInfo _) {
    return UserInfoDTO(
      compCd: _.compCd,
      userNm: _.userNm,
    );
  }

  UserInfo toDomain() {
    return UserInfo(
      compCd: compCd,
      userNm: userNm,
    );
  }
}
