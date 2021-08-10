// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'check_serial.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CheckSerial _$CheckSerialFromJson(Map<String, dynamic> json) {
  return _CheckSerial.fromJson(json);
}

/// @nodoc
class _$CheckSerialTearOff {
  const _$CheckSerialTearOff();

  _CheckSerial call(
      {required String id,
      required String location,
      required DateTime lastCheckDate}) {
    return _CheckSerial(
      id: id,
      location: location,
      lastCheckDate: lastCheckDate,
    );
  }

  CheckSerial fromJson(Map<String, Object> json) {
    return CheckSerial.fromJson(json);
  }
}

/// @nodoc
const $CheckSerial = _$CheckSerialTearOff();

/// @nodoc
mixin _$CheckSerial {
  String get id => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  DateTime get lastCheckDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckSerialCopyWith<CheckSerial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckSerialCopyWith<$Res> {
  factory $CheckSerialCopyWith(
          CheckSerial value, $Res Function(CheckSerial) then) =
      _$CheckSerialCopyWithImpl<$Res>;
  $Res call({String id, String location, DateTime lastCheckDate});
}

/// @nodoc
class _$CheckSerialCopyWithImpl<$Res> implements $CheckSerialCopyWith<$Res> {
  _$CheckSerialCopyWithImpl(this._value, this._then);

  final CheckSerial _value;
  // ignore: unused_field
  final $Res Function(CheckSerial) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? location = freezed,
    Object? lastCheckDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      lastCheckDate: lastCheckDate == freezed
          ? _value.lastCheckDate
          : lastCheckDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$CheckSerialCopyWith<$Res>
    implements $CheckSerialCopyWith<$Res> {
  factory _$CheckSerialCopyWith(
          _CheckSerial value, $Res Function(_CheckSerial) then) =
      __$CheckSerialCopyWithImpl<$Res>;
  @override
  $Res call({String id, String location, DateTime lastCheckDate});
}

/// @nodoc
class __$CheckSerialCopyWithImpl<$Res> extends _$CheckSerialCopyWithImpl<$Res>
    implements _$CheckSerialCopyWith<$Res> {
  __$CheckSerialCopyWithImpl(
      _CheckSerial _value, $Res Function(_CheckSerial) _then)
      : super(_value, (v) => _then(v as _CheckSerial));

  @override
  _CheckSerial get _value => super._value as _CheckSerial;

  @override
  $Res call({
    Object? id = freezed,
    Object? location = freezed,
    Object? lastCheckDate = freezed,
  }) {
    return _then(_CheckSerial(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      lastCheckDate: lastCheckDate == freezed
          ? _value.lastCheckDate
          : lastCheckDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CheckSerial extends _CheckSerial {
  const _$_CheckSerial(
      {required this.id, required this.location, required this.lastCheckDate})
      : super._();

  factory _$_CheckSerial.fromJson(Map<String, dynamic> json) =>
      _$_$_CheckSerialFromJson(json);

  @override
  final String id;
  @override
  final String location;
  @override
  final DateTime lastCheckDate;

  @override
  String toString() {
    return 'CheckSerial(id: $id, location: $location, lastCheckDate: $lastCheckDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckSerial &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.lastCheckDate, lastCheckDate) ||
                const DeepCollectionEquality()
                    .equals(other.lastCheckDate, lastCheckDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(lastCheckDate);

  @JsonKey(ignore: true)
  @override
  _$CheckSerialCopyWith<_CheckSerial> get copyWith =>
      __$CheckSerialCopyWithImpl<_CheckSerial>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CheckSerialToJson(this);
  }
}

abstract class _CheckSerial extends CheckSerial {
  const factory _CheckSerial(
      {required String id,
      required String location,
      required DateTime lastCheckDate}) = _$_CheckSerial;
  const _CheckSerial._() : super._();

  factory _CheckSerial.fromJson(Map<String, dynamic> json) =
      _$_CheckSerial.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get location => throw _privateConstructorUsedError;
  @override
  DateTime get lastCheckDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CheckSerialCopyWith<_CheckSerial> get copyWith =>
      throw _privateConstructorUsedError;
}
