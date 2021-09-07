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

/// @nodoc
class _$CheckHeaderTearOff {
  const _$CheckHeaderTearOff();

  _CheckHeader call(
      {required String id,
      required String chasu,
      required String interval,
      required String chkYmd,
      required String compCd,
      required String objCd,
      required String objNm,
      required String objGubun,
      required String objGubunNm,
      required String plantCd,
      required String plantNm}) {
    return _CheckHeader(
      id: id,
      chasu: chasu,
      interval: interval,
      chkYmd: chkYmd,
      compCd: compCd,
      objCd: objCd,
      objNm: objNm,
      objGubun: objGubun,
      objGubunNm: objGubunNm,
      plantCd: plantCd,
      plantNm: plantNm,
    );
  }
}

/// @nodoc
const $CheckHeader = _$CheckHeaderTearOff();

/// @nodoc
mixin _$CheckHeader {
  String get id => throw _privateConstructorUsedError;
  String get chasu => throw _privateConstructorUsedError;
  String get interval => throw _privateConstructorUsedError;
  String get chkYmd => throw _privateConstructorUsedError;
  String get compCd => throw _privateConstructorUsedError;
  String get objCd => throw _privateConstructorUsedError;
  String get objNm => throw _privateConstructorUsedError;
  String get objGubun => throw _privateConstructorUsedError;
  String get objGubunNm => throw _privateConstructorUsedError;
  String get plantCd => throw _privateConstructorUsedError;
  String get plantNm => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CheckHeaderCopyWith<CheckHeader> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckHeaderCopyWith<$Res> {
  factory $CheckHeaderCopyWith(
          CheckHeader value, $Res Function(CheckHeader) then) =
      _$CheckHeaderCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String chasu,
      String interval,
      String chkYmd,
      String compCd,
      String objCd,
      String objNm,
      String objGubun,
      String objGubunNm,
      String plantCd,
      String plantNm});
}

/// @nodoc
class _$CheckHeaderCopyWithImpl<$Res> implements $CheckHeaderCopyWith<$Res> {
  _$CheckHeaderCopyWithImpl(this._value, this._then);

  final CheckHeader _value;
  // ignore: unused_field
  final $Res Function(CheckHeader) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? chasu = freezed,
    Object? interval = freezed,
    Object? chkYmd = freezed,
    Object? compCd = freezed,
    Object? objCd = freezed,
    Object? objNm = freezed,
    Object? objGubun = freezed,
    Object? objGubunNm = freezed,
    Object? plantCd = freezed,
    Object? plantNm = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      chasu: chasu == freezed
          ? _value.chasu
          : chasu // ignore: cast_nullable_to_non_nullable
              as String,
      interval: interval == freezed
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as String,
      chkYmd: chkYmd == freezed
          ? _value.chkYmd
          : chkYmd // ignore: cast_nullable_to_non_nullable
              as String,
      compCd: compCd == freezed
          ? _value.compCd
          : compCd // ignore: cast_nullable_to_non_nullable
              as String,
      objCd: objCd == freezed
          ? _value.objCd
          : objCd // ignore: cast_nullable_to_non_nullable
              as String,
      objNm: objNm == freezed
          ? _value.objNm
          : objNm // ignore: cast_nullable_to_non_nullable
              as String,
      objGubun: objGubun == freezed
          ? _value.objGubun
          : objGubun // ignore: cast_nullable_to_non_nullable
              as String,
      objGubunNm: objGubunNm == freezed
          ? _value.objGubunNm
          : objGubunNm // ignore: cast_nullable_to_non_nullable
              as String,
      plantCd: plantCd == freezed
          ? _value.plantCd
          : plantCd // ignore: cast_nullable_to_non_nullable
              as String,
      plantNm: plantNm == freezed
          ? _value.plantNm
          : plantNm // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CheckHeaderCopyWith<$Res>
    implements $CheckHeaderCopyWith<$Res> {
  factory _$CheckHeaderCopyWith(
          _CheckHeader value, $Res Function(_CheckHeader) then) =
      __$CheckHeaderCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String chasu,
      String interval,
      String chkYmd,
      String compCd,
      String objCd,
      String objNm,
      String objGubun,
      String objGubunNm,
      String plantCd,
      String plantNm});
}

/// @nodoc
class __$CheckHeaderCopyWithImpl<$Res> extends _$CheckHeaderCopyWithImpl<$Res>
    implements _$CheckHeaderCopyWith<$Res> {
  __$CheckHeaderCopyWithImpl(
      _CheckHeader _value, $Res Function(_CheckHeader) _then)
      : super(_value, (v) => _then(v as _CheckHeader));

  @override
  _CheckHeader get _value => super._value as _CheckHeader;

  @override
  $Res call({
    Object? id = freezed,
    Object? chasu = freezed,
    Object? interval = freezed,
    Object? chkYmd = freezed,
    Object? compCd = freezed,
    Object? objCd = freezed,
    Object? objNm = freezed,
    Object? objGubun = freezed,
    Object? objGubunNm = freezed,
    Object? plantCd = freezed,
    Object? plantNm = freezed,
  }) {
    return _then(_CheckHeader(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      chasu: chasu == freezed
          ? _value.chasu
          : chasu // ignore: cast_nullable_to_non_nullable
              as String,
      interval: interval == freezed
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as String,
      chkYmd: chkYmd == freezed
          ? _value.chkYmd
          : chkYmd // ignore: cast_nullable_to_non_nullable
              as String,
      compCd: compCd == freezed
          ? _value.compCd
          : compCd // ignore: cast_nullable_to_non_nullable
              as String,
      objCd: objCd == freezed
          ? _value.objCd
          : objCd // ignore: cast_nullable_to_non_nullable
              as String,
      objNm: objNm == freezed
          ? _value.objNm
          : objNm // ignore: cast_nullable_to_non_nullable
              as String,
      objGubun: objGubun == freezed
          ? _value.objGubun
          : objGubun // ignore: cast_nullable_to_non_nullable
              as String,
      objGubunNm: objGubunNm == freezed
          ? _value.objGubunNm
          : objGubunNm // ignore: cast_nullable_to_non_nullable
              as String,
      plantCd: plantCd == freezed
          ? _value.plantCd
          : plantCd // ignore: cast_nullable_to_non_nullable
              as String,
      plantNm: plantNm == freezed
          ? _value.plantNm
          : plantNm // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CheckHeader extends _CheckHeader {
  const _$_CheckHeader(
      {required this.id,
      required this.chasu,
      required this.interval,
      required this.chkYmd,
      required this.compCd,
      required this.objCd,
      required this.objNm,
      required this.objGubun,
      required this.objGubunNm,
      required this.plantCd,
      required this.plantNm})
      : super._();

  @override
  final String id;
  @override
  final String chasu;
  @override
  final String interval;
  @override
  final String chkYmd;
  @override
  final String compCd;
  @override
  final String objCd;
  @override
  final String objNm;
  @override
  final String objGubun;
  @override
  final String objGubunNm;
  @override
  final String plantCd;
  @override
  final String plantNm;

  @override
  String toString() {
    return 'CheckHeader(id: $id, chasu: $chasu, interval: $interval, chkYmd: $chkYmd, compCd: $compCd, objCd: $objCd, objNm: $objNm, objGubun: $objGubun, objGubunNm: $objGubunNm, plantCd: $plantCd, plantNm: $plantNm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckHeader &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.chasu, chasu) ||
                const DeepCollectionEquality().equals(other.chasu, chasu)) &&
            (identical(other.interval, interval) ||
                const DeepCollectionEquality()
                    .equals(other.interval, interval)) &&
            (identical(other.chkYmd, chkYmd) ||
                const DeepCollectionEquality().equals(other.chkYmd, chkYmd)) &&
            (identical(other.compCd, compCd) ||
                const DeepCollectionEquality().equals(other.compCd, compCd)) &&
            (identical(other.objCd, objCd) ||
                const DeepCollectionEquality().equals(other.objCd, objCd)) &&
            (identical(other.objNm, objNm) ||
                const DeepCollectionEquality().equals(other.objNm, objNm)) &&
            (identical(other.objGubun, objGubun) ||
                const DeepCollectionEquality()
                    .equals(other.objGubun, objGubun)) &&
            (identical(other.objGubunNm, objGubunNm) ||
                const DeepCollectionEquality()
                    .equals(other.objGubunNm, objGubunNm)) &&
            (identical(other.plantCd, plantCd) ||
                const DeepCollectionEquality()
                    .equals(other.plantCd, plantCd)) &&
            (identical(other.plantNm, plantNm) ||
                const DeepCollectionEquality().equals(other.plantNm, plantNm)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(chasu) ^
      const DeepCollectionEquality().hash(interval) ^
      const DeepCollectionEquality().hash(chkYmd) ^
      const DeepCollectionEquality().hash(compCd) ^
      const DeepCollectionEquality().hash(objCd) ^
      const DeepCollectionEquality().hash(objNm) ^
      const DeepCollectionEquality().hash(objGubun) ^
      const DeepCollectionEquality().hash(objGubunNm) ^
      const DeepCollectionEquality().hash(plantCd) ^
      const DeepCollectionEquality().hash(plantNm);

  @JsonKey(ignore: true)
  @override
  _$CheckHeaderCopyWith<_CheckHeader> get copyWith =>
      __$CheckHeaderCopyWithImpl<_CheckHeader>(this, _$identity);
}

abstract class _CheckHeader extends CheckHeader {
  const factory _CheckHeader(
      {required String id,
      required String chasu,
      required String interval,
      required String chkYmd,
      required String compCd,
      required String objCd,
      required String objNm,
      required String objGubun,
      required String objGubunNm,
      required String plantCd,
      required String plantNm}) = _$_CheckHeader;
  const _CheckHeader._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get chasu => throw _privateConstructorUsedError;
  @override
  String get interval => throw _privateConstructorUsedError;
  @override
  String get chkYmd => throw _privateConstructorUsedError;
  @override
  String get compCd => throw _privateConstructorUsedError;
  @override
  String get objCd => throw _privateConstructorUsedError;
  @override
  String get objNm => throw _privateConstructorUsedError;
  @override
  String get objGubun => throw _privateConstructorUsedError;
  @override
  String get objGubunNm => throw _privateConstructorUsedError;
  @override
  String get plantCd => throw _privateConstructorUsedError;
  @override
  String get plantNm => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CheckHeaderCopyWith<_CheckHeader> get copyWith =>
      throw _privateConstructorUsedError;
}
