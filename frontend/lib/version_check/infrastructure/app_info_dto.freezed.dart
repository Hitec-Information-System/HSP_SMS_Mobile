// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'app_info_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppInfoDTO _$AppInfoDTOFromJson(Map<String, dynamic> json) {
  return _AppInfoDTO.fromJson(json);
}

/// @nodoc
class _$AppInfoDTOTearOff {
  const _$AppInfoDTOTearOff();

  _AppInfoDTO call({@JsonKey(name: "APK_V") required String version}) {
    return _AppInfoDTO(
      version: version,
    );
  }

  AppInfoDTO fromJson(Map<String, Object> json) {
    return AppInfoDTO.fromJson(json);
  }
}

/// @nodoc
const $AppInfoDTO = _$AppInfoDTOTearOff();

/// @nodoc
mixin _$AppInfoDTO {
  @JsonKey(name: "APK_V")
  String get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppInfoDTOCopyWith<AppInfoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppInfoDTOCopyWith<$Res> {
  factory $AppInfoDTOCopyWith(
          AppInfoDTO value, $Res Function(AppInfoDTO) then) =
      _$AppInfoDTOCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "APK_V") String version});
}

/// @nodoc
class _$AppInfoDTOCopyWithImpl<$Res> implements $AppInfoDTOCopyWith<$Res> {
  _$AppInfoDTOCopyWithImpl(this._value, this._then);

  final AppInfoDTO _value;
  // ignore: unused_field
  final $Res Function(AppInfoDTO) _then;

  @override
  $Res call({
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AppInfoDTOCopyWith<$Res> implements $AppInfoDTOCopyWith<$Res> {
  factory _$AppInfoDTOCopyWith(
          _AppInfoDTO value, $Res Function(_AppInfoDTO) then) =
      __$AppInfoDTOCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "APK_V") String version});
}

/// @nodoc
class __$AppInfoDTOCopyWithImpl<$Res> extends _$AppInfoDTOCopyWithImpl<$Res>
    implements _$AppInfoDTOCopyWith<$Res> {
  __$AppInfoDTOCopyWithImpl(
      _AppInfoDTO _value, $Res Function(_AppInfoDTO) _then)
      : super(_value, (v) => _then(v as _AppInfoDTO));

  @override
  _AppInfoDTO get _value => super._value as _AppInfoDTO;

  @override
  $Res call({
    Object? version = freezed,
  }) {
    return _then(_AppInfoDTO(
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppInfoDTO extends _AppInfoDTO {
  const _$_AppInfoDTO({@JsonKey(name: "APK_V") required this.version})
      : super._();

  factory _$_AppInfoDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_AppInfoDTOFromJson(json);

  @override
  @JsonKey(name: "APK_V")
  final String version;

  @override
  String toString() {
    return 'AppInfoDTO(version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppInfoDTO &&
            (identical(other.version, version) ||
                const DeepCollectionEquality().equals(other.version, version)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(version);

  @JsonKey(ignore: true)
  @override
  _$AppInfoDTOCopyWith<_AppInfoDTO> get copyWith =>
      __$AppInfoDTOCopyWithImpl<_AppInfoDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AppInfoDTOToJson(this);
  }
}

abstract class _AppInfoDTO extends AppInfoDTO {
  const factory _AppInfoDTO({@JsonKey(name: "APK_V") required String version}) =
      _$_AppInfoDTO;
  const _AppInfoDTO._() : super._();

  factory _AppInfoDTO.fromJson(Map<String, dynamic> json) =
      _$_AppInfoDTO.fromJson;

  @override
  @JsonKey(name: "APK_V")
  String get version => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AppInfoDTOCopyWith<_AppInfoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
