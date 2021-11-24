// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'version_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VersionDTO _$VersionDTOFromJson(Map<String, dynamic> json) {
  return _VersionDTO.fromJson(json);
}

/// @nodoc
class _$VersionDTOTearOff {
  const _$VersionDTOTearOff();

  _VersionDTO call(
      {@JsonKey(name: "APK_V", fromJson: _tearDownStringToSemVer, toJson: _mergeSemVerToString)
          required VersionNoDTO versionNo,
      @JsonKey(ignore: true)
          FilePickerResult? versionFile = null}) {
    return _VersionDTO(
      versionNo: versionNo,
      versionFile: versionFile,
    );
  }

  VersionDTO fromJson(Map<String, Object?> json) {
    return VersionDTO.fromJson(json);
  }
}

/// @nodoc
const $VersionDTO = _$VersionDTOTearOff();

/// @nodoc
mixin _$VersionDTO {
  @JsonKey(
      name: "APK_V",
      fromJson: _tearDownStringToSemVer,
      toJson: _mergeSemVerToString)
  VersionNoDTO get versionNo => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  FilePickerResult? get versionFile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VersionDTOCopyWith<VersionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VersionDTOCopyWith<$Res> {
  factory $VersionDTOCopyWith(
          VersionDTO value, $Res Function(VersionDTO) then) =
      _$VersionDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "APK_V", fromJson: _tearDownStringToSemVer, toJson: _mergeSemVerToString)
          VersionNoDTO versionNo,
      @JsonKey(ignore: true)
          FilePickerResult? versionFile});

  $VersionNoDTOCopyWith<$Res> get versionNo;
}

/// @nodoc
class _$VersionDTOCopyWithImpl<$Res> implements $VersionDTOCopyWith<$Res> {
  _$VersionDTOCopyWithImpl(this._value, this._then);

  final VersionDTO _value;
  // ignore: unused_field
  final $Res Function(VersionDTO) _then;

  @override
  $Res call({
    Object? versionNo = freezed,
    Object? versionFile = freezed,
  }) {
    return _then(_value.copyWith(
      versionNo: versionNo == freezed
          ? _value.versionNo
          : versionNo // ignore: cast_nullable_to_non_nullable
              as VersionNoDTO,
      versionFile: versionFile == freezed
          ? _value.versionFile
          : versionFile // ignore: cast_nullable_to_non_nullable
              as FilePickerResult?,
    ));
  }

  @override
  $VersionNoDTOCopyWith<$Res> get versionNo {
    return $VersionNoDTOCopyWith<$Res>(_value.versionNo, (value) {
      return _then(_value.copyWith(versionNo: value));
    });
  }
}

/// @nodoc
abstract class _$VersionDTOCopyWith<$Res> implements $VersionDTOCopyWith<$Res> {
  factory _$VersionDTOCopyWith(
          _VersionDTO value, $Res Function(_VersionDTO) then) =
      __$VersionDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "APK_V", fromJson: _tearDownStringToSemVer, toJson: _mergeSemVerToString)
          VersionNoDTO versionNo,
      @JsonKey(ignore: true)
          FilePickerResult? versionFile});

  @override
  $VersionNoDTOCopyWith<$Res> get versionNo;
}

/// @nodoc
class __$VersionDTOCopyWithImpl<$Res> extends _$VersionDTOCopyWithImpl<$Res>
    implements _$VersionDTOCopyWith<$Res> {
  __$VersionDTOCopyWithImpl(
      _VersionDTO _value, $Res Function(_VersionDTO) _then)
      : super(_value, (v) => _then(v as _VersionDTO));

  @override
  _VersionDTO get _value => super._value as _VersionDTO;

  @override
  $Res call({
    Object? versionNo = freezed,
    Object? versionFile = freezed,
  }) {
    return _then(_VersionDTO(
      versionNo: versionNo == freezed
          ? _value.versionNo
          : versionNo // ignore: cast_nullable_to_non_nullable
              as VersionNoDTO,
      versionFile: versionFile == freezed
          ? _value.versionFile
          : versionFile // ignore: cast_nullable_to_non_nullable
              as FilePickerResult?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VersionDTO extends _VersionDTO {
  const _$_VersionDTO(
      {@JsonKey(name: "APK_V", fromJson: _tearDownStringToSemVer, toJson: _mergeSemVerToString)
          required this.versionNo,
      @JsonKey(ignore: true)
          this.versionFile = null})
      : super._();

  factory _$_VersionDTO.fromJson(Map<String, dynamic> json) =>
      _$$_VersionDTOFromJson(json);

  @override
  @JsonKey(
      name: "APK_V",
      fromJson: _tearDownStringToSemVer,
      toJson: _mergeSemVerToString)
  final VersionNoDTO versionNo;
  @override
  @JsonKey(ignore: true)
  final FilePickerResult? versionFile;

  @override
  String toString() {
    return 'VersionDTO(versionNo: $versionNo, versionFile: $versionFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VersionDTO &&
            (identical(other.versionNo, versionNo) ||
                other.versionNo == versionNo) &&
            (identical(other.versionFile, versionFile) ||
                other.versionFile == versionFile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, versionNo, versionFile);

  @JsonKey(ignore: true)
  @override
  _$VersionDTOCopyWith<_VersionDTO> get copyWith =>
      __$VersionDTOCopyWithImpl<_VersionDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VersionDTOToJson(this);
  }
}

abstract class _VersionDTO extends VersionDTO {
  const factory _VersionDTO(
      {@JsonKey(name: "APK_V", fromJson: _tearDownStringToSemVer, toJson: _mergeSemVerToString)
          required VersionNoDTO versionNo,
      @JsonKey(ignore: true)
          FilePickerResult? versionFile}) = _$_VersionDTO;
  const _VersionDTO._() : super._();

  factory _VersionDTO.fromJson(Map<String, dynamic> json) =
      _$_VersionDTO.fromJson;

  @override
  @JsonKey(
      name: "APK_V",
      fromJson: _tearDownStringToSemVer,
      toJson: _mergeSemVerToString)
  VersionNoDTO get versionNo;
  @override
  @JsonKey(ignore: true)
  FilePickerResult? get versionFile;
  @override
  @JsonKey(ignore: true)
  _$VersionDTOCopyWith<_VersionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

VersionNoDTO _$VersionNoDTOFromJson(Map<String, dynamic> json) {
  return _VersionNoDTO.fromJson(json);
}

/// @nodoc
class _$VersionNoDTOTearOff {
  const _$VersionNoDTOTearOff();

  _VersionNoDTO call(
      {required int? major, required int? minor, required int? patch}) {
    return _VersionNoDTO(
      major: major,
      minor: minor,
      patch: patch,
    );
  }

  VersionNoDTO fromJson(Map<String, Object?> json) {
    return VersionNoDTO.fromJson(json);
  }
}

/// @nodoc
const $VersionNoDTO = _$VersionNoDTOTearOff();

/// @nodoc
mixin _$VersionNoDTO {
  int? get major => throw _privateConstructorUsedError;
  int? get minor => throw _privateConstructorUsedError;
  int? get patch => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VersionNoDTOCopyWith<VersionNoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VersionNoDTOCopyWith<$Res> {
  factory $VersionNoDTOCopyWith(
          VersionNoDTO value, $Res Function(VersionNoDTO) then) =
      _$VersionNoDTOCopyWithImpl<$Res>;
  $Res call({int? major, int? minor, int? patch});
}

/// @nodoc
class _$VersionNoDTOCopyWithImpl<$Res> implements $VersionNoDTOCopyWith<$Res> {
  _$VersionNoDTOCopyWithImpl(this._value, this._then);

  final VersionNoDTO _value;
  // ignore: unused_field
  final $Res Function(VersionNoDTO) _then;

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
              as int?,
      minor: minor == freezed
          ? _value.minor
          : minor // ignore: cast_nullable_to_non_nullable
              as int?,
      patch: patch == freezed
          ? _value.patch
          : patch // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$VersionNoDTOCopyWith<$Res>
    implements $VersionNoDTOCopyWith<$Res> {
  factory _$VersionNoDTOCopyWith(
          _VersionNoDTO value, $Res Function(_VersionNoDTO) then) =
      __$VersionNoDTOCopyWithImpl<$Res>;
  @override
  $Res call({int? major, int? minor, int? patch});
}

/// @nodoc
class __$VersionNoDTOCopyWithImpl<$Res> extends _$VersionNoDTOCopyWithImpl<$Res>
    implements _$VersionNoDTOCopyWith<$Res> {
  __$VersionNoDTOCopyWithImpl(
      _VersionNoDTO _value, $Res Function(_VersionNoDTO) _then)
      : super(_value, (v) => _then(v as _VersionNoDTO));

  @override
  _VersionNoDTO get _value => super._value as _VersionNoDTO;

  @override
  $Res call({
    Object? major = freezed,
    Object? minor = freezed,
    Object? patch = freezed,
  }) {
    return _then(_VersionNoDTO(
      major: major == freezed
          ? _value.major
          : major // ignore: cast_nullable_to_non_nullable
              as int?,
      minor: minor == freezed
          ? _value.minor
          : minor // ignore: cast_nullable_to_non_nullable
              as int?,
      patch: patch == freezed
          ? _value.patch
          : patch // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VersionNoDTO extends _VersionNoDTO {
  const _$_VersionNoDTO(
      {required this.major, required this.minor, required this.patch})
      : super._();

  factory _$_VersionNoDTO.fromJson(Map<String, dynamic> json) =>
      _$$_VersionNoDTOFromJson(json);

  @override
  final int? major;
  @override
  final int? minor;
  @override
  final int? patch;

  @override
  String toString() {
    return 'VersionNoDTO(major: $major, minor: $minor, patch: $patch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VersionNoDTO &&
            (identical(other.major, major) || other.major == major) &&
            (identical(other.minor, minor) || other.minor == minor) &&
            (identical(other.patch, patch) || other.patch == patch));
  }

  @override
  int get hashCode => Object.hash(runtimeType, major, minor, patch);

  @JsonKey(ignore: true)
  @override
  _$VersionNoDTOCopyWith<_VersionNoDTO> get copyWith =>
      __$VersionNoDTOCopyWithImpl<_VersionNoDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VersionNoDTOToJson(this);
  }
}

abstract class _VersionNoDTO extends VersionNoDTO {
  const factory _VersionNoDTO(
      {required int? major,
      required int? minor,
      required int? patch}) = _$_VersionNoDTO;
  const _VersionNoDTO._() : super._();

  factory _VersionNoDTO.fromJson(Map<String, dynamic> json) =
      _$_VersionNoDTO.fromJson;

  @override
  int? get major;
  @override
  int? get minor;
  @override
  int? get patch;
  @override
  @JsonKey(ignore: true)
  _$VersionNoDTOCopyWith<_VersionNoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
