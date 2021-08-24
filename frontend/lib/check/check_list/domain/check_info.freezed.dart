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
      {required String spotFlag,
      required String checkDate,
      required String checkTitme,
      required int checkIntervalIndex,
      required int checkRepIndex,
      required List<CheckDetails> details}) {
    return _CheckInfo(
      spotFlag: spotFlag,
      checkDate: checkDate,
      checkTitme: checkTitme,
      checkIntervalIndex: checkIntervalIndex,
      checkRepIndex: checkRepIndex,
      details: details,
    );
  }
}

/// @nodoc
const $CheckInfo = _$CheckInfoTearOff();

/// @nodoc
mixin _$CheckInfo {
  String get spotFlag => throw _privateConstructorUsedError;
  String get checkDate => throw _privateConstructorUsedError;
  String get checkTitme => throw _privateConstructorUsedError;
  int get checkIntervalIndex => throw _privateConstructorUsedError;
  int get checkRepIndex => throw _privateConstructorUsedError;
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
      {String spotFlag,
      String checkDate,
      String checkTitme,
      int checkIntervalIndex,
      int checkRepIndex,
      List<CheckDetails> details});
}

/// @nodoc
class _$CheckInfoCopyWithImpl<$Res> implements $CheckInfoCopyWith<$Res> {
  _$CheckInfoCopyWithImpl(this._value, this._then);

  final CheckInfo _value;
  // ignore: unused_field
  final $Res Function(CheckInfo) _then;

  @override
  $Res call({
    Object? spotFlag = freezed,
    Object? checkDate = freezed,
    Object? checkTitme = freezed,
    Object? checkIntervalIndex = freezed,
    Object? checkRepIndex = freezed,
    Object? details = freezed,
  }) {
    return _then(_value.copyWith(
      spotFlag: spotFlag == freezed
          ? _value.spotFlag
          : spotFlag // ignore: cast_nullable_to_non_nullable
              as String,
      checkDate: checkDate == freezed
          ? _value.checkDate
          : checkDate // ignore: cast_nullable_to_non_nullable
              as String,
      checkTitme: checkTitme == freezed
          ? _value.checkTitme
          : checkTitme // ignore: cast_nullable_to_non_nullable
              as String,
      checkIntervalIndex: checkIntervalIndex == freezed
          ? _value.checkIntervalIndex
          : checkIntervalIndex // ignore: cast_nullable_to_non_nullable
              as int,
      checkRepIndex: checkRepIndex == freezed
          ? _value.checkRepIndex
          : checkRepIndex // ignore: cast_nullable_to_non_nullable
              as int,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<CheckDetails>,
    ));
  }
}

/// @nodoc
abstract class _$CheckInfoCopyWith<$Res> implements $CheckInfoCopyWith<$Res> {
  factory _$CheckInfoCopyWith(
          _CheckInfo value, $Res Function(_CheckInfo) then) =
      __$CheckInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String spotFlag,
      String checkDate,
      String checkTitme,
      int checkIntervalIndex,
      int checkRepIndex,
      List<CheckDetails> details});
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
    Object? spotFlag = freezed,
    Object? checkDate = freezed,
    Object? checkTitme = freezed,
    Object? checkIntervalIndex = freezed,
    Object? checkRepIndex = freezed,
    Object? details = freezed,
  }) {
    return _then(_CheckInfo(
      spotFlag: spotFlag == freezed
          ? _value.spotFlag
          : spotFlag // ignore: cast_nullable_to_non_nullable
              as String,
      checkDate: checkDate == freezed
          ? _value.checkDate
          : checkDate // ignore: cast_nullable_to_non_nullable
              as String,
      checkTitme: checkTitme == freezed
          ? _value.checkTitme
          : checkTitme // ignore: cast_nullable_to_non_nullable
              as String,
      checkIntervalIndex: checkIntervalIndex == freezed
          ? _value.checkIntervalIndex
          : checkIntervalIndex // ignore: cast_nullable_to_non_nullable
              as int,
      checkRepIndex: checkRepIndex == freezed
          ? _value.checkRepIndex
          : checkRepIndex // ignore: cast_nullable_to_non_nullable
              as int,
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
      {required this.spotFlag,
      required this.checkDate,
      required this.checkTitme,
      required this.checkIntervalIndex,
      required this.checkRepIndex,
      required this.details})
      : super._();

  @override
  final String spotFlag;
  @override
  final String checkDate;
  @override
  final String checkTitme;
  @override
  final int checkIntervalIndex;
  @override
  final int checkRepIndex;
  @override
  final List<CheckDetails> details;

  @override
  String toString() {
    return 'CheckInfo(spotFlag: $spotFlag, checkDate: $checkDate, checkTitme: $checkTitme, checkIntervalIndex: $checkIntervalIndex, checkRepIndex: $checkRepIndex, details: $details)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckInfo &&
            (identical(other.spotFlag, spotFlag) ||
                const DeepCollectionEquality()
                    .equals(other.spotFlag, spotFlag)) &&
            (identical(other.checkDate, checkDate) ||
                const DeepCollectionEquality()
                    .equals(other.checkDate, checkDate)) &&
            (identical(other.checkTitme, checkTitme) ||
                const DeepCollectionEquality()
                    .equals(other.checkTitme, checkTitme)) &&
            (identical(other.checkIntervalIndex, checkIntervalIndex) ||
                const DeepCollectionEquality()
                    .equals(other.checkIntervalIndex, checkIntervalIndex)) &&
            (identical(other.checkRepIndex, checkRepIndex) ||
                const DeepCollectionEquality()
                    .equals(other.checkRepIndex, checkRepIndex)) &&
            (identical(other.details, details) ||
                const DeepCollectionEquality().equals(other.details, details)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(spotFlag) ^
      const DeepCollectionEquality().hash(checkDate) ^
      const DeepCollectionEquality().hash(checkTitme) ^
      const DeepCollectionEquality().hash(checkIntervalIndex) ^
      const DeepCollectionEquality().hash(checkRepIndex) ^
      const DeepCollectionEquality().hash(details);

  @JsonKey(ignore: true)
  @override
  _$CheckInfoCopyWith<_CheckInfo> get copyWith =>
      __$CheckInfoCopyWithImpl<_CheckInfo>(this, _$identity);
}

abstract class _CheckInfo extends CheckInfo {
  const factory _CheckInfo(
      {required String spotFlag,
      required String checkDate,
      required String checkTitme,
      required int checkIntervalIndex,
      required int checkRepIndex,
      required List<CheckDetails> details}) = _$_CheckInfo;
  const _CheckInfo._() : super._();

  @override
  String get spotFlag => throw _privateConstructorUsedError;
  @override
  String get checkDate => throw _privateConstructorUsedError;
  @override
  String get checkTitme => throw _privateConstructorUsedError;
  @override
  int get checkIntervalIndex => throw _privateConstructorUsedError;
  @override
  int get checkRepIndex => throw _privateConstructorUsedError;
  @override
  List<CheckDetails> get details => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CheckInfoCopyWith<_CheckInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
