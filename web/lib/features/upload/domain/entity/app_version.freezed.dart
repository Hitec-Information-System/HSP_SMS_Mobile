// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_version.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppVersionTearOff {
  const _$AppVersionTearOff();

  _AppVersion call(
      {required AppVersionInfo info,
      required AppVersionInfo lastInfo,
      XFile? file}) {
    return _AppVersion(
      info: info,
      lastInfo: lastInfo,
      file: file,
    );
  }
}

/// @nodoc
const $AppVersion = _$AppVersionTearOff();

/// @nodoc
mixin _$AppVersion {
  AppVersionInfo get info => throw _privateConstructorUsedError;
  AppVersionInfo get lastInfo => throw _privateConstructorUsedError;
  XFile? get file => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppVersionCopyWith<AppVersion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppVersionCopyWith<$Res> {
  factory $AppVersionCopyWith(
          AppVersion value, $Res Function(AppVersion) then) =
      _$AppVersionCopyWithImpl<$Res>;
  $Res call({AppVersionInfo info, AppVersionInfo lastInfo, XFile? file});

  $AppVersionInfoCopyWith<$Res> get info;
  $AppVersionInfoCopyWith<$Res> get lastInfo;
}

/// @nodoc
class _$AppVersionCopyWithImpl<$Res> implements $AppVersionCopyWith<$Res> {
  _$AppVersionCopyWithImpl(this._value, this._then);

  final AppVersion _value;
  // ignore: unused_field
  final $Res Function(AppVersion) _then;

  @override
  $Res call({
    Object? info = freezed,
    Object? lastInfo = freezed,
    Object? file = freezed,
  }) {
    return _then(_value.copyWith(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as AppVersionInfo,
      lastInfo: lastInfo == freezed
          ? _value.lastInfo
          : lastInfo // ignore: cast_nullable_to_non_nullable
              as AppVersionInfo,
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }

  @override
  $AppVersionInfoCopyWith<$Res> get info {
    return $AppVersionInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }

  @override
  $AppVersionInfoCopyWith<$Res> get lastInfo {
    return $AppVersionInfoCopyWith<$Res>(_value.lastInfo, (value) {
      return _then(_value.copyWith(lastInfo: value));
    });
  }
}

/// @nodoc
abstract class _$AppVersionCopyWith<$Res> implements $AppVersionCopyWith<$Res> {
  factory _$AppVersionCopyWith(
          _AppVersion value, $Res Function(_AppVersion) then) =
      __$AppVersionCopyWithImpl<$Res>;
  @override
  $Res call({AppVersionInfo info, AppVersionInfo lastInfo, XFile? file});

  @override
  $AppVersionInfoCopyWith<$Res> get info;
  @override
  $AppVersionInfoCopyWith<$Res> get lastInfo;
}

/// @nodoc
class __$AppVersionCopyWithImpl<$Res> extends _$AppVersionCopyWithImpl<$Res>
    implements _$AppVersionCopyWith<$Res> {
  __$AppVersionCopyWithImpl(
      _AppVersion _value, $Res Function(_AppVersion) _then)
      : super(_value, (v) => _then(v as _AppVersion));

  @override
  _AppVersion get _value => super._value as _AppVersion;

  @override
  $Res call({
    Object? info = freezed,
    Object? lastInfo = freezed,
    Object? file = freezed,
  }) {
    return _then(_AppVersion(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as AppVersionInfo,
      lastInfo: lastInfo == freezed
          ? _value.lastInfo
          : lastInfo // ignore: cast_nullable_to_non_nullable
              as AppVersionInfo,
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc

class _$_AppVersion extends _AppVersion {
  const _$_AppVersion({required this.info, required this.lastInfo, this.file})
      : super._();

  @override
  final AppVersionInfo info;
  @override
  final AppVersionInfo lastInfo;
  @override
  final XFile? file;

  @override
  String toString() {
    return 'AppVersion(info: $info, lastInfo: $lastInfo, file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppVersion &&
            const DeepCollectionEquality().equals(other.info, info) &&
            const DeepCollectionEquality().equals(other.lastInfo, lastInfo) &&
            const DeepCollectionEquality().equals(other.file, file));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(info),
      const DeepCollectionEquality().hash(lastInfo),
      const DeepCollectionEquality().hash(file));

  @JsonKey(ignore: true)
  @override
  _$AppVersionCopyWith<_AppVersion> get copyWith =>
      __$AppVersionCopyWithImpl<_AppVersion>(this, _$identity);
}

abstract class _AppVersion extends AppVersion {
  const factory _AppVersion(
      {required AppVersionInfo info,
      required AppVersionInfo lastInfo,
      XFile? file}) = _$_AppVersion;
  const _AppVersion._() : super._();

  @override
  AppVersionInfo get info;
  @override
  AppVersionInfo get lastInfo;
  @override
  XFile? get file;
  @override
  @JsonKey(ignore: true)
  _$AppVersionCopyWith<_AppVersion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AppVersionInfoTearOff {
  const _$AppVersionInfoTearOff();

  _AppVersionInfo call(
      {required int major, required int minor, required int patch}) {
    return _AppVersionInfo(
      major: major,
      minor: minor,
      patch: patch,
    );
  }
}

/// @nodoc
const $AppVersionInfo = _$AppVersionInfoTearOff();

/// @nodoc
mixin _$AppVersionInfo {
  int get major => throw _privateConstructorUsedError;
  int get minor => throw _privateConstructorUsedError;
  int get patch => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppVersionInfoCopyWith<AppVersionInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppVersionInfoCopyWith<$Res> {
  factory $AppVersionInfoCopyWith(
          AppVersionInfo value, $Res Function(AppVersionInfo) then) =
      _$AppVersionInfoCopyWithImpl<$Res>;
  $Res call({int major, int minor, int patch});
}

/// @nodoc
class _$AppVersionInfoCopyWithImpl<$Res>
    implements $AppVersionInfoCopyWith<$Res> {
  _$AppVersionInfoCopyWithImpl(this._value, this._then);

  final AppVersionInfo _value;
  // ignore: unused_field
  final $Res Function(AppVersionInfo) _then;

  @override
  $Res call({
    Object? major = freezed,
    Object? minor = freezed,
    Object? patch = freezed,
  }) {
    return _then(_value.copyWith(
      major: major == freezed
          ? _value.major
          : major // ignore: cast_nullable_to_non_nullable
              as int,
      minor: minor == freezed
          ? _value.minor
          : minor // ignore: cast_nullable_to_non_nullable
              as int,
      patch: patch == freezed
          ? _value.patch
          : patch // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$AppVersionInfoCopyWith<$Res>
    implements $AppVersionInfoCopyWith<$Res> {
  factory _$AppVersionInfoCopyWith(
          _AppVersionInfo value, $Res Function(_AppVersionInfo) then) =
      __$AppVersionInfoCopyWithImpl<$Res>;
  @override
  $Res call({int major, int minor, int patch});
}

/// @nodoc
class __$AppVersionInfoCopyWithImpl<$Res>
    extends _$AppVersionInfoCopyWithImpl<$Res>
    implements _$AppVersionInfoCopyWith<$Res> {
  __$AppVersionInfoCopyWithImpl(
      _AppVersionInfo _value, $Res Function(_AppVersionInfo) _then)
      : super(_value, (v) => _then(v as _AppVersionInfo));

  @override
  _AppVersionInfo get _value => super._value as _AppVersionInfo;

  @override
  $Res call({
    Object? major = freezed,
    Object? minor = freezed,
    Object? patch = freezed,
  }) {
    return _then(_AppVersionInfo(
      major: major == freezed
          ? _value.major
          : major // ignore: cast_nullable_to_non_nullable
              as int,
      minor: minor == freezed
          ? _value.minor
          : minor // ignore: cast_nullable_to_non_nullable
              as int,
      patch: patch == freezed
          ? _value.patch
          : patch // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_AppVersionInfo extends _AppVersionInfo {
  const _$_AppVersionInfo(
      {required this.major, required this.minor, required this.patch})
      : super._();

  @override
  final int major;
  @override
  final int minor;
  @override
  final int patch;

  @override
  String toString() {
    return 'AppVersionInfo(major: $major, minor: $minor, patch: $patch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppVersionInfo &&
            const DeepCollectionEquality().equals(other.major, major) &&
            const DeepCollectionEquality().equals(other.minor, minor) &&
            const DeepCollectionEquality().equals(other.patch, patch));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(major),
      const DeepCollectionEquality().hash(minor),
      const DeepCollectionEquality().hash(patch));

  @JsonKey(ignore: true)
  @override
  _$AppVersionInfoCopyWith<_AppVersionInfo> get copyWith =>
      __$AppVersionInfoCopyWithImpl<_AppVersionInfo>(this, _$identity);
}

abstract class _AppVersionInfo extends AppVersionInfo {
  const factory _AppVersionInfo(
      {required int major,
      required int minor,
      required int patch}) = _$_AppVersionInfo;
  const _AppVersionInfo._() : super._();

  @override
  int get major;
  @override
  int get minor;
  @override
  int get patch;
  @override
  @JsonKey(ignore: true)
  _$AppVersionInfoCopyWith<_AppVersionInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
