// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'api_key.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$APIKeyTearOff {
  const _$APIKeyTearOff();

  _APIKey call({required String key}) {
    return _APIKey(
      key: key,
    );
  }
}

/// @nodoc
const $APIKey = _$APIKeyTearOff();

/// @nodoc
mixin _$APIKey {
  String get key => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $APIKeyCopyWith<APIKey> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $APIKeyCopyWith<$Res> {
  factory $APIKeyCopyWith(APIKey value, $Res Function(APIKey) then) =
      _$APIKeyCopyWithImpl<$Res>;
  $Res call({String key});
}

/// @nodoc
class _$APIKeyCopyWithImpl<$Res> implements $APIKeyCopyWith<$Res> {
  _$APIKeyCopyWithImpl(this._value, this._then);

  final APIKey _value;
  // ignore: unused_field
  final $Res Function(APIKey) _then;

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
abstract class _$APIKeyCopyWith<$Res> implements $APIKeyCopyWith<$Res> {
  factory _$APIKeyCopyWith(_APIKey value, $Res Function(_APIKey) then) =
      __$APIKeyCopyWithImpl<$Res>;
  @override
  $Res call({String key});
}

/// @nodoc
class __$APIKeyCopyWithImpl<$Res> extends _$APIKeyCopyWithImpl<$Res>
    implements _$APIKeyCopyWith<$Res> {
  __$APIKeyCopyWithImpl(_APIKey _value, $Res Function(_APIKey) _then)
      : super(_value, (v) => _then(v as _APIKey));

  @override
  _APIKey get _value => super._value as _APIKey;

  @override
  $Res call({
    Object? key = freezed,
  }) {
    return _then(_APIKey(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_APIKey extends _APIKey {
  const _$_APIKey({required this.key}) : super._();

  @override
  final String key;

  @override
  String toString() {
    return 'APIKey(key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _APIKey &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(key);

  @JsonKey(ignore: true)
  @override
  _$APIKeyCopyWith<_APIKey> get copyWith =>
      __$APIKeyCopyWithImpl<_APIKey>(this, _$identity);
}

abstract class _APIKey extends APIKey {
  const factory _APIKey({required String key}) = _$_APIKey;
  const _APIKey._() : super._();

  @override
  String get key => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$APIKeyCopyWith<_APIKey> get copyWith => throw _privateConstructorUsedError;
}
