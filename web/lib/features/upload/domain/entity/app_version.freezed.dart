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
      {required String name,
      required AppVersionSementicNo versionNo,
      required AppVersionSementicNo lastVersionNo,
      XFile? file}) {
    return _AppVersion(
      name: name,
      versionNo: versionNo,
      lastVersionNo: lastVersionNo,
      file: file,
    );
  }
}

/// @nodoc
const $AppVersion = _$AppVersionTearOff();

/// @nodoc
mixin _$AppVersion {
  String get name => throw _privateConstructorUsedError;
  AppVersionSementicNo get versionNo => throw _privateConstructorUsedError;
  AppVersionSementicNo get lastVersionNo => throw _privateConstructorUsedError;
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
  $Res call(
      {String name,
      AppVersionSementicNo versionNo,
      AppVersionSementicNo lastVersionNo,
      XFile? file});

  $AppVersionSementicNoCopyWith<$Res> get versionNo;
  $AppVersionSementicNoCopyWith<$Res> get lastVersionNo;
}

/// @nodoc
class _$AppVersionCopyWithImpl<$Res> implements $AppVersionCopyWith<$Res> {
  _$AppVersionCopyWithImpl(this._value, this._then);

  final AppVersion _value;
  // ignore: unused_field
  final $Res Function(AppVersion) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? versionNo = freezed,
    Object? lastVersionNo = freezed,
    Object? file = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      versionNo: versionNo == freezed
          ? _value.versionNo
          : versionNo // ignore: cast_nullable_to_non_nullable
              as AppVersionSementicNo,
      lastVersionNo: lastVersionNo == freezed
          ? _value.lastVersionNo
          : lastVersionNo // ignore: cast_nullable_to_non_nullable
              as AppVersionSementicNo,
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }

  @override
  $AppVersionSementicNoCopyWith<$Res> get versionNo {
    return $AppVersionSementicNoCopyWith<$Res>(_value.versionNo, (value) {
      return _then(_value.copyWith(versionNo: value));
    });
  }

  @override
  $AppVersionSementicNoCopyWith<$Res> get lastVersionNo {
    return $AppVersionSementicNoCopyWith<$Res>(_value.lastVersionNo, (value) {
      return _then(_value.copyWith(lastVersionNo: value));
    });
  }
}

/// @nodoc
abstract class _$AppVersionCopyWith<$Res> implements $AppVersionCopyWith<$Res> {
  factory _$AppVersionCopyWith(
          _AppVersion value, $Res Function(_AppVersion) then) =
      __$AppVersionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      AppVersionSementicNo versionNo,
      AppVersionSementicNo lastVersionNo,
      XFile? file});

  @override
  $AppVersionSementicNoCopyWith<$Res> get versionNo;
  @override
  $AppVersionSementicNoCopyWith<$Res> get lastVersionNo;
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
    Object? name = freezed,
    Object? versionNo = freezed,
    Object? lastVersionNo = freezed,
    Object? file = freezed,
  }) {
    return _then(_AppVersion(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      versionNo: versionNo == freezed
          ? _value.versionNo
          : versionNo // ignore: cast_nullable_to_non_nullable
              as AppVersionSementicNo,
      lastVersionNo: lastVersionNo == freezed
          ? _value.lastVersionNo
          : lastVersionNo // ignore: cast_nullable_to_non_nullable
              as AppVersionSementicNo,
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc

class _$_AppVersion extends _AppVersion {
  const _$_AppVersion(
      {required this.name,
      required this.versionNo,
      required this.lastVersionNo,
      this.file})
      : super._();

  @override
  final String name;
  @override
  final AppVersionSementicNo versionNo;
  @override
  final AppVersionSementicNo lastVersionNo;
  @override
  final XFile? file;

  @override
  String toString() {
    return 'AppVersion(name: $name, versionNo: $versionNo, lastVersionNo: $lastVersionNo, file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppVersion &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.versionNo, versionNo) &&
            const DeepCollectionEquality()
                .equals(other.lastVersionNo, lastVersionNo) &&
            const DeepCollectionEquality().equals(other.file, file));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(versionNo),
      const DeepCollectionEquality().hash(lastVersionNo),
      const DeepCollectionEquality().hash(file));

  @JsonKey(ignore: true)
  @override
  _$AppVersionCopyWith<_AppVersion> get copyWith =>
      __$AppVersionCopyWithImpl<_AppVersion>(this, _$identity);
}

abstract class _AppVersion extends AppVersion {
  const factory _AppVersion(
      {required String name,
      required AppVersionSementicNo versionNo,
      required AppVersionSementicNo lastVersionNo,
      XFile? file}) = _$_AppVersion;
  const _AppVersion._() : super._();

  @override
  String get name;
  @override
  AppVersionSementicNo get versionNo;
  @override
  AppVersionSementicNo get lastVersionNo;
  @override
  XFile? get file;
  @override
  @JsonKey(ignore: true)
  _$AppVersionCopyWith<_AppVersion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AppVersionSementicNoTearOff {
  const _$AppVersionSementicNoTearOff();

  _AppVersionSementicNo call(
      {required int majorNum, required int minorNum, required int patchNum}) {
    return _AppVersionSementicNo(
      majorNum: majorNum,
      minorNum: minorNum,
      patchNum: patchNum,
    );
  }
}

/// @nodoc
const $AppVersionSementicNo = _$AppVersionSementicNoTearOff();

/// @nodoc
mixin _$AppVersionSementicNo {
  int get majorNum => throw _privateConstructorUsedError;
  int get minorNum => throw _privateConstructorUsedError;
  int get patchNum => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppVersionSementicNoCopyWith<AppVersionSementicNo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppVersionSementicNoCopyWith<$Res> {
  factory $AppVersionSementicNoCopyWith(AppVersionSementicNo value,
          $Res Function(AppVersionSementicNo) then) =
      _$AppVersionSementicNoCopyWithImpl<$Res>;
  $Res call({int majorNum, int minorNum, int patchNum});
}

/// @nodoc
class _$AppVersionSementicNoCopyWithImpl<$Res>
    implements $AppVersionSementicNoCopyWith<$Res> {
  _$AppVersionSementicNoCopyWithImpl(this._value, this._then);

  final AppVersionSementicNo _value;
  // ignore: unused_field
  final $Res Function(AppVersionSementicNo) _then;

  @override
  $Res call({
    Object? majorNum = freezed,
    Object? minorNum = freezed,
    Object? patchNum = freezed,
  }) {
    return _then(_value.copyWith(
      majorNum: majorNum == freezed
          ? _value.majorNum
          : majorNum // ignore: cast_nullable_to_non_nullable
              as int,
      minorNum: minorNum == freezed
          ? _value.minorNum
          : minorNum // ignore: cast_nullable_to_non_nullable
              as int,
      patchNum: patchNum == freezed
          ? _value.patchNum
          : patchNum // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$AppVersionSementicNoCopyWith<$Res>
    implements $AppVersionSementicNoCopyWith<$Res> {
  factory _$AppVersionSementicNoCopyWith(_AppVersionSementicNo value,
          $Res Function(_AppVersionSementicNo) then) =
      __$AppVersionSementicNoCopyWithImpl<$Res>;
  @override
  $Res call({int majorNum, int minorNum, int patchNum});
}

/// @nodoc
class __$AppVersionSementicNoCopyWithImpl<$Res>
    extends _$AppVersionSementicNoCopyWithImpl<$Res>
    implements _$AppVersionSementicNoCopyWith<$Res> {
  __$AppVersionSementicNoCopyWithImpl(
      _AppVersionSementicNo _value, $Res Function(_AppVersionSementicNo) _then)
      : super(_value, (v) => _then(v as _AppVersionSementicNo));

  @override
  _AppVersionSementicNo get _value => super._value as _AppVersionSementicNo;

  @override
  $Res call({
    Object? majorNum = freezed,
    Object? minorNum = freezed,
    Object? patchNum = freezed,
  }) {
    return _then(_AppVersionSementicNo(
      majorNum: majorNum == freezed
          ? _value.majorNum
          : majorNum // ignore: cast_nullable_to_non_nullable
              as int,
      minorNum: minorNum == freezed
          ? _value.minorNum
          : minorNum // ignore: cast_nullable_to_non_nullable
              as int,
      patchNum: patchNum == freezed
          ? _value.patchNum
          : patchNum // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_AppVersionSementicNo extends _AppVersionSementicNo {
  const _$_AppVersionSementicNo(
      {required this.majorNum, required this.minorNum, required this.patchNum})
      : super._();

  @override
  final int majorNum;
  @override
  final int minorNum;
  @override
  final int patchNum;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppVersionSementicNo &&
            const DeepCollectionEquality().equals(other.majorNum, majorNum) &&
            const DeepCollectionEquality().equals(other.minorNum, minorNum) &&
            const DeepCollectionEquality().equals(other.patchNum, patchNum));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(majorNum),
      const DeepCollectionEquality().hash(minorNum),
      const DeepCollectionEquality().hash(patchNum));

  @JsonKey(ignore: true)
  @override
  _$AppVersionSementicNoCopyWith<_AppVersionSementicNo> get copyWith =>
      __$AppVersionSementicNoCopyWithImpl<_AppVersionSementicNo>(
          this, _$identity);
}

abstract class _AppVersionSementicNo extends AppVersionSementicNo {
  const factory _AppVersionSementicNo(
      {required int majorNum,
      required int minorNum,
      required int patchNum}) = _$_AppVersionSementicNo;
  const _AppVersionSementicNo._() : super._();

  @override
  int get majorNum;
  @override
  int get minorNum;
  @override
  int get patchNum;
  @override
  @JsonKey(ignore: true)
  _$AppVersionSementicNoCopyWith<_AppVersionSementicNo> get copyWith =>
      throw _privateConstructorUsedError;
}
