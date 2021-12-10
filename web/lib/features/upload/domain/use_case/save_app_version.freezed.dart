// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'save_app_version.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ParamsTearOff {
  const _$ParamsTearOff();

  _Params call({required AppVersion version}) {
    return _Params(
      version: version,
    );
  }
}

/// @nodoc
const $Params = _$ParamsTearOff();

/// @nodoc
mixin _$Params {
  AppVersion get version => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParamsCopyWith<Params> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParamsCopyWith<$Res> {
  factory $ParamsCopyWith(Params value, $Res Function(Params) then) =
      _$ParamsCopyWithImpl<$Res>;
  $Res call({AppVersion version});

  $AppVersionCopyWith<$Res> get version;
}

/// @nodoc
class _$ParamsCopyWithImpl<$Res> implements $ParamsCopyWith<$Res> {
  _$ParamsCopyWithImpl(this._value, this._then);

  final Params _value;
  // ignore: unused_field
  final $Res Function(Params) _then;

  @override
  $Res call({
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as AppVersion,
    ));
  }

  @override
  $AppVersionCopyWith<$Res> get version {
    return $AppVersionCopyWith<$Res>(_value.version, (value) {
      return _then(_value.copyWith(version: value));
    });
  }
}

/// @nodoc
abstract class _$ParamsCopyWith<$Res> implements $ParamsCopyWith<$Res> {
  factory _$ParamsCopyWith(_Params value, $Res Function(_Params) then) =
      __$ParamsCopyWithImpl<$Res>;
  @override
  $Res call({AppVersion version});

  @override
  $AppVersionCopyWith<$Res> get version;
}

/// @nodoc
class __$ParamsCopyWithImpl<$Res> extends _$ParamsCopyWithImpl<$Res>
    implements _$ParamsCopyWith<$Res> {
  __$ParamsCopyWithImpl(_Params _value, $Res Function(_Params) _then)
      : super(_value, (v) => _then(v as _Params));

  @override
  _Params get _value => super._value as _Params;

  @override
  $Res call({
    Object? version = freezed,
  }) {
    return _then(_Params(
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as AppVersion,
    ));
  }
}

/// @nodoc

class _$_Params extends _Params {
  const _$_Params({required this.version}) : super._();

  @override
  final AppVersion version;

  @override
  String toString() {
    return 'Params(version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Params &&
            const DeepCollectionEquality().equals(other.version, version));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(version));

  @JsonKey(ignore: true)
  @override
  _$ParamsCopyWith<_Params> get copyWith =>
      __$ParamsCopyWithImpl<_Params>(this, _$identity);
}

abstract class _Params extends Params {
  const factory _Params({required AppVersion version}) = _$_Params;
  const _Params._() : super._();

  @override
  AppVersion get version;
  @override
  @JsonKey(ignore: true)
  _$ParamsCopyWith<_Params> get copyWith => throw _privateConstructorUsedError;
}
