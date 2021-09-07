// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'api_key_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiKeyDTO _$ApiKeyDTOFromJson(Map<String, dynamic> json) {
  return _ApiKeyDTO.fromJson(json);
}

/// @nodoc
class _$ApiKeyDTOTearOff {
  const _$ApiKeyDTOTearOff();

  _ApiKeyDTO call({@JsonKey(name: "res_str") required String key}) {
    return _ApiKeyDTO(
      key: key,
    );
  }

  ApiKeyDTO fromJson(Map<String, Object> json) {
    return ApiKeyDTO.fromJson(json);
  }
}

/// @nodoc
const $ApiKeyDTO = _$ApiKeyDTOTearOff();

/// @nodoc
mixin _$ApiKeyDTO {
  @JsonKey(name: "res_str")
  String get key => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiKeyDTOCopyWith<ApiKeyDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiKeyDTOCopyWith<$Res> {
  factory $ApiKeyDTOCopyWith(ApiKeyDTO value, $Res Function(ApiKeyDTO) then) =
      _$ApiKeyDTOCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "res_str") String key});
}

/// @nodoc
class _$ApiKeyDTOCopyWithImpl<$Res> implements $ApiKeyDTOCopyWith<$Res> {
  _$ApiKeyDTOCopyWithImpl(this._value, this._then);

  final ApiKeyDTO _value;
  // ignore: unused_field
  final $Res Function(ApiKeyDTO) _then;

  @override
  $Res call({
    Object? key = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ApiKeyDTOCopyWith<$Res> implements $ApiKeyDTOCopyWith<$Res> {
  factory _$ApiKeyDTOCopyWith(
          _ApiKeyDTO value, $Res Function(_ApiKeyDTO) then) =
      __$ApiKeyDTOCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "res_str") String key});
}

/// @nodoc
class __$ApiKeyDTOCopyWithImpl<$Res> extends _$ApiKeyDTOCopyWithImpl<$Res>
    implements _$ApiKeyDTOCopyWith<$Res> {
  __$ApiKeyDTOCopyWithImpl(_ApiKeyDTO _value, $Res Function(_ApiKeyDTO) _then)
      : super(_value, (v) => _then(v as _ApiKeyDTO));

  @override
  _ApiKeyDTO get _value => super._value as _ApiKeyDTO;

  @override
  $Res call({
    Object? key = freezed,
  }) {
    return _then(_ApiKeyDTO(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiKeyDTO extends _ApiKeyDTO {
  const _$_ApiKeyDTO({@JsonKey(name: "res_str") required this.key}) : super._();

  factory _$_ApiKeyDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_ApiKeyDTOFromJson(json);

  @override
  @JsonKey(name: "res_str")
  final String key;

  @override
  String toString() {
    return 'ApiKeyDTO(key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ApiKeyDTO &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(key);

  @JsonKey(ignore: true)
  @override
  _$ApiKeyDTOCopyWith<_ApiKeyDTO> get copyWith =>
      __$ApiKeyDTOCopyWithImpl<_ApiKeyDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ApiKeyDTOToJson(this);
  }
}

abstract class _ApiKeyDTO extends ApiKeyDTO {
  const factory _ApiKeyDTO({@JsonKey(name: "res_str") required String key}) =
      _$_ApiKeyDTO;
  const _ApiKeyDTO._() : super._();

  factory _ApiKeyDTO.fromJson(Map<String, dynamic> json) =
      _$_ApiKeyDTO.fromJson;

  @override
  @JsonKey(name: "res_str")
  String get key => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ApiKeyDTOCopyWith<_ApiKeyDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
