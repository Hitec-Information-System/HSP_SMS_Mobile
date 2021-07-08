// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthInfo _$AuthInfoFromJson(Map<String, dynamic> json) {
  return _AuthInfo.fromJson(json);
}

/// @nodoc
class _$AuthInfoTearOff {
  const _$AuthInfoTearOff();

  _AuthInfo call(
      {@JsonKey(name: "access_token") required String accessToken,
      @JsonKey(name: "refresh_token") required String refreshToken,
      required DateTime expiration,
      @JsonKey(name: "user_id") required String userId,
      @JsonKey(name: "user_nm") required String userNm}) {
    return _AuthInfo(
      accessToken: accessToken,
      refreshToken: refreshToken,
      expiration: expiration,
      userId: userId,
      userNm: userNm,
    );
  }

  AuthInfo fromJson(Map<String, Object> json) {
    return AuthInfo.fromJson(json);
  }
}

/// @nodoc
const $AuthInfo = _$AuthInfoTearOff();

/// @nodoc
mixin _$AuthInfo {
  @JsonKey(name: "access_token")
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: "refresh_token")
  String get refreshToken => throw _privateConstructorUsedError;
  DateTime get expiration => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "user_nm")
  String get userNm => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthInfoCopyWith<AuthInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthInfoCopyWith<$Res> {
  factory $AuthInfoCopyWith(AuthInfo value, $Res Function(AuthInfo) then) =
      _$AuthInfoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "access_token") String accessToken,
      @JsonKey(name: "refresh_token") String refreshToken,
      DateTime expiration,
      @JsonKey(name: "user_id") String userId,
      @JsonKey(name: "user_nm") String userNm});
}

/// @nodoc
class _$AuthInfoCopyWithImpl<$Res> implements $AuthInfoCopyWith<$Res> {
  _$AuthInfoCopyWithImpl(this._value, this._then);

  final AuthInfo _value;
  // ignore: unused_field
  final $Res Function(AuthInfo) _then;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? expiration = freezed,
    Object? userId = freezed,
    Object? userNm = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      expiration: expiration == freezed
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userNm: userNm == freezed
          ? _value.userNm
          : userNm // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AuthInfoCopyWith<$Res> implements $AuthInfoCopyWith<$Res> {
  factory _$AuthInfoCopyWith(_AuthInfo value, $Res Function(_AuthInfo) then) =
      __$AuthInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "access_token") String accessToken,
      @JsonKey(name: "refresh_token") String refreshToken,
      DateTime expiration,
      @JsonKey(name: "user_id") String userId,
      @JsonKey(name: "user_nm") String userNm});
}

/// @nodoc
class __$AuthInfoCopyWithImpl<$Res> extends _$AuthInfoCopyWithImpl<$Res>
    implements _$AuthInfoCopyWith<$Res> {
  __$AuthInfoCopyWithImpl(_AuthInfo _value, $Res Function(_AuthInfo) _then)
      : super(_value, (v) => _then(v as _AuthInfo));

  @override
  _AuthInfo get _value => super._value as _AuthInfo;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? expiration = freezed,
    Object? userId = freezed,
    Object? userNm = freezed,
  }) {
    return _then(_AuthInfo(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      expiration: expiration == freezed
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
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
class _$_AuthInfo extends _AuthInfo {
  const _$_AuthInfo(
      {@JsonKey(name: "access_token") required this.accessToken,
      @JsonKey(name: "refresh_token") required this.refreshToken,
      required this.expiration,
      @JsonKey(name: "user_id") required this.userId,
      @JsonKey(name: "user_nm") required this.userNm})
      : super._();

  factory _$_AuthInfo.fromJson(Map<String, dynamic> json) =>
      _$_$_AuthInfoFromJson(json);

  @override
  @JsonKey(name: "access_token")
  final String accessToken;
  @override
  @JsonKey(name: "refresh_token")
  final String refreshToken;
  @override
  final DateTime expiration;
  @override
  @JsonKey(name: "user_id")
  final String userId;
  @override
  @JsonKey(name: "user_nm")
  final String userNm;

  @override
  String toString() {
    return 'AuthInfo(accessToken: $accessToken, refreshToken: $refreshToken, expiration: $expiration, userId: $userId, userNm: $userNm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthInfo &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality()
                    .equals(other.refreshToken, refreshToken)) &&
            (identical(other.expiration, expiration) ||
                const DeepCollectionEquality()
                    .equals(other.expiration, expiration)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.userNm, userNm) ||
                const DeepCollectionEquality().equals(other.userNm, userNm)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(refreshToken) ^
      const DeepCollectionEquality().hash(expiration) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(userNm);

  @JsonKey(ignore: true)
  @override
  _$AuthInfoCopyWith<_AuthInfo> get copyWith =>
      __$AuthInfoCopyWithImpl<_AuthInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AuthInfoToJson(this);
  }
}

abstract class _AuthInfo extends AuthInfo {
  const factory _AuthInfo(
      {@JsonKey(name: "access_token") required String accessToken,
      @JsonKey(name: "refresh_token") required String refreshToken,
      required DateTime expiration,
      @JsonKey(name: "user_id") required String userId,
      @JsonKey(name: "user_nm") required String userNm}) = _$_AuthInfo;
  const _AuthInfo._() : super._();

  factory _AuthInfo.fromJson(Map<String, dynamic> json) = _$_AuthInfo.fromJson;

  @override
  @JsonKey(name: "access_token")
  String get accessToken => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "refresh_token")
  String get refreshToken => throw _privateConstructorUsedError;
  @override
  DateTime get expiration => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "user_id")
  String get userId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "user_nm")
  String get userNm => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AuthInfoCopyWith<_AuthInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
