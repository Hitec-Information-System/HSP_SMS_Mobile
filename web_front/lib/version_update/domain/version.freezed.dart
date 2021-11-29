// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'version.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VersionTearOff {
  const _$VersionTearOff();

  _Version call({required VersionNo versionNo, VersionFile? versionFile}) {
    return _Version(
      versionNo: versionNo,
      versionFile: versionFile,
    );
  }
}

/// @nodoc
const $Version = _$VersionTearOff();

/// @nodoc
mixin _$Version {
  VersionNo get versionNo => throw _privateConstructorUsedError;
  VersionFile? get versionFile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VersionCopyWith<Version> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VersionCopyWith<$Res> {
  factory $VersionCopyWith(Version value, $Res Function(Version) then) =
      _$VersionCopyWithImpl<$Res>;
  $Res call({VersionNo versionNo, VersionFile? versionFile});

  $VersionNoCopyWith<$Res> get versionNo;
  $VersionFileCopyWith<$Res>? get versionFile;
}

/// @nodoc
class _$VersionCopyWithImpl<$Res> implements $VersionCopyWith<$Res> {
  _$VersionCopyWithImpl(this._value, this._then);

  final Version _value;
  // ignore: unused_field
  final $Res Function(Version) _then;

  @override
  $Res call({
    Object? versionNo = freezed,
    Object? versionFile = freezed,
  }) {
    return _then(_value.copyWith(
      versionNo: versionNo == freezed
          ? _value.versionNo
          : versionNo // ignore: cast_nullable_to_non_nullable
              as VersionNo,
      versionFile: versionFile == freezed
          ? _value.versionFile
          : versionFile // ignore: cast_nullable_to_non_nullable
              as VersionFile?,
    ));
  }

  @override
  $VersionNoCopyWith<$Res> get versionNo {
    return $VersionNoCopyWith<$Res>(_value.versionNo, (value) {
      return _then(_value.copyWith(versionNo: value));
    });
  }

  @override
  $VersionFileCopyWith<$Res>? get versionFile {
    if (_value.versionFile == null) {
      return null;
    }

    return $VersionFileCopyWith<$Res>(_value.versionFile!, (value) {
      return _then(_value.copyWith(versionFile: value));
    });
  }
}

/// @nodoc
abstract class _$VersionCopyWith<$Res> implements $VersionCopyWith<$Res> {
  factory _$VersionCopyWith(_Version value, $Res Function(_Version) then) =
      __$VersionCopyWithImpl<$Res>;
  @override
  $Res call({VersionNo versionNo, VersionFile? versionFile});

  @override
  $VersionNoCopyWith<$Res> get versionNo;
  @override
  $VersionFileCopyWith<$Res>? get versionFile;
}

/// @nodoc
class __$VersionCopyWithImpl<$Res> extends _$VersionCopyWithImpl<$Res>
    implements _$VersionCopyWith<$Res> {
  __$VersionCopyWithImpl(_Version _value, $Res Function(_Version) _then)
      : super(_value, (v) => _then(v as _Version));

  @override
  _Version get _value => super._value as _Version;

  @override
  $Res call({
    Object? versionNo = freezed,
    Object? versionFile = freezed,
  }) {
    return _then(_Version(
      versionNo: versionNo == freezed
          ? _value.versionNo
          : versionNo // ignore: cast_nullable_to_non_nullable
              as VersionNo,
      versionFile: versionFile == freezed
          ? _value.versionFile
          : versionFile // ignore: cast_nullable_to_non_nullable
              as VersionFile?,
    ));
  }
}

/// @nodoc

class _$_Version extends _Version {
  const _$_Version({required this.versionNo, this.versionFile}) : super._();

  @override
  final VersionNo versionNo;
  @override
  final VersionFile? versionFile;

  @override
  String toString() {
    return 'Version(versionNo: $versionNo, versionFile: $versionFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Version &&
            (identical(other.versionNo, versionNo) ||
                other.versionNo == versionNo) &&
            (identical(other.versionFile, versionFile) ||
                other.versionFile == versionFile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, versionNo, versionFile);

  @JsonKey(ignore: true)
  @override
  _$VersionCopyWith<_Version> get copyWith =>
      __$VersionCopyWithImpl<_Version>(this, _$identity);
}

abstract class _Version extends Version {
  const factory _Version(
      {required VersionNo versionNo, VersionFile? versionFile}) = _$_Version;
  const _Version._() : super._();

  @override
  VersionNo get versionNo;
  @override
  VersionFile? get versionFile;
  @override
  @JsonKey(ignore: true)
  _$VersionCopyWith<_Version> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$VersionNoTearOff {
  const _$VersionNoTearOff();

  _VersionNo call(
      {required int major, required int minor, required int patch}) {
    return _VersionNo(
      major: major,
      minor: minor,
      patch: patch,
    );
  }
}

/// @nodoc
const $VersionNo = _$VersionNoTearOff();

/// @nodoc
mixin _$VersionNo {
  int get major => throw _privateConstructorUsedError;
  int get minor => throw _privateConstructorUsedError;
  int get patch => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VersionNoCopyWith<VersionNo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VersionNoCopyWith<$Res> {
  factory $VersionNoCopyWith(VersionNo value, $Res Function(VersionNo) then) =
      _$VersionNoCopyWithImpl<$Res>;
  $Res call({int major, int minor, int patch});
}

/// @nodoc
class _$VersionNoCopyWithImpl<$Res> implements $VersionNoCopyWith<$Res> {
  _$VersionNoCopyWithImpl(this._value, this._then);

  final VersionNo _value;
  // ignore: unused_field
  final $Res Function(VersionNo) _then;

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
abstract class _$VersionNoCopyWith<$Res> implements $VersionNoCopyWith<$Res> {
  factory _$VersionNoCopyWith(
          _VersionNo value, $Res Function(_VersionNo) then) =
      __$VersionNoCopyWithImpl<$Res>;
  @override
  $Res call({int major, int minor, int patch});
}

/// @nodoc
class __$VersionNoCopyWithImpl<$Res> extends _$VersionNoCopyWithImpl<$Res>
    implements _$VersionNoCopyWith<$Res> {
  __$VersionNoCopyWithImpl(_VersionNo _value, $Res Function(_VersionNo) _then)
      : super(_value, (v) => _then(v as _VersionNo));

  @override
  _VersionNo get _value => super._value as _VersionNo;

  @override
  $Res call({
    Object? major = freezed,
    Object? minor = freezed,
    Object? patch = freezed,
  }) {
    return _then(_VersionNo(
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

class _$_VersionNo extends _VersionNo {
  const _$_VersionNo(
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
    return 'VersionNo(major: $major, minor: $minor, patch: $patch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VersionNo &&
            (identical(other.major, major) || other.major == major) &&
            (identical(other.minor, minor) || other.minor == minor) &&
            (identical(other.patch, patch) || other.patch == patch));
  }

  @override
  int get hashCode => Object.hash(runtimeType, major, minor, patch);

  @JsonKey(ignore: true)
  @override
  _$VersionNoCopyWith<_VersionNo> get copyWith =>
      __$VersionNoCopyWithImpl<_VersionNo>(this, _$identity);
}

abstract class _VersionNo extends VersionNo {
  const factory _VersionNo(
      {required int major,
      required int minor,
      required int patch}) = _$_VersionNo;
  const _VersionNo._() : super._();

  @override
  int get major;
  @override
  int get minor;
  @override
  int get patch;
  @override
  @JsonKey(ignore: true)
  _$VersionNoCopyWith<_VersionNo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$VersionFileTearOff {
  const _$VersionFileTearOff();

  _VersionFile call(
      {required Uint8List? bytes,
      required String? path,
      required bool isPicked}) {
    return _VersionFile(
      bytes: bytes,
      path: path,
      isPicked: isPicked,
    );
  }
}

/// @nodoc
const $VersionFile = _$VersionFileTearOff();

/// @nodoc
mixin _$VersionFile {
  Uint8List? get bytes => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  bool get isPicked => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VersionFileCopyWith<VersionFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VersionFileCopyWith<$Res> {
  factory $VersionFileCopyWith(
          VersionFile value, $Res Function(VersionFile) then) =
      _$VersionFileCopyWithImpl<$Res>;
  $Res call({Uint8List? bytes, String? path, bool isPicked});
}

/// @nodoc
class _$VersionFileCopyWithImpl<$Res> implements $VersionFileCopyWith<$Res> {
  _$VersionFileCopyWithImpl(this._value, this._then);

  final VersionFile _value;
  // ignore: unused_field
  final $Res Function(VersionFile) _then;

  @override
  $Res call({
    Object? bytes = freezed,
    Object? path = freezed,
    Object? isPicked = freezed,
  }) {
    return _then(_value.copyWith(
      bytes: bytes == freezed
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      isPicked: isPicked == freezed
          ? _value.isPicked
          : isPicked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$VersionFileCopyWith<$Res>
    implements $VersionFileCopyWith<$Res> {
  factory _$VersionFileCopyWith(
          _VersionFile value, $Res Function(_VersionFile) then) =
      __$VersionFileCopyWithImpl<$Res>;
  @override
  $Res call({Uint8List? bytes, String? path, bool isPicked});
}

/// @nodoc
class __$VersionFileCopyWithImpl<$Res> extends _$VersionFileCopyWithImpl<$Res>
    implements _$VersionFileCopyWith<$Res> {
  __$VersionFileCopyWithImpl(
      _VersionFile _value, $Res Function(_VersionFile) _then)
      : super(_value, (v) => _then(v as _VersionFile));

  @override
  _VersionFile get _value => super._value as _VersionFile;

  @override
  $Res call({
    Object? bytes = freezed,
    Object? path = freezed,
    Object? isPicked = freezed,
  }) {
    return _then(_VersionFile(
      bytes: bytes == freezed
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      isPicked: isPicked == freezed
          ? _value.isPicked
          : isPicked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_VersionFile extends _VersionFile {
  const _$_VersionFile(
      {required this.bytes, required this.path, required this.isPicked})
      : super._();

  @override
  final Uint8List? bytes;
  @override
  final String? path;
  @override
  final bool isPicked;

  @override
  String toString() {
    return 'VersionFile(bytes: $bytes, path: $path, isPicked: $isPicked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VersionFile &&
            (identical(other.bytes, bytes) || other.bytes == bytes) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.isPicked, isPicked) ||
                other.isPicked == isPicked));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bytes, path, isPicked);

  @JsonKey(ignore: true)
  @override
  _$VersionFileCopyWith<_VersionFile> get copyWith =>
      __$VersionFileCopyWithImpl<_VersionFile>(this, _$identity);
}

abstract class _VersionFile extends VersionFile {
  const factory _VersionFile(
      {required Uint8List? bytes,
      required String? path,
      required bool isPicked}) = _$_VersionFile;
  const _VersionFile._() : super._();

  @override
  Uint8List? get bytes;
  @override
  String? get path;
  @override
  bool get isPicked;
  @override
  @JsonKey(ignore: true)
  _$VersionFileCopyWith<_VersionFile> get copyWith =>
      throw _privateConstructorUsedError;
}
