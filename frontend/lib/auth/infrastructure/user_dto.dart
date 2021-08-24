import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/auth/domain/user.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDTO with _$UserDTO {
  const UserDTO._();
  const factory UserDTO({
    @JsonKey(name: "USER_ID") required String id,
    @JsonKey(name: "USER_NM") required String name,
    @JsonKey(name: "COMP_CD") required String compCd,
  }) = _UserDTO;

  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);

  factory UserDTO.fromDomain(User _) {
    return UserDTO(
      id: _.id,
      name: _.name,
      compCd: _.compCd,
    );
  }

  User toDomain() {
    return User(
      id: id,
      name: name,
      compCd: compCd,
    );
  }
}
