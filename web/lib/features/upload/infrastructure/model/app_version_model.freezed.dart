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
  return _AppVersionModel.fromJson(json);
}

/// @nodoc
class _$AppVersionModelTearOff {
  const _$AppVersionModelTearOff();

  _AppVersionModel call(
      {@JsonKey(name: "APK_V", fromJson: _convertStringToAppVersionModel, toJson: _convertAppVersionModelToString)
          required AppVersionSemanticNoModel versionNo,
      @JsonKey(ignore: true)
          XFile? file = null}) {
    return _AppVersionModel(
      versionNo: versionNo,
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
  AppVersionSemanticNoModel get versionNo => throw _privateConstructorUsedError;
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
          AppVersionSemanticNoModel versionNo,
      @JsonKey(ignore: true)
          XFile? file});

  $AppVersionSemanticNoModelCopyWith<$Res> get versionNo;
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
    Object? versionNo = freezed,
    Object? file = freezed,
  }) {
    return _then(_value.copyWith(
      versionNo: versionNo == freezed
          ? _value.versionNo
          : versionNo // ignore: cast_nullable_to_non_nullable
              as AppVersionSemanticNoModel,
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }

  @override
  $AppVersionSemanticNoModelCopyWith<$Res> get versionNo {
    return $AppVersionSemanticNoModelCopyWith<$Res>(_value.versionNo, (value) {
      return _then(_value.copyWith(versionNo: value));
    });
  }
}

/// @nodoc
abstract class _$AppVersionModelCopyWith<$Res>
    implements $AppVersionModelCopyWith<$Res> {
  factory _$AppVersionModelCopyWith(
          _AppVersionModel value, $Res Function(_AppVersionModel) then) =
      __$AppVersionModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "APK_V", fromJson: _convertStringToAppVersionModel, toJson: _convertAppVersionModelToString)
          AppVersionSemanticNoModel versionNo,
      @JsonKey(ignore: true)
          XFile? file});

  @override
  $AppVersionSemanticNoModelCopyWith<$Res> get versionNo;
}

/// @nodoc
class __$AppVersionModelCopyWithImpl<$Res>
    extends _$AppVersionModelCopyWithImpl<$Res>
    implements _$AppVersionModelCopyWith<$Res> {
  __$AppVersionModelCopyWithImpl(
      _AppVersionModel _value, $Res Function(_AppVersionModel) _then)
      : super(_value, (v) => _then(v as _AppVersionModel));

  @override
  _AppVersionModel get _value => super._value as _AppVersionModel;

  @override
  $Res call({
    Object? versionNo = freezed,
    Object? file = freezed,
  }) {
    return _then(_AppVersionModel(
      versionNo: versionNo == freezed
          ? _value.versionNo
          : versionNo // ignore: cast_nullable_to_non_nullable
              as AppVersionSemanticNoModel,
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppVersionModel extends _AppVersionModel {
  const _$_AppVersionModel(
      {@JsonKey(name: "APK_V", fromJson: _convertStringToAppVersionModel, toJson: _convertAppVersionModelToString)
          required this.versionNo,
      @JsonKey(ignore: true)
          this.file = null})
      : super._();

  factory _$_AppVersionModel.fromJson(Map<String, dynamic> json) =>
      _$$_AppVersionModelFromJson(json);

  @override
  @JsonKey(
      name: "APK_V",
      fromJson: _convertStringToAppVersionModel,
      toJson: _convertAppVersionModelToString)
  final AppVersionSemanticNoModel versionNo;
  @override
  @JsonKey(ignore: true)
  final XFile? file;

  @override
  String toString() {
    return 'AppVersionModel(versionNo: $versionNo, file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppVersionModel &&
            const DeepCollectionEquality().equals(other.versionNo, versionNo) &&
            const DeepCollectionEquality().equals(other.file, file));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(versionNo),
      const DeepCollectionEquality().hash(file));

  @JsonKey(ignore: true)
  @override
  _$AppVersionModelCopyWith<_AppVersionModel> get copyWith =>
      __$AppVersionModelCopyWithImpl<_AppVersionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppVersionModelToJson(this);
  }
}

abstract class _AppVersionModel extends AppVersionModel {
  const factory _AppVersionModel(
      {@JsonKey(name: "APK_V", fromJson: _convertStringToAppVersionModel, toJson: _convertAppVersionModelToString)
          required AppVersionSemanticNoModel versionNo,
      @JsonKey(ignore: true)
          XFile? file}) = _$_AppVersionModel;
  const _AppVersionModel._() : super._();

  factory _AppVersionModel.fromJson(Map<String, dynamic> json) =
      _$_AppVersionModel.fromJson;

  @override
  @JsonKey(
      name: "APK_V",
      fromJson: _convertStringToAppVersionModel,
      toJson: _convertAppVersionModelToString)
  AppVersionSemanticNoModel get versionNo;
  @override
  @JsonKey(ignore: true)
  XFile? get file;
  @override
  @JsonKey(ignore: true)
  _$AppVersionModelCopyWith<_AppVersionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

AppVersionSemanticNoModel _$AppVersionSemanticNoModelFromJson(
    Map<String, dynamic> json) {
  return _AppVersionSemanticNoModel.fromJson(json);
}

/// @nodoc
class _$AppVersionSemanticNoModelTearOff {
  const _$AppVersionSemanticNoModelTearOff();

  _AppVersionSemanticNoModel call(
      {required int majorNum, required int minorNum, required int patchNum}) {
    return _AppVersionSemanticNoModel(
      majorNum: majorNum,
      minorNum: minorNum,
      patchNum: patchNum,
    );
  }

  AppVersionSemanticNoModel fromJson(Map<String, Object?> json) {
    return AppVersionSemanticNoModel.fromJson(json);
  }
}

/// @nodoc
const $AppVersionSemanticNoModel = _$AppVersionSemanticNoModelTearOff();

/// @nodoc
mixin _$AppVersionSemanticNoModel {
  int get majorNum => throw _privateConstructorUsedError;
  int get minorNum => throw _privateConstructorUsedError;
  int get patchNum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppVersionSemanticNoModelCopyWith<AppVersionSemanticNoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppVersionSemanticNoModelCopyWith<$Res> {
  factory $AppVersionSemanticNoModelCopyWith(AppVersionSemanticNoModel value,
          $Res Function(AppVersionSemanticNoModel) then) =
      _$AppVersionSemanticNoModelCopyWithImpl<$Res>;
  $Res call({int majorNum, int minorNum, int patchNum});
}

/// @nodoc
class _$AppVersionSemanticNoModelCopyWithImpl<$Res>
    implements $AppVersionSemanticNoModelCopyWith<$Res> {
  _$AppVersionSemanticNoModelCopyWithImpl(this._value, this._then);

  final AppVersionSemanticNoModel _value;
  // ignore: unused_field
  final $Res Function(AppVersionSemanticNoModel) _then;

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
abstract class _$AppVersionSemanticNoModelCopyWith<$Res>
    implements $AppVersionSemanticNoModelCopyWith<$Res> {
  factory _$AppVersionSemanticNoModelCopyWith(_AppVersionSemanticNoModel value,
          $Res Function(_AppVersionSemanticNoModel) then) =
      __$AppVersionSemanticNoModelCopyWithImpl<$Res>;
  @override
  $Res call({int majorNum, int minorNum, int patchNum});
}

/// @nodoc
class __$AppVersionSemanticNoModelCopyWithImpl<$Res>
    extends _$AppVersionSemanticNoModelCopyWithImpl<$Res>
    implements _$AppVersionSemanticNoModelCopyWith<$Res> {
  __$AppVersionSemanticNoModelCopyWithImpl(_AppVersionSemanticNoModel _value,
      $Res Function(_AppVersionSemanticNoModel) _then)
      : super(_value, (v) => _then(v as _AppVersionSemanticNoModel));

  @override
  _AppVersionSemanticNoModel get _value =>
      super._value as _AppVersionSemanticNoModel;

  @override
  $Res call({
    Object? majorNum = freezed,
    Object? minorNum = freezed,
    Object? patchNum = freezed,
  }) {
    return _then(_AppVersionSemanticNoModel(
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
@JsonSerializable()
class _$_AppVersionSemanticNoModel extends _AppVersionSemanticNoModel {
  const _$_AppVersionSemanticNoModel(
      {required this.majorNum, required this.minorNum, required this.patchNum})
      : super._();

  factory _$_AppVersionSemanticNoModel.fromJson(Map<String, dynamic> json) =>
      _$$_AppVersionSemanticNoModelFromJson(json);

  @override
  final int majorNum;
  @override
  final int minorNum;
  @override
  final int patchNum;

  @override
  String toString() {
    return 'AppVersionSemanticNoModel(majorNum: $majorNum, minorNum: $minorNum, patchNum: $patchNum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppVersionSemanticNoModel &&
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
  _$AppVersionSemanticNoModelCopyWith<_AppVersionSemanticNoModel>
      get copyWith =>
          __$AppVersionSemanticNoModelCopyWithImpl<_AppVersionSemanticNoModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppVersionSemanticNoModelToJson(this);
  }
}

abstract class _AppVersionSemanticNoModel extends AppVersionSemanticNoModel {
  const factory _AppVersionSemanticNoModel(
      {required int majorNum,
      required int minorNum,
      required int patchNum}) = _$_AppVersionSemanticNoModel;
  const _AppVersionSemanticNoModel._() : super._();

  factory _AppVersionSemanticNoModel.fromJson(Map<String, dynamic> json) =
      _$_AppVersionSemanticNoModel.fromJson;

  @override
  int get majorNum;
  @override
  int get minorNum;
  @override
  int get patchNum;
  @override
  @JsonKey(ignore: true)
  _$AppVersionSemanticNoModelCopyWith<_AppVersionSemanticNoModel>
      get copyWith => throw _privateConstructorUsedError;
}
