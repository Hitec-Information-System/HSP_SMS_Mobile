// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_version_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppVersionModel _$AppVersionModelFromJson(Map<String, dynamic> json) {
  return _AppVersion.fromJson(json);
}

/// @nodoc
class _$AppVersionModelTearOff {
  const _$AppVersionModelTearOff();

  _AppVersion call(
      {@JsonKey(name: "APK_V", fromJson: _convertStringToAppVersionModel, toJson: _convertAppVersionModelToString)
          required AppVersionInfoModel info,
      @JsonKey(ignore: true)
          XFile? file = null}) {
    return _AppVersion(
      info: info,
      file: file,
    );
  }

  AppVersionModel fromJson(Map<String, Object?> json) {
    return AppVersionModel.fromJson(json);
  }
}

/// @nodoc
const $AppVersionModel = _$AppVersionModelTearOff();

/// @nodoc
mixin _$AppVersionModel {
  @JsonKey(
      name: "APK_V",
      fromJson: _convertStringToAppVersionModel,
      toJson: _convertAppVersionModelToString)
  AppVersionInfoModel get info => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  XFile? get file => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppVersionModelCopyWith<AppVersionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppVersionModelCopyWith<$Res> {
  factory $AppVersionModelCopyWith(
          AppVersionModel value, $Res Function(AppVersionModel) then) =
      _$AppVersionModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "APK_V", fromJson: _convertStringToAppVersionModel, toJson: _convertAppVersionModelToString)
          AppVersionInfoModel info,
      @JsonKey(ignore: true)
          XFile? file});

  $AppVersionInfoModelCopyWith<$Res> get info;
}

/// @nodoc
class _$AppVersionModelCopyWithImpl<$Res>
    implements $AppVersionModelCopyWith<$Res> {
  _$AppVersionModelCopyWithImpl(this._value, this._then);

  final AppVersionModel _value;
  // ignore: unused_field
  final $Res Function(AppVersionModel) _then;

  @override
  $Res call({
    Object? info = freezed,
    Object? file = freezed,
  }) {
    return _then(_value.copyWith(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as AppVersionInfoModel,
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }

  @override
  $AppVersionInfoModelCopyWith<$Res> get info {
    return $AppVersionInfoModelCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc
abstract class _$AppVersionCopyWith<$Res>
    implements $AppVersionModelCopyWith<$Res> {
  factory _$AppVersionCopyWith(
          _AppVersion value, $Res Function(_AppVersion) then) =
      __$AppVersionCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "APK_V", fromJson: _convertStringToAppVersionModel, toJson: _convertAppVersionModelToString)
          AppVersionInfoModel info,
      @JsonKey(ignore: true)
          XFile? file});

  @override
  $AppVersionInfoModelCopyWith<$Res> get info;
}

/// @nodoc
class __$AppVersionCopyWithImpl<$Res>
    extends _$AppVersionModelCopyWithImpl<$Res>
    implements _$AppVersionCopyWith<$Res> {
  __$AppVersionCopyWithImpl(
      _AppVersion _value, $Res Function(_AppVersion) _then)
      : super(_value, (v) => _then(v as _AppVersion));

  @override
  _AppVersion get _value => super._value as _AppVersion;

  @override
  $Res call({
    Object? info = freezed,
    Object? file = freezed,
  }) {
    return _then(_AppVersion(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as AppVersionInfoModel,
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppVersion extends _AppVersion {
  const _$_AppVersion(
      {@JsonKey(name: "APK_V", fromJson: _convertStringToAppVersionModel, toJson: _convertAppVersionModelToString)
          required this.info,
      @JsonKey(ignore: true)
          this.file = null})
      : super._();

  factory _$_AppVersion.fromJson(Map<String, dynamic> json) =>
      _$$_AppVersionFromJson(json);

  @override
  @JsonKey(
      name: "APK_V",
      fromJson: _convertStringToAppVersionModel,
      toJson: _convertAppVersionModelToString)
  final AppVersionInfoModel info;
  @override
  @JsonKey(ignore: true)
  final XFile? file;

  @override
  String toString() {
    return 'AppVersionModel(info: $info, file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppVersion &&
            const DeepCollectionEquality().equals(other.info, info) &&
            const DeepCollectionEquality().equals(other.file, file));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(info),
      const DeepCollectionEquality().hash(file));

  @JsonKey(ignore: true)
  @override
  _$AppVersionCopyWith<_AppVersion> get copyWith =>
      __$AppVersionCopyWithImpl<_AppVersion>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppVersionToJson(this);
  }
}

abstract class _AppVersion extends AppVersionModel {
  const factory _AppVersion(
      {@JsonKey(name: "APK_V", fromJson: _convertStringToAppVersionModel, toJson: _convertAppVersionModelToString)
          required AppVersionInfoModel info,
      @JsonKey(ignore: true)
          XFile? file}) = _$_AppVersion;
  const _AppVersion._() : super._();

  factory _AppVersion.fromJson(Map<String, dynamic> json) =
      _$_AppVersion.fromJson;

  @override
  @JsonKey(
      name: "APK_V",
      fromJson: _convertStringToAppVersionModel,
      toJson: _convertAppVersionModelToString)
  AppVersionInfoModel get info;
  @override
  @JsonKey(ignore: true)
  XFile? get file;
  @override
  @JsonKey(ignore: true)
  _$AppVersionCopyWith<_AppVersion> get copyWith =>
      throw _privateConstructorUsedError;
}

AppVersionInfoModel _$AppVersionInfoModelFromJson(Map<String, dynamic> json) {
  return _AppVersionInfoModel.fromJson(json);
}

/// @nodoc
class _$AppVersionInfoModelTearOff {
  const _$AppVersionInfoModelTearOff();

  _AppVersionInfoModel call(
      {required int major, required int minor, required int patch}) {
    return _AppVersionInfoModel(
      major: major,
      minor: minor,
      patch: patch,
    );
  }

  AppVersionInfoModel fromJson(Map<String, Object?> json) {
    return AppVersionInfoModel.fromJson(json);
  }
}

/// @nodoc
const $AppVersionInfoModel = _$AppVersionInfoModelTearOff();

/// @nodoc
mixin _$AppVersionInfoModel {
  int get major => throw _privateConstructorUsedError;
  int get minor => throw _privateConstructorUsedError;
  int get patch => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppVersionInfoModelCopyWith<AppVersionInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppVersionInfoModelCopyWith<$Res> {
  factory $AppVersionInfoModelCopyWith(
          AppVersionInfoModel value, $Res Function(AppVersionInfoModel) then) =
      _$AppVersionInfoModelCopyWithImpl<$Res>;
  $Res call({int major, int minor, int patch});
}

/// @nodoc
class _$AppVersionInfoModelCopyWithImpl<$Res>
    implements $AppVersionInfoModelCopyWith<$Res> {
  _$AppVersionInfoModelCopyWithImpl(this._value, this._then);

  final AppVersionInfoModel _value;
  // ignore: unused_field
  final $Res Function(AppVersionInfoModel) _then;

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
abstract class _$AppVersionInfoModelCopyWith<$Res>
    implements $AppVersionInfoModelCopyWith<$Res> {
  factory _$AppVersionInfoModelCopyWith(_AppVersionInfoModel value,
          $Res Function(_AppVersionInfoModel) then) =
      __$AppVersionInfoModelCopyWithImpl<$Res>;
  @override
  $Res call({int major, int minor, int patch});
}

/// @nodoc
class __$AppVersionInfoModelCopyWithImpl<$Res>
    extends _$AppVersionInfoModelCopyWithImpl<$Res>
    implements _$AppVersionInfoModelCopyWith<$Res> {
  __$AppVersionInfoModelCopyWithImpl(
      _AppVersionInfoModel _value, $Res Function(_AppVersionInfoModel) _then)
      : super(_value, (v) => _then(v as _AppVersionInfoModel));

  @override
  _AppVersionInfoModel get _value => super._value as _AppVersionInfoModel;

  @override
  $Res call({
    Object? major = freezed,
    Object? minor = freezed,
    Object? patch = freezed,
  }) {
    return _then(_AppVersionInfoModel(
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
@JsonSerializable()
class _$_AppVersionInfoModel extends _AppVersionInfoModel {
  const _$_AppVersionInfoModel(
      {required this.major, required this.minor, required this.patch})
      : super._();

  factory _$_AppVersionInfoModel.fromJson(Map<String, dynamic> json) =>
      _$$_AppVersionInfoModelFromJson(json);

  @override
  final int major;
  @override
  final int minor;
  @override
  final int patch;

  @override
  String toString() {
    return 'AppVersionInfoModel(major: $major, minor: $minor, patch: $patch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppVersionInfoModel &&
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
  _$AppVersionInfoModelCopyWith<_AppVersionInfoModel> get copyWith =>
      __$AppVersionInfoModelCopyWithImpl<_AppVersionInfoModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppVersionInfoModelToJson(this);
  }
}

abstract class _AppVersionInfoModel extends AppVersionInfoModel {
  const factory _AppVersionInfoModel(
      {required int major,
      required int minor,
      required int patch}) = _$_AppVersionInfoModel;
  const _AppVersionInfoModel._() : super._();

  factory _AppVersionInfoModel.fromJson(Map<String, dynamic> json) =
      _$_AppVersionInfoModel.fromJson;

  @override
  int get major;
  @override
  int get minor;
  @override
  int get patch;
  @override
  @JsonKey(ignore: true)
  _$AppVersionInfoModelCopyWith<_AppVersionInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
