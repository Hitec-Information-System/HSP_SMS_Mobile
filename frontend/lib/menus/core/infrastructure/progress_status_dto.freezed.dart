// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'progress_status_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProgressStatusDTO _$ProgressStatusDTOFromJson(Map<String, dynamic> json) {
  return _ProgressStatusDTO.fromJson(json);
}

/// @nodoc
class _$ProgressStatusDTOTearOff {
  const _$ProgressStatusDTOTearOff();

  _ProgressStatusDTO call(
      {@JsonKey(name: "CHK_AFTER_CNT", fromJson: stringToInt)
          required int completedCount,
      @JsonKey(name: "CHK_BEFORE_CNT", fromJson: stringToInt)
          required int notCompletedCount,
      @JsonKey(name: "CHK_CHASU")
          required String session,
      @JsonKey(name: "CHK_CHASU_NM")
          required String sessionName,
      @JsonKey(name: "CHK_TOT_CNT", fromJson: stringToInt)
          required int totalCount,
      @JsonKey(name: "COMP_CD")
          required String companyCd,
      @JsonKey(name: "OBJ_GUBUN")
          required String objCd}) {
    return _ProgressStatusDTO(
      completedCount: completedCount,
      notCompletedCount: notCompletedCount,
      session: session,
      sessionName: sessionName,
      totalCount: totalCount,
      companyCd: companyCd,
      objCd: objCd,
    );
  }

  ProgressStatusDTO fromJson(Map<String, Object> json) {
    return ProgressStatusDTO.fromJson(json);
  }
}

/// @nodoc
const $ProgressStatusDTO = _$ProgressStatusDTOTearOff();

/// @nodoc
mixin _$ProgressStatusDTO {
  @JsonKey(name: "CHK_AFTER_CNT", fromJson: stringToInt)
  int get completedCount => throw _privateConstructorUsedError;
  @JsonKey(name: "CHK_BEFORE_CNT", fromJson: stringToInt)
  int get notCompletedCount => throw _privateConstructorUsedError;
  @JsonKey(name: "CHK_CHASU")
  String get session => throw _privateConstructorUsedError;
  @JsonKey(name: "CHK_CHASU_NM")
  String get sessionName => throw _privateConstructorUsedError;
  @JsonKey(name: "CHK_TOT_CNT", fromJson: stringToInt)
  int get totalCount => throw _privateConstructorUsedError;
  @JsonKey(name: "COMP_CD")
  String get companyCd => throw _privateConstructorUsedError;
  @JsonKey(name: "OBJ_GUBUN")
  String get objCd => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProgressStatusDTOCopyWith<ProgressStatusDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgressStatusDTOCopyWith<$Res> {
  factory $ProgressStatusDTOCopyWith(
          ProgressStatusDTO value, $Res Function(ProgressStatusDTO) then) =
      _$ProgressStatusDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "CHK_AFTER_CNT", fromJson: stringToInt)
          int completedCount,
      @JsonKey(name: "CHK_BEFORE_CNT", fromJson: stringToInt)
          int notCompletedCount,
      @JsonKey(name: "CHK_CHASU")
          String session,
      @JsonKey(name: "CHK_CHASU_NM")
          String sessionName,
      @JsonKey(name: "CHK_TOT_CNT", fromJson: stringToInt)
          int totalCount,
      @JsonKey(name: "COMP_CD")
          String companyCd,
      @JsonKey(name: "OBJ_GUBUN")
          String objCd});
}

/// @nodoc
class _$ProgressStatusDTOCopyWithImpl<$Res>
    implements $ProgressStatusDTOCopyWith<$Res> {
  _$ProgressStatusDTOCopyWithImpl(this._value, this._then);

  final ProgressStatusDTO _value;
  // ignore: unused_field
  final $Res Function(ProgressStatusDTO) _then;

  @override
  $Res call({
    Object? completedCount = freezed,
    Object? notCompletedCount = freezed,
    Object? session = freezed,
    Object? sessionName = freezed,
    Object? totalCount = freezed,
    Object? companyCd = freezed,
    Object? objCd = freezed,
  }) {
    return _then(_value.copyWith(
      completedCount: completedCount == freezed
          ? _value.completedCount
          : completedCount // ignore: cast_nullable_to_non_nullable
              as int,
      notCompletedCount: notCompletedCount == freezed
          ? _value.notCompletedCount
          : notCompletedCount // ignore: cast_nullable_to_non_nullable
              as int,
      session: session == freezed
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as String,
      sessionName: sessionName == freezed
          ? _value.sessionName
          : sessionName // ignore: cast_nullable_to_non_nullable
              as String,
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      companyCd: companyCd == freezed
          ? _value.companyCd
          : companyCd // ignore: cast_nullable_to_non_nullable
              as String,
      objCd: objCd == freezed
          ? _value.objCd
          : objCd // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ProgressStatusDTOCopyWith<$Res>
    implements $ProgressStatusDTOCopyWith<$Res> {
  factory _$ProgressStatusDTOCopyWith(
          _ProgressStatusDTO value, $Res Function(_ProgressStatusDTO) then) =
      __$ProgressStatusDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "CHK_AFTER_CNT", fromJson: stringToInt)
          int completedCount,
      @JsonKey(name: "CHK_BEFORE_CNT", fromJson: stringToInt)
          int notCompletedCount,
      @JsonKey(name: "CHK_CHASU")
          String session,
      @JsonKey(name: "CHK_CHASU_NM")
          String sessionName,
      @JsonKey(name: "CHK_TOT_CNT", fromJson: stringToInt)
          int totalCount,
      @JsonKey(name: "COMP_CD")
          String companyCd,
      @JsonKey(name: "OBJ_GUBUN")
          String objCd});
}

/// @nodoc
class __$ProgressStatusDTOCopyWithImpl<$Res>
    extends _$ProgressStatusDTOCopyWithImpl<$Res>
    implements _$ProgressStatusDTOCopyWith<$Res> {
  __$ProgressStatusDTOCopyWithImpl(
      _ProgressStatusDTO _value, $Res Function(_ProgressStatusDTO) _then)
      : super(_value, (v) => _then(v as _ProgressStatusDTO));

  @override
  _ProgressStatusDTO get _value => super._value as _ProgressStatusDTO;

  @override
  $Res call({
    Object? completedCount = freezed,
    Object? notCompletedCount = freezed,
    Object? session = freezed,
    Object? sessionName = freezed,
    Object? totalCount = freezed,
    Object? companyCd = freezed,
    Object? objCd = freezed,
  }) {
    return _then(_ProgressStatusDTO(
      completedCount: completedCount == freezed
          ? _value.completedCount
          : completedCount // ignore: cast_nullable_to_non_nullable
              as int,
      notCompletedCount: notCompletedCount == freezed
          ? _value.notCompletedCount
          : notCompletedCount // ignore: cast_nullable_to_non_nullable
              as int,
      session: session == freezed
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as String,
      sessionName: sessionName == freezed
          ? _value.sessionName
          : sessionName // ignore: cast_nullable_to_non_nullable
              as String,
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      companyCd: companyCd == freezed
          ? _value.companyCd
          : companyCd // ignore: cast_nullable_to_non_nullable
              as String,
      objCd: objCd == freezed
          ? _value.objCd
          : objCd // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProgressStatusDTO extends _ProgressStatusDTO {
  const _$_ProgressStatusDTO(
      {@JsonKey(name: "CHK_AFTER_CNT", fromJson: stringToInt)
          required this.completedCount,
      @JsonKey(name: "CHK_BEFORE_CNT", fromJson: stringToInt)
          required this.notCompletedCount,
      @JsonKey(name: "CHK_CHASU")
          required this.session,
      @JsonKey(name: "CHK_CHASU_NM")
          required this.sessionName,
      @JsonKey(name: "CHK_TOT_CNT", fromJson: stringToInt)
          required this.totalCount,
      @JsonKey(name: "COMP_CD")
          required this.companyCd,
      @JsonKey(name: "OBJ_GUBUN")
          required this.objCd})
      : super._();

  factory _$_ProgressStatusDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_ProgressStatusDTOFromJson(json);

  @override
  @JsonKey(name: "CHK_AFTER_CNT", fromJson: stringToInt)
  final int completedCount;
  @override
  @JsonKey(name: "CHK_BEFORE_CNT", fromJson: stringToInt)
  final int notCompletedCount;
  @override
  @JsonKey(name: "CHK_CHASU")
  final String session;
  @override
  @JsonKey(name: "CHK_CHASU_NM")
  final String sessionName;
  @override
  @JsonKey(name: "CHK_TOT_CNT", fromJson: stringToInt)
  final int totalCount;
  @override
  @JsonKey(name: "COMP_CD")
  final String companyCd;
  @override
  @JsonKey(name: "OBJ_GUBUN")
  final String objCd;

  @override
  String toString() {
    return 'ProgressStatusDTO(completedCount: $completedCount, notCompletedCount: $notCompletedCount, session: $session, sessionName: $sessionName, totalCount: $totalCount, companyCd: $companyCd, objCd: $objCd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProgressStatusDTO &&
            (identical(other.completedCount, completedCount) ||
                const DeepCollectionEquality()
                    .equals(other.completedCount, completedCount)) &&
            (identical(other.notCompletedCount, notCompletedCount) ||
                const DeepCollectionEquality()
                    .equals(other.notCompletedCount, notCompletedCount)) &&
            (identical(other.session, session) ||
                const DeepCollectionEquality()
                    .equals(other.session, session)) &&
            (identical(other.sessionName, sessionName) ||
                const DeepCollectionEquality()
                    .equals(other.sessionName, sessionName)) &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.companyCd, companyCd) ||
                const DeepCollectionEquality()
                    .equals(other.companyCd, companyCd)) &&
            (identical(other.objCd, objCd) ||
                const DeepCollectionEquality().equals(other.objCd, objCd)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(completedCount) ^
      const DeepCollectionEquality().hash(notCompletedCount) ^
      const DeepCollectionEquality().hash(session) ^
      const DeepCollectionEquality().hash(sessionName) ^
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(companyCd) ^
      const DeepCollectionEquality().hash(objCd);

  @JsonKey(ignore: true)
  @override
  _$ProgressStatusDTOCopyWith<_ProgressStatusDTO> get copyWith =>
      __$ProgressStatusDTOCopyWithImpl<_ProgressStatusDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProgressStatusDTOToJson(this);
  }
}

abstract class _ProgressStatusDTO extends ProgressStatusDTO {
  const factory _ProgressStatusDTO(
      {@JsonKey(name: "CHK_AFTER_CNT", fromJson: stringToInt)
          required int completedCount,
      @JsonKey(name: "CHK_BEFORE_CNT", fromJson: stringToInt)
          required int notCompletedCount,
      @JsonKey(name: "CHK_CHASU")
          required String session,
      @JsonKey(name: "CHK_CHASU_NM")
          required String sessionName,
      @JsonKey(name: "CHK_TOT_CNT", fromJson: stringToInt)
          required int totalCount,
      @JsonKey(name: "COMP_CD")
          required String companyCd,
      @JsonKey(name: "OBJ_GUBUN")
          required String objCd}) = _$_ProgressStatusDTO;
  const _ProgressStatusDTO._() : super._();

  factory _ProgressStatusDTO.fromJson(Map<String, dynamic> json) =
      _$_ProgressStatusDTO.fromJson;

  @override
  @JsonKey(name: "CHK_AFTER_CNT", fromJson: stringToInt)
  int get completedCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "CHK_BEFORE_CNT", fromJson: stringToInt)
  int get notCompletedCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "CHK_CHASU")
  String get session => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "CHK_CHASU_NM")
  String get sessionName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "CHK_TOT_CNT", fromJson: stringToInt)
  int get totalCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "COMP_CD")
  String get companyCd => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "OBJ_GUBUN")
  String get objCd => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProgressStatusDTOCopyWith<_ProgressStatusDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
