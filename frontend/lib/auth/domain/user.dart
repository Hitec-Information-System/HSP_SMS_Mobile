import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const User._();
  const factory User({
    required String key,
    required UserInfo userInfo,
  }) = _User;

  factory User.empty() {
    return const User(
      key: "",
      userInfo: UserInfo(
        compCd: "",
        userNm: "",
      ),
    );
  }
}

@freezed
class UserInfo with _$UserInfo {
  const UserInfo._();
  const factory UserInfo({
    required String compCd,
    required String userNm,
  }) = _UserInfo;
}
