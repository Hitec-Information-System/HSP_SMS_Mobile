// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'check_spot_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CheckSpotDTO _$CheckSpotDTOFromJson(Map<String, dynamic> json) {
  return _CheckSpotDTO.fromJson(json);
}

/// @nodoc
class _$CheckSpotDTOTearOff {
  const _$CheckSpotDTOTearOff();

  _CheckSpotDTO call(
      {@JsonKey(name: "OBJ_CD", defaultValue: "")
          required String objCd,
      @JsonKey(name: "OBJ_NM", defaultValue: "")
          required String objNm,
      @JsonKey(name: "OBJ_GUBUN", defaultValue: "")
          required String objFlag,
      @JsonKey(name: "OBJ_GUBUN_SUB", defaultValue: "")
          required String objSubFlag,
      @JsonKey(name: "OBJ_GUBUN_SUB_NM", defaultValue: "")
          required String objSubFlagNm,
      required List<CheckedItemDTO> checkedList}) {
    return _CheckSpotDTO(
      objCd: objCd,
      objNm: objNm,
      objFlag: objFlag,
      objSubFlag: objSubFlag,
      objSubFlagNm: objSubFlagNm,
      checkedList: checkedList,
    );
  }

  CheckSpotDTO fromJson(Map<String, Object> json) {
    return CheckSpotDTO.fromJson(json);
  }
}

/// @nodoc
const $CheckSpotDTO = _$CheckSpotDTOTearOff();

/// @nodoc
mixin _$CheckSpotDTO {
  @JsonKey(name: "OBJ_CD", defaultValue: "")
  String get objCd => throw _privateConstructorUsedError;
  @JsonKey(name: "OBJ_NM", defaultValue: "")
  String get objNm => throw _privateConstructorUsedError;
  @JsonKey(name: "OBJ_GUBUN", defaultValue: "")
  String get objFlag => throw _privateConstructorUsedError;
  @JsonKey(name: "OBJ_GUBUN_SUB", defaultValue: "")
  String get objSubFlag => throw _privateConstructorUsedError;
  @JsonKey(name: "OBJ_GUBUN_SUB_NM", defaultValue: "")
  String get objSubFlagNm => throw _privateConstructorUsedError;
  List<CheckedItemDTO> get checkedList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckSpotDTOCopyWith<CheckSpotDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckSpotDTOCopyWith<$Res> {
  factory $CheckSpotDTOCopyWith(
          CheckSpotDTO value, $Res Function(CheckSpotDTO) then) =
      _$CheckSpotDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "OBJ_CD", defaultValue: "") String objCd,
      @JsonKey(name: "OBJ_NM", defaultValue: "") String objNm,
      @JsonKey(name: "OBJ_GUBUN", defaultValue: "") String objFlag,
      @JsonKey(name: "OBJ_GUBUN_SUB", defaultValue: "") String objSubFlag,
      @JsonKey(name: "OBJ_GUBUN_SUB_NM", defaultValue: "") String objSubFlagNm,
      List<CheckedItemDTO> checkedList});
}

/// @nodoc
class _$CheckSpotDTOCopyWithImpl<$Res> implements $CheckSpotDTOCopyWith<$Res> {
  _$CheckSpotDTOCopyWithImpl(this._value, this._then);

  final CheckSpotDTO _value;
  // ignore: unused_field
  final $Res Function(CheckSpotDTO) _then;

  @override
  $Res call({
    Object? objCd = freezed,
    Object? objNm = freezed,
    Object? objFlag = freezed,
    Object? objSubFlag = freezed,
    Object? objSubFlagNm = freezed,
    Object? checkedList = freezed,
  }) {
    return _then(_value.copyWith(
      objCd: objCd == freezed
          ? _value.objCd
          : objCd // ignore: cast_nullable_to_non_nullable
              as String,
      objNm: objNm == freezed
          ? _value.objNm
          : objNm // ignore: cast_nullable_to_non_nullable
              as String,
      objFlag: objFlag == freezed
          ? _value.objFlag
          : objFlag // ignore: cast_nullable_to_non_nullable
              as String,
      objSubFlag: objSubFlag == freezed
          ? _value.objSubFlag
          : objSubFlag // ignore: cast_nullable_to_non_nullable
              as String,
      objSubFlagNm: objSubFlagNm == freezed
          ? _value.objSubFlagNm
          : objSubFlagNm // ignore: cast_nullable_to_non_nullable
              as String,
      checkedList: checkedList == freezed
          ? _value.checkedList
          : checkedList // ignore: cast_nullable_to_non_nullable
              as List<CheckedItemDTO>,
    ));
  }
}

/// @nodoc
abstract class _$CheckSpotDTOCopyWith<$Res>
    implements $CheckSpotDTOCopyWith<$Res> {
  factory _$CheckSpotDTOCopyWith(
          _CheckSpotDTO value, $Res Function(_CheckSpotDTO) then) =
      __$CheckSpotDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "OBJ_CD", defaultValue: "") String objCd,
      @JsonKey(name: "OBJ_NM", defaultValue: "") String objNm,
      @JsonKey(name: "OBJ_GUBUN", defaultValue: "") String objFlag,
      @JsonKey(name: "OBJ_GUBUN_SUB", defaultValue: "") String objSubFlag,
      @JsonKey(name: "OBJ_GUBUN_SUB_NM", defaultValue: "") String objSubFlagNm,
      List<CheckedItemDTO> checkedList});
}

/// @nodoc
class __$CheckSpotDTOCopyWithImpl<$Res> extends _$CheckSpotDTOCopyWithImpl<$Res>
    implements _$CheckSpotDTOCopyWith<$Res> {
  __$CheckSpotDTOCopyWithImpl(
      _CheckSpotDTO _value, $Res Function(_CheckSpotDTO) _then)
      : super(_value, (v) => _then(v as _CheckSpotDTO));

  @override
  _CheckSpotDTO get _value => super._value as _CheckSpotDTO;

  @override
  $Res call({
    Object? objCd = freezed,
    Object? objNm = freezed,
    Object? objFlag = freezed,
    Object? objSubFlag = freezed,
    Object? objSubFlagNm = freezed,
    Object? checkedList = freezed,
  }) {
    return _then(_CheckSpotDTO(
      objCd: objCd == freezed
          ? _value.objCd
          : objCd // ignore: cast_nullable_to_non_nullable
              as String,
      objNm: objNm == freezed
          ? _value.objNm
          : objNm // ignore: cast_nullable_to_non_nullable
              as String,
      objFlag: objFlag == freezed
          ? _value.objFlag
          : objFlag // ignore: cast_nullable_to_non_nullable
              as String,
      objSubFlag: objSubFlag == freezed
          ? _value.objSubFlag
          : objSubFlag // ignore: cast_nullable_to_non_nullable
              as String,
      objSubFlagNm: objSubFlagNm == freezed
          ? _value.objSubFlagNm
          : objSubFlagNm // ignore: cast_nullable_to_non_nullable
              as String,
      checkedList: checkedList == freezed
          ? _value.checkedList
          : checkedList // ignore: cast_nullable_to_non_nullable
              as List<CheckedItemDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CheckSpotDTO extends _CheckSpotDTO {
  const _$_CheckSpotDTO(
      {@JsonKey(name: "OBJ_CD", defaultValue: "")
          required this.objCd,
      @JsonKey(name: "OBJ_NM", defaultValue: "")
          required this.objNm,
      @JsonKey(name: "OBJ_GUBUN", defaultValue: "")
          required this.objFlag,
      @JsonKey(name: "OBJ_GUBUN_SUB", defaultValue: "")
          required this.objSubFlag,
      @JsonKey(name: "OBJ_GUBUN_SUB_NM", defaultValue: "")
          required this.objSubFlagNm,
      required this.checkedList})
      : super._();

  factory _$_CheckSpotDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_CheckSpotDTOFromJson(json);

  @override
  @JsonKey(name: "OBJ_CD", defaultValue: "")
  final String objCd;
  @override
  @JsonKey(name: "OBJ_NM", defaultValue: "")
  final String objNm;
  @override
  @JsonKey(name: "OBJ_GUBUN", defaultValue: "")
  final String objFlag;
  @override
  @JsonKey(name: "OBJ_GUBUN_SUB", defaultValue: "")
  final String objSubFlag;
  @override
  @JsonKey(name: "OBJ_GUBUN_SUB_NM", defaultValue: "")
  final String objSubFlagNm;
  @override
  final List<CheckedItemDTO> checkedList;

  @override
  String toString() {
    return 'CheckSpotDTO(objCd: $objCd, objNm: $objNm, objFlag: $objFlag, objSubFlag: $objSubFlag, objSubFlagNm: $objSubFlagNm, checkedList: $checkedList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckSpotDTO &&
            (identical(other.objCd, objCd) ||
                const DeepCollectionEquality().equals(other.objCd, objCd)) &&
            (identical(other.objNm, objNm) ||
                const DeepCollectionEquality().equals(other.objNm, objNm)) &&
            (identical(other.objFlag, objFlag) ||
                const DeepCollectionEquality()
                    .equals(other.objFlag, objFlag)) &&
            (identical(other.objSubFlag, objSubFlag) ||
                const DeepCollectionEquality()
                    .equals(other.objSubFlag, objSubFlag)) &&
            (identical(other.objSubFlagNm, objSubFlagNm) ||
                const DeepCollectionEquality()
                    .equals(other.objSubFlagNm, objSubFlagNm)) &&
            (identical(other.checkedList, checkedList) ||
                const DeepCollectionEquality()
                    .equals(other.checkedList, checkedList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(objCd) ^
      const DeepCollectionEquality().hash(objNm) ^
      const DeepCollectionEquality().hash(objFlag) ^
      const DeepCollectionEquality().hash(objSubFlag) ^
      const DeepCollectionEquality().hash(objSubFlagNm) ^
      const DeepCollectionEquality().hash(checkedList);

  @JsonKey(ignore: true)
  @override
  _$CheckSpotDTOCopyWith<_CheckSpotDTO> get copyWith =>
      __$CheckSpotDTOCopyWithImpl<_CheckSpotDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CheckSpotDTOToJson(this);
  }
}

abstract class _CheckSpotDTO extends CheckSpotDTO {
  const factory _CheckSpotDTO(
      {@JsonKey(name: "OBJ_CD", defaultValue: "")
          required String objCd,
      @JsonKey(name: "OBJ_NM", defaultValue: "")
          required String objNm,
      @JsonKey(name: "OBJ_GUBUN", defaultValue: "")
          required String objFlag,
      @JsonKey(name: "OBJ_GUBUN_SUB", defaultValue: "")
          required String objSubFlag,
      @JsonKey(name: "OBJ_GUBUN_SUB_NM", defaultValue: "")
          required String objSubFlagNm,
      required List<CheckedItemDTO> checkedList}) = _$_CheckSpotDTO;
  const _CheckSpotDTO._() : super._();

  factory _CheckSpotDTO.fromJson(Map<String, dynamic> json) =
      _$_CheckSpotDTO.fromJson;

  @override
  @JsonKey(name: "OBJ_CD", defaultValue: "")
  String get objCd => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "OBJ_NM", defaultValue: "")
  String get objNm => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "OBJ_GUBUN", defaultValue: "")
  String get objFlag => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "OBJ_GUBUN_SUB", defaultValue: "")
  String get objSubFlag => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "OBJ_GUBUN_SUB_NM", defaultValue: "")
  String get objSubFlagNm => throw _privateConstructorUsedError;
  @override
  List<CheckedItemDTO> get checkedList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CheckSpotDTOCopyWith<_CheckSpotDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

CheckedItemDTO _$CheckedItemDTOFromJson(Map<String, dynamic> json) {
  return _CheckedItemDTO.fromJson(json);
}

/// @nodoc
class _$CheckedItemDTOTearOff {
  const _$CheckedItemDTOTearOff();

  _CheckedItemDTO call(
      {@JsonKey(name: "CHKLIST_NO", defaultValue: "")
          required String id,
      @JsonKey(name: "CHK_CHASU", defaultValue: "")
          required dynamic session,
      @JsonKey(name: "CHK_USER_ID", defaultValue: "")
          required String userId,
      @JsonKey(name: "CHK_USER_NM", defaultValue: "")
          required String userNm,
      @JsonKey(name: "CRT_DT_DISP", defaultValue: "")
          required String checkedTime}) {
    return _CheckedItemDTO(
      id: id,
      session: session,
      userId: userId,
      userNm: userNm,
      checkedTime: checkedTime,
    );
  }

  CheckedItemDTO fromJson(Map<String, Object> json) {
    return CheckedItemDTO.fromJson(json);
  }
}

/// @nodoc
const $CheckedItemDTO = _$CheckedItemDTOTearOff();

/// @nodoc
mixin _$CheckedItemDTO {
  @JsonKey(name: "CHKLIST_NO", defaultValue: "")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "CHK_CHASU", defaultValue: "")
  dynamic get session => throw _privateConstructorUsedError;
  @JsonKey(name: "CHK_USER_ID", defaultValue: "")
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "CHK_USER_NM", defaultValue: "")
  String get userNm => throw _privateConstructorUsedError;
  @JsonKey(name: "CRT_DT_DISP", defaultValue: "")
  String get checkedTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckedItemDTOCopyWith<CheckedItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckedItemDTOCopyWith<$Res> {
  factory $CheckedItemDTOCopyWith(
          CheckedItemDTO value, $Res Function(CheckedItemDTO) then) =
      _$CheckedItemDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "CHKLIST_NO", defaultValue: "") String id,
      @JsonKey(name: "CHK_CHASU", defaultValue: "") dynamic session,
      @JsonKey(name: "CHK_USER_ID", defaultValue: "") String userId,
      @JsonKey(name: "CHK_USER_NM", defaultValue: "") String userNm,
      @JsonKey(name: "CRT_DT_DISP", defaultValue: "") String checkedTime});
}

/// @nodoc
class _$CheckedItemDTOCopyWithImpl<$Res>
    implements $CheckedItemDTOCopyWith<$Res> {
  _$CheckedItemDTOCopyWithImpl(this._value, this._then);

  final CheckedItemDTO _value;
  // ignore: unused_field
  final $Res Function(CheckedItemDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? session = freezed,
    Object? userId = freezed,
    Object? userNm = freezed,
    Object? checkedTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      session: session == freezed
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as dynamic,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userNm: userNm == freezed
          ? _value.userNm
          : userNm // ignore: cast_nullable_to_non_nullable
              as String,
      checkedTime: checkedTime == freezed
          ? _value.checkedTime
          : checkedTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CheckedItemDTOCopyWith<$Res>
    implements $CheckedItemDTOCopyWith<$Res> {
  factory _$CheckedItemDTOCopyWith(
          _CheckedItemDTO value, $Res Function(_CheckedItemDTO) then) =
      __$CheckedItemDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "CHKLIST_NO", defaultValue: "") String id,
      @JsonKey(name: "CHK_CHASU", defaultValue: "") dynamic session,
      @JsonKey(name: "CHK_USER_ID", defaultValue: "") String userId,
      @JsonKey(name: "CHK_USER_NM", defaultValue: "") String userNm,
      @JsonKey(name: "CRT_DT_DISP", defaultValue: "") String checkedTime});
}

/// @nodoc
class __$CheckedItemDTOCopyWithImpl<$Res>
    extends _$CheckedItemDTOCopyWithImpl<$Res>
    implements _$CheckedItemDTOCopyWith<$Res> {
  __$CheckedItemDTOCopyWithImpl(
      _CheckedItemDTO _value, $Res Function(_CheckedItemDTO) _then)
      : super(_value, (v) => _then(v as _CheckedItemDTO));

  @override
  _CheckedItemDTO get _value => super._value as _CheckedItemDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? session = freezed,
    Object? userId = freezed,
    Object? userNm = freezed,
    Object? checkedTime = freezed,
  }) {
    return _then(_CheckedItemDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      session: session == freezed
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as dynamic,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userNm: userNm == freezed
          ? _value.userNm
          : userNm // ignore: cast_nullable_to_non_nullable
              as String,
      checkedTime: checkedTime == freezed
          ? _value.checkedTime
          : checkedTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CheckedItemDTO extends _CheckedItemDTO {
  const _$_CheckedItemDTO(
      {@JsonKey(name: "CHKLIST_NO", defaultValue: "")
          required this.id,
      @JsonKey(name: "CHK_CHASU", defaultValue: "")
          required this.session,
      @JsonKey(name: "CHK_USER_ID", defaultValue: "")
          required this.userId,
      @JsonKey(name: "CHK_USER_NM", defaultValue: "")
          required this.userNm,
      @JsonKey(name: "CRT_DT_DISP", defaultValue: "")
          required this.checkedTime})
      : super._();

  factory _$_CheckedItemDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_CheckedItemDTOFromJson(json);

  @override
  @JsonKey(name: "CHKLIST_NO", defaultValue: "")
  final String id;
  @override
  @JsonKey(name: "CHK_CHASU", defaultValue: "")
  final dynamic session;
  @override
  @JsonKey(name: "CHK_USER_ID", defaultValue: "")
  final String userId;
  @override
  @JsonKey(name: "CHK_USER_NM", defaultValue: "")
  final String userNm;
  @override
  @JsonKey(name: "CRT_DT_DISP", defaultValue: "")
  final String checkedTime;

  @override
  String toString() {
    return 'CheckedItemDTO(id: $id, session: $session, userId: $userId, userNm: $userNm, checkedTime: $checkedTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckedItemDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.session, session) ||
                const DeepCollectionEquality()
                    .equals(other.session, session)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.userNm, userNm) ||
                const DeepCollectionEquality().equals(other.userNm, userNm)) &&
            (identical(other.checkedTime, checkedTime) ||
                const DeepCollectionEquality()
                    .equals(other.checkedTime, checkedTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(session) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(userNm) ^
      const DeepCollectionEquality().hash(checkedTime);

  @JsonKey(ignore: true)
  @override
  _$CheckedItemDTOCopyWith<_CheckedItemDTO> get copyWith =>
      __$CheckedItemDTOCopyWithImpl<_CheckedItemDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CheckedItemDTOToJson(this);
  }
}

abstract class _CheckedItemDTO extends CheckedItemDTO {
  const factory _CheckedItemDTO(
      {@JsonKey(name: "CHKLIST_NO", defaultValue: "")
          required String id,
      @JsonKey(name: "CHK_CHASU", defaultValue: "")
          required dynamic session,
      @JsonKey(name: "CHK_USER_ID", defaultValue: "")
          required String userId,
      @JsonKey(name: "CHK_USER_NM", defaultValue: "")
          required String userNm,
      @JsonKey(name: "CRT_DT_DISP", defaultValue: "")
          required String checkedTime}) = _$_CheckedItemDTO;
  const _CheckedItemDTO._() : super._();

  factory _CheckedItemDTO.fromJson(Map<String, dynamic> json) =
      _$_CheckedItemDTO.fromJson;

  @override
  @JsonKey(name: "CHKLIST_NO", defaultValue: "")
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "CHK_CHASU", defaultValue: "")
  dynamic get session => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "CHK_USER_ID", defaultValue: "")
  String get userId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "CHK_USER_NM", defaultValue: "")
  String get userNm => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "CRT_DT_DISP", defaultValue: "")
  String get checkedTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CheckedItemDTOCopyWith<_CheckedItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
