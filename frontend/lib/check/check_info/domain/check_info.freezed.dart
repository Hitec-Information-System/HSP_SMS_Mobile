// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'check_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CheckInfoTearOff {
  const _$CheckInfoTearOff();

  _CheckInfo call(
      {required CheckHeader header,
      required List<CheckStandard> intervals,
      required List<CheckStandard> sessions,
      required List<CheckDetails> details}) {
    return _CheckInfo(
      header: header,
      intervals: intervals,
      sessions: sessions,
      details: details,
    );
  }
}

/// @nodoc
const $CheckInfo = _$CheckInfoTearOff();

/// @nodoc
mixin _$CheckInfo {
  CheckHeader get header => throw _privateConstructorUsedError;
  List<CheckStandard> get intervals => throw _privateConstructorUsedError;
  List<CheckStandard> get sessions => throw _privateConstructorUsedError;
  List<CheckDetails> get details => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CheckInfoCopyWith<CheckInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckInfoCopyWith<$Res> {
  factory $CheckInfoCopyWith(CheckInfo value, $Res Function(CheckInfo) then) =
      _$CheckInfoCopyWithImpl<$Res>;
  $Res call(
      {CheckHeader header,
      List<CheckStandard> intervals,
      List<CheckStandard> sessions,
      List<CheckDetails> details});

  $CheckHeaderCopyWith<$Res> get header;
}

/// @nodoc
class _$CheckInfoCopyWithImpl<$Res> implements $CheckInfoCopyWith<$Res> {
  _$CheckInfoCopyWithImpl(this._value, this._then);

  final CheckInfo _value;
  // ignore: unused_field
  final $Res Function(CheckInfo) _then;

  @override
  $Res call({
    Object? header = freezed,
    Object? intervals = freezed,
    Object? sessions = freezed,
    Object? details = freezed,
  }) {
    return _then(_value.copyWith(
      header: header == freezed
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as CheckHeader,
      intervals: intervals == freezed
          ? _value.intervals
          : intervals // ignore: cast_nullable_to_non_nullable
              as List<CheckStandard>,
      sessions: sessions == freezed
          ? _value.sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<CheckStandard>,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<CheckDetails>,
    ));
  }

  @override
  $CheckHeaderCopyWith<$Res> get header {
    return $CheckHeaderCopyWith<$Res>(_value.header, (value) {
      return _then(_value.copyWith(header: value));
    });
  }
}

/// @nodoc
abstract class _$CheckInfoCopyWith<$Res> implements $CheckInfoCopyWith<$Res> {
  factory _$CheckInfoCopyWith(
          _CheckInfo value, $Res Function(_CheckInfo) then) =
      __$CheckInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {CheckHeader header,
      List<CheckStandard> intervals,
      List<CheckStandard> sessions,
      List<CheckDetails> details});

  @override
  $CheckHeaderCopyWith<$Res> get header;
}

/// @nodoc
class __$CheckInfoCopyWithImpl<$Res> extends _$CheckInfoCopyWithImpl<$Res>
    implements _$CheckInfoCopyWith<$Res> {
  __$CheckInfoCopyWithImpl(_CheckInfo _value, $Res Function(_CheckInfo) _then)
      : super(_value, (v) => _then(v as _CheckInfo));

  @override
  _CheckInfo get _value => super._value as _CheckInfo;

  @override
  $Res call({
    Object? header = freezed,
    Object? intervals = freezed,
    Object? sessions = freezed,
    Object? details = freezed,
  }) {
    return _then(_CheckInfo(
      header: header == freezed
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as CheckHeader,
      intervals: intervals == freezed
          ? _value.intervals
          : intervals // ignore: cast_nullable_to_non_nullable
              as List<CheckStandard>,
      sessions: sessions == freezed
          ? _value.sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<CheckStandard>,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<CheckDetails>,
    ));
  }
}

/// @nodoc

class _$_CheckInfo extends _CheckInfo {
  const _$_CheckInfo(
      {required this.header,
      required this.intervals,
      required this.sessions,
      required this.details})
      : super._();

  @override
  final CheckHeader header;
  @override
  final List<CheckStandard> intervals;
  @override
  final List<CheckStandard> sessions;
  @override
  final List<CheckDetails> details;

  @override
  String toString() {
    return 'CheckInfo(header: $header, intervals: $intervals, sessions: $sessions, details: $details)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckInfo &&
            (identical(other.header, header) ||
                const DeepCollectionEquality().equals(other.header, header)) &&
            (identical(other.intervals, intervals) ||
                const DeepCollectionEquality()
                    .equals(other.intervals, intervals)) &&
            (identical(other.sessions, sessions) ||
                const DeepCollectionEquality()
                    .equals(other.sessions, sessions)) &&
            (identical(other.details, details) ||
                const DeepCollectionEquality().equals(other.details, details)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(header) ^
      const DeepCollectionEquality().hash(intervals) ^
      const DeepCollectionEquality().hash(sessions) ^
      const DeepCollectionEquality().hash(details);

  @JsonKey(ignore: true)
  @override
  _$CheckInfoCopyWith<_CheckInfo> get copyWith =>
      __$CheckInfoCopyWithImpl<_CheckInfo>(this, _$identity);
}

abstract class _CheckInfo extends CheckInfo {
  const factory _CheckInfo(
      {required CheckHeader header,
      required List<CheckStandard> intervals,
      required List<CheckStandard> sessions,
      required List<CheckDetails> details}) = _$_CheckInfo;
  const _CheckInfo._() : super._();

  @override
  CheckHeader get header => throw _privateConstructorUsedError;
  @override
  List<CheckStandard> get intervals => throw _privateConstructorUsedError;
  @override
  List<CheckStandard> get sessions => throw _privateConstructorUsedError;
  @override
  List<CheckDetails> get details => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CheckInfoCopyWith<_CheckInfo> get copyWith =>
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
      required String plantNm,
      required String userId,
      required String userNm}) {
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
      userId: userId,
      userNm: userNm,
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
  String get userId => throw _privateConstructorUsedError;
  String get userNm => throw _privateConstructorUsedError;

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
      String plantNm,
      String userId,
      String userNm});
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
    Object? userId = freezed,
    Object? userNm = freezed,
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
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userNm: userNm == freezed
          ? _value.userNm
          : userNm // ignore: cast_nullable_to_non_nullable
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
      String plantNm,
      String userId,
      String userNm});
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
    Object? userId = freezed,
    Object? userNm = freezed,
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
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userNm: userNm == freezed
          ? _value.userNm
          : userNm // ignore: cast_nullable_to_non_nullable
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
      required this.plantNm,
      required this.userId,
      required this.userNm})
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
  final String userId;
  @override
  final String userNm;

  @override
  String toString() {
    return 'CheckHeader(id: $id, chasu: $chasu, interval: $interval, chkYmd: $chkYmd, compCd: $compCd, objCd: $objCd, objNm: $objNm, objGubun: $objGubun, objGubunNm: $objGubunNm, plantCd: $plantCd, plantNm: $plantNm, userId: $userId, userNm: $userNm)';
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
                const DeepCollectionEquality()
                    .equals(other.plantNm, plantNm)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.userNm, userNm) ||
                const DeepCollectionEquality().equals(other.userNm, userNm)));
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
      const DeepCollectionEquality().hash(plantNm) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(userNm);

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
      required String plantNm,
      required String userId,
      required String userNm}) = _$_CheckHeader;
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
  String get userId => throw _privateConstructorUsedError;
  @override
  String get userNm => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CheckHeaderCopyWith<_CheckHeader> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CheckDetailsTearOff {
  const _$CheckDetailsTearOff();

  _CheckDetails call(
      {required String chkItemCd,
      required String chkItemNm,
      required String intervalChk,
      required String methodChk,
      required String remark,
      required String result,
      required List<XFile> images}) {
    return _CheckDetails(
      chkItemCd: chkItemCd,
      chkItemNm: chkItemNm,
      intervalChk: intervalChk,
      methodChk: methodChk,
      remark: remark,
      result: result,
      images: images,
    );
  }
}

/// @nodoc
const $CheckDetails = _$CheckDetailsTearOff();

/// @nodoc
mixin _$CheckDetails {
  String get chkItemCd => throw _privateConstructorUsedError;
  String get chkItemNm => throw _privateConstructorUsedError;
  String get intervalChk => throw _privateConstructorUsedError;
  String get methodChk =>
      throw _privateConstructorUsedError; // required String objGubunSub,
// required String objGubunSubNm,
  String get remark => throw _privateConstructorUsedError;
  String get result => throw _privateConstructorUsedError;
  List<XFile> get images => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CheckDetailsCopyWith<CheckDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckDetailsCopyWith<$Res> {
  factory $CheckDetailsCopyWith(
          CheckDetails value, $Res Function(CheckDetails) then) =
      _$CheckDetailsCopyWithImpl<$Res>;
  $Res call(
      {String chkItemCd,
      String chkItemNm,
      String intervalChk,
      String methodChk,
      String remark,
      String result,
      List<XFile> images});
}

/// @nodoc
class _$CheckDetailsCopyWithImpl<$Res> implements $CheckDetailsCopyWith<$Res> {
  _$CheckDetailsCopyWithImpl(this._value, this._then);

  final CheckDetails _value;
  // ignore: unused_field
  final $Res Function(CheckDetails) _then;

  @override
  $Res call({
    Object? chkItemCd = freezed,
    Object? chkItemNm = freezed,
    Object? intervalChk = freezed,
    Object? methodChk = freezed,
    Object? remark = freezed,
    Object? result = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      chkItemCd: chkItemCd == freezed
          ? _value.chkItemCd
          : chkItemCd // ignore: cast_nullable_to_non_nullable
              as String,
      chkItemNm: chkItemNm == freezed
          ? _value.chkItemNm
          : chkItemNm // ignore: cast_nullable_to_non_nullable
              as String,
      intervalChk: intervalChk == freezed
          ? _value.intervalChk
          : intervalChk // ignore: cast_nullable_to_non_nullable
              as String,
      methodChk: methodChk == freezed
          ? _value.methodChk
          : methodChk // ignore: cast_nullable_to_non_nullable
              as String,
      remark: remark == freezed
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<XFile>,
    ));
  }
}

/// @nodoc
abstract class _$CheckDetailsCopyWith<$Res>
    implements $CheckDetailsCopyWith<$Res> {
  factory _$CheckDetailsCopyWith(
          _CheckDetails value, $Res Function(_CheckDetails) then) =
      __$CheckDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String chkItemCd,
      String chkItemNm,
      String intervalChk,
      String methodChk,
      String remark,
      String result,
      List<XFile> images});
}

/// @nodoc
class __$CheckDetailsCopyWithImpl<$Res> extends _$CheckDetailsCopyWithImpl<$Res>
    implements _$CheckDetailsCopyWith<$Res> {
  __$CheckDetailsCopyWithImpl(
      _CheckDetails _value, $Res Function(_CheckDetails) _then)
      : super(_value, (v) => _then(v as _CheckDetails));

  @override
  _CheckDetails get _value => super._value as _CheckDetails;

  @override
  $Res call({
    Object? chkItemCd = freezed,
    Object? chkItemNm = freezed,
    Object? intervalChk = freezed,
    Object? methodChk = freezed,
    Object? remark = freezed,
    Object? result = freezed,
    Object? images = freezed,
  }) {
    return _then(_CheckDetails(
      chkItemCd: chkItemCd == freezed
          ? _value.chkItemCd
          : chkItemCd // ignore: cast_nullable_to_non_nullable
              as String,
      chkItemNm: chkItemNm == freezed
          ? _value.chkItemNm
          : chkItemNm // ignore: cast_nullable_to_non_nullable
              as String,
      intervalChk: intervalChk == freezed
          ? _value.intervalChk
          : intervalChk // ignore: cast_nullable_to_non_nullable
              as String,
      methodChk: methodChk == freezed
          ? _value.methodChk
          : methodChk // ignore: cast_nullable_to_non_nullable
              as String,
      remark: remark == freezed
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<XFile>,
    ));
  }
}

/// @nodoc

class _$_CheckDetails extends _CheckDetails {
  const _$_CheckDetails(
      {required this.chkItemCd,
      required this.chkItemNm,
      required this.intervalChk,
      required this.methodChk,
      required this.remark,
      required this.result,
      required this.images})
      : super._();

  @override
  final String chkItemCd;
  @override
  final String chkItemNm;
  @override
  final String intervalChk;
  @override
  final String methodChk;
  @override // required String objGubunSub,
// required String objGubunSubNm,
  final String remark;
  @override
  final String result;
  @override
  final List<XFile> images;

  @override
  String toString() {
    return 'CheckDetails(chkItemCd: $chkItemCd, chkItemNm: $chkItemNm, intervalChk: $intervalChk, methodChk: $methodChk, remark: $remark, result: $result, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckDetails &&
            (identical(other.chkItemCd, chkItemCd) ||
                const DeepCollectionEquality()
                    .equals(other.chkItemCd, chkItemCd)) &&
            (identical(other.chkItemNm, chkItemNm) ||
                const DeepCollectionEquality()
                    .equals(other.chkItemNm, chkItemNm)) &&
            (identical(other.intervalChk, intervalChk) ||
                const DeepCollectionEquality()
                    .equals(other.intervalChk, intervalChk)) &&
            (identical(other.methodChk, methodChk) ||
                const DeepCollectionEquality()
                    .equals(other.methodChk, methodChk)) &&
            (identical(other.remark, remark) ||
                const DeepCollectionEquality().equals(other.remark, remark)) &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(chkItemCd) ^
      const DeepCollectionEquality().hash(chkItemNm) ^
      const DeepCollectionEquality().hash(intervalChk) ^
      const DeepCollectionEquality().hash(methodChk) ^
      const DeepCollectionEquality().hash(remark) ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(images);

  @JsonKey(ignore: true)
  @override
  _$CheckDetailsCopyWith<_CheckDetails> get copyWith =>
      __$CheckDetailsCopyWithImpl<_CheckDetails>(this, _$identity);
}

abstract class _CheckDetails extends CheckDetails {
  const factory _CheckDetails(
      {required String chkItemCd,
      required String chkItemNm,
      required String intervalChk,
      required String methodChk,
      required String remark,
      required String result,
      required List<XFile> images}) = _$_CheckDetails;
  const _CheckDetails._() : super._();

  @override
  String get chkItemCd => throw _privateConstructorUsedError;
  @override
  String get chkItemNm => throw _privateConstructorUsedError;
  @override
  String get intervalChk => throw _privateConstructorUsedError;
  @override
  String get methodChk => throw _privateConstructorUsedError;
  @override // required String objGubunSub,
// required String objGubunSubNm,
  String get remark => throw _privateConstructorUsedError;
  @override
  String get result => throw _privateConstructorUsedError;
  @override
  List<XFile> get images => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CheckDetailsCopyWith<_CheckDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CheckStandardTearOff {
  const _$CheckStandardTearOff();

  _CheckStandard call({required String id, required String name}) {
    return _CheckStandard(
      id: id,
      name: name,
    );
  }
}

/// @nodoc
const $CheckStandard = _$CheckStandardTearOff();

/// @nodoc
mixin _$CheckStandard {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CheckStandardCopyWith<CheckStandard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckStandardCopyWith<$Res> {
  factory $CheckStandardCopyWith(
          CheckStandard value, $Res Function(CheckStandard) then) =
      _$CheckStandardCopyWithImpl<$Res>;
  $Res call({String id, String name});
}

/// @nodoc
class _$CheckStandardCopyWithImpl<$Res>
    implements $CheckStandardCopyWith<$Res> {
  _$CheckStandardCopyWithImpl(this._value, this._then);

  final CheckStandard _value;
  // ignore: unused_field
  final $Res Function(CheckStandard) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CheckStandardCopyWith<$Res>
    implements $CheckStandardCopyWith<$Res> {
  factory _$CheckStandardCopyWith(
          _CheckStandard value, $Res Function(_CheckStandard) then) =
      __$CheckStandardCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name});
}

/// @nodoc
class __$CheckStandardCopyWithImpl<$Res>
    extends _$CheckStandardCopyWithImpl<$Res>
    implements _$CheckStandardCopyWith<$Res> {
  __$CheckStandardCopyWithImpl(
      _CheckStandard _value, $Res Function(_CheckStandard) _then)
      : super(_value, (v) => _then(v as _CheckStandard));

  @override
  _CheckStandard get _value => super._value as _CheckStandard;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_CheckStandard(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CheckStandard extends _CheckStandard {
  const _$_CheckStandard({required this.id, required this.name}) : super._();

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'CheckStandard(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckStandard &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$CheckStandardCopyWith<_CheckStandard> get copyWith =>
      __$CheckStandardCopyWithImpl<_CheckStandard>(this, _$identity);
}

abstract class _CheckStandard extends CheckStandard {
  const factory _CheckStandard({required String id, required String name}) =
      _$_CheckStandard;
  const _CheckStandard._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CheckStandardCopyWith<_CheckStandard> get copyWith =>
      throw _privateConstructorUsedError;
}
