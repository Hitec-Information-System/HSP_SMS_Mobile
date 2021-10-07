// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDTO _$UserDTOFromJson(Map<String, dynamic> json) {
  return _UserDTO.fromJson(json);
}

/// @nodoc
class _$UserDTOTearOff {
  const _$UserDTOTearOff();

  _UserDTO call(
      {@JsonKey(name: "API_KEY") required String key,
      @JsonKey(name: "INFO") required UserInfoDTO userInfo}) {
    return _UserDTO(
      key: key,
      userInfo: userInfo,
    );
  }

  UserDTO fromJson(Map<String, Object> json) {
    return UserDTO.fromJson(json);
  }
}

/// @nodoc
const $UserDTO = _$UserDTOTearOff();

/// @nodoc
mixin _$UserDTO {
  @JsonKey(name: "API_KEY")
  String get key => throw _privateConstructorUsedError;
  @JsonKey(name: "INFO")
  UserInfoDTO get userInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDTOCopyWith<UserDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDTOCopyWith<$Res> {
  factory $UserDTOCopyWith(UserDTO value, $Res Function(UserDTO) then) =
      _$UserDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "API_KEY") String key,
      @JsonKey(name: "INFO") UserInfoDTO userInfo});

  $UserInfoDTOCopyWith<$Res> get userInfo;
}

/// @nodoc
class _$UserDTOCopyWithImpl<$Res> implements $UserDTOCopyWith<$Res> {
  _$UserDTOCopyWithImpl(this._value, this._then);

  final UserDTO _value;
  // ignore: unused_field
  final $Res Function(UserDTO) _then;

  @override
  $Res call({
    Object? key = freezed,
    Object? userInfo = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      userInfo: userInfo == freezed
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as UserInfoDTO,
    ));
  }

  @override
  $UserInfoDTOCopyWith<$Res> get userInfo {
    return $UserInfoDTOCopyWith<$Res>(_value.userInfo, (value) {
      return _then(_value.copyWith(userInfo: value));
    });
  }
}

/// @nodoc
abstract class _$UserDTOCopyWith<$Res> implements $UserDTOCopyWith<$Res> {
  factory _$UserDTOCopyWith(_UserDTO value, $Res Function(_UserDTO) then) =
      __$UserDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "API_KEY") String key,
      @JsonKey(name: "INFO") UserInfoDTO userInfo});

  @override
  $UserInfoDTOCopyWith<$Res> get userInfo;
}

/// @nodoc
class __$UserDTOCopyWithImpl<$Res> extends _$UserDTOCopyWithImpl<$Res>
    implements _$UserDTOCopyWith<$Res> {
  __$UserDTOCopyWithImpl(_UserDTO _value, $Res Function(_UserDTO) _then)
      : super(_value, (v) => _then(v as _UserDTO));

  @override
  _UserDTO get _value => super._value as _UserDTO;

  @override
  $Res call({
    Object? key = freezed,
    Object? userInfo = freezed,
  }) {
    return _then(_UserDTO(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      userInfo: userInfo == freezed
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as UserInfoDTO,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDTO extends _UserDTO {
  const _$_UserDTO(
      {@JsonKey(name: "API_KEY") required this.key,
      @JsonKey(name: "INFO") required this.userInfo})
      : super._();

  factory _$_UserDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_UserDTOFromJson(json);

  @override
  @JsonKey(name: "API_KEY")
  final String key;
  @override
  @JsonKey(name: "INFO")
  final UserInfoDTO userInfo;

  @override
  String toString() {
    return 'UserDTO(key: $key, userInfo: $userInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDTO &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.userInfo, userInfo) ||
                const DeepCollectionEquality()
                    .equals(other.userInfo, userInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(userInfo);

  @JsonKey(ignore: true)
  @override
  _$UserDTOCopyWith<_UserDTO> get copyWith =>
      __$UserDTOCopyWithImpl<_UserDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserDTOToJson(this);
  }
}

abstract class _UserDTO extends UserDTO {
  const factory _UserDTO(
      {@JsonKey(name: "API_KEY") required String key,
      @JsonKey(name: "INFO") required UserInfoDTO userInfo}) = _$_UserDTO;
  const _UserDTO._() : super._();

  factory _UserDTO.fromJson(Map<String, dynamic> json) = _$_UserDTO.fromJson;

  @override
  @JsonKey(name: "API_KEY")
  String get key => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "INFO")
  UserInfoDTO get userInfo => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserDTOCopyWith<_UserDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

UserInfoDTO _$UserInfoDTOFromJson(Map<String, dynamic> json) {
  return _UserInfoDTO.fromJson(json);
}

/// @nodoc
class _$UserInfoDTOTearOff {
  const _$UserInfoDTOTearOff();

  _UserInfoDTO call(
      {@JsonKey(name: "COMP_CD") required String compCd,
      @JsonKey(name: "USER_NM") required String userNm}) {
    return _UserInfoDTO(
      compCd: compCd,
      userNm: userNm,
    );
  }

  UserInfoDTO fromJson(Map<String, Object> json) {
    return UserInfoDTO.fromJson(json);
  }
}

/// @nodoc
const $UserInfoDTO = _$UserInfoDTOTearOff();

/// @nodoc
mixin _$UserInfoDTO {
  @JsonKey(name: "COMP_CD")
  String get compCd => throw _privateConstructorUsedError;
  @JsonKey(name: "USER_NM")
  String get userNm => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserInfoDTOCopyWith<UserInfoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoDTOCopyWith<$Res> {
  factory $UserInfoDTOCopyWith(
          UserInfoDTO value, $Res Function(UserInfoDTO) then) =
      _$UserInfoDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "COMP_CD") String compCd,
      @JsonKey(name: "USER_NM") String userNm});
}

/// @nodoc
class _$UserInfoDTOCopyWithImpl<$Res> implements $UserInfoDTOCopyWith<$Res> {
  _$UserInfoDTOCopyWithImpl(this._value, this._then);

  final UserInfoDTO _value;
  // ignore: unused_field
  final $Res Function(UserInfoDTO) _then;

  @override
  $Res call({
    Object? compCd = freezed,
    Object? userNm = freezed,
  }) {
    return _then(_value.copyWith(
      compCd: compCd == freezed
          ? _value.compCd
          : compCd // ignore: cast_nullable_to_non_nullable
              as String,
      userNm: userNm == freezed
          ? _value.userNm
          : userNm // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserInfoDTOCopyWith<$Res>
    implements $UserInfoDTOCopyWith<$Res> {
  factory _$UserInfoDTOCopyWith(
          _UserInfoDTO value, $Res Function(_UserInfoDTO) then) =
      __$UserInfoDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "COMP_CD") String compCd,
      @JsonKey(name: "USER_NM") String userNm});
}

/// @nodoc
class __$UserInfoDTOCopyWithImpl<$Res> extends _$UserInfoDTOCopyWithImpl<$Res>
    implements _$UserInfoDTOCopyWith<$Res> {
  __$UserInfoDTOCopyWithImpl(
      _UserInfoDTO _value, $Res Function(_UserInfoDTO) _then)
      : super(_value, (v) => _then(v as _UserInfoDTO));

  @override
  _UserInfoDTO get _value => super._value as _UserInfoDTO;

  @override
  $Res call({
    Object? compCd = freezed,
    Object? userNm = freezed,
  }) {
    return _then(_UserInfoDTO(
      compCd: compCd == freezed
          ? _value.compCd
          : compCd // ignore: cast_nullable_to_non_nullable
              as String,
      userNm: userNm == freezed
          ? _value.userNm
          : userNm // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserInfoDTO extends _UserInfoDTO {
  const _$_UserInfoDTO(
      {@JsonKey(name: "COMP_CD") required this.compCd,
      @JsonKey(name: "USER_NM") required this.userNm})
      : super._();

  factory _$_UserInfoDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_UserInfoDTOFromJson(json);

  @override
  @JsonKey(name: "COMP_CD")
  final String compCd;
  @override
  @JsonKey(name: "USER_NM")
  final String userNm;

  @override
  String toString() {
    return 'UserInfoDTO(compCd: $compCd, userNm: $userNm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserInfoDTO &&
            (identical(other.compCd, compCd) ||
                const DeepCollectionEquality().equals(other.compCd, compCd)) &&
            (identical(other.userNm, userNm) ||
                const DeepCollectionEquality().equals(other.userNm, userNm)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(compCd) ^
      const DeepCollectionEquality().hash(userNm);

  @JsonKey(ignore: true)
  @override
  _$UserInfoDTOCopyWith<_UserInfoDTO> get copyWith =>
      __$UserInfoDTOCopyWithImpl<_UserInfoDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserInfoDTOToJson(this);
  }
}

abstract class _UserInfoDTO extends UserInfoDTO {
  const factory _UserInfoDTO(
      {@JsonKey(name: "COMP_CD") required String compCd,
      @JsonKey(name: "USER_NM") required String userNm}) = _$_UserInfoDTO;
  const _UserInfoDTO._() : super._();

  factory _UserInfoDTO.fromJson(Map<String, dynamic> json) =
      _$_UserInfoDTO.fromJson;

  @override
  @JsonKey(name: "COMP_CD")
  String get compCd => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "USER_NM")
  String get userNm => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserInfoDTOCopyWith<_UserInfoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
