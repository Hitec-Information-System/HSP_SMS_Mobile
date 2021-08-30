// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'check_standard_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CheckStandardDTO _$CheckStandardDTOFromJson(Map<String, dynamic> json) {
  return _CheckStandardDTO.fromJson(json);
}

/// @nodoc
class _$CheckStandardDTOTearOff {
  const _$CheckStandardDTOTearOff();

  _CheckStandardDTO call(
      {@JsonKey(name: "intervals") required List<CheckIntervalDTO> intervals,
      @JsonKey(name: "sessions") required List<CheckSessionDTO> sessions}) {
    return _CheckStandardDTO(
      intervals: intervals,
      sessions: sessions,
    );
  }

  CheckStandardDTO fromJson(Map<String, Object> json) {
    return CheckStandardDTO.fromJson(json);
  }
}

/// @nodoc
const $CheckStandardDTO = _$CheckStandardDTOTearOff();

/// @nodoc
mixin _$CheckStandardDTO {
  @JsonKey(name: "intervals")
  List<CheckIntervalDTO> get intervals => throw _privateConstructorUsedError;
  @JsonKey(name: "sessions")
  List<CheckSessionDTO> get sessions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckStandardDTOCopyWith<CheckStandardDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckStandardDTOCopyWith<$Res> {
  factory $CheckStandardDTOCopyWith(
          CheckStandardDTO value, $Res Function(CheckStandardDTO) then) =
      _$CheckStandardDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "intervals") List<CheckIntervalDTO> intervals,
      @JsonKey(name: "sessions") List<CheckSessionDTO> sessions});
}

/// @nodoc
class _$CheckStandardDTOCopyWithImpl<$Res>
    implements $CheckStandardDTOCopyWith<$Res> {
  _$CheckStandardDTOCopyWithImpl(this._value, this._then);

  final CheckStandardDTO _value;
  // ignore: unused_field
  final $Res Function(CheckStandardDTO) _then;

  @override
  $Res call({
    Object? intervals = freezed,
    Object? sessions = freezed,
  }) {
    return _then(_value.copyWith(
      intervals: intervals == freezed
          ? _value.intervals
          : intervals // ignore: cast_nullable_to_non_nullable
              as List<CheckIntervalDTO>,
      sessions: sessions == freezed
          ? _value.sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<CheckSessionDTO>,
    ));
  }
}

/// @nodoc
abstract class _$CheckStandardDTOCopyWith<$Res>
    implements $CheckStandardDTOCopyWith<$Res> {
  factory _$CheckStandardDTOCopyWith(
          _CheckStandardDTO value, $Res Function(_CheckStandardDTO) then) =
      __$CheckStandardDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "intervals") List<CheckIntervalDTO> intervals,
      @JsonKey(name: "sessions") List<CheckSessionDTO> sessions});
}

/// @nodoc
class __$CheckStandardDTOCopyWithImpl<$Res>
    extends _$CheckStandardDTOCopyWithImpl<$Res>
    implements _$CheckStandardDTOCopyWith<$Res> {
  __$CheckStandardDTOCopyWithImpl(
      _CheckStandardDTO _value, $Res Function(_CheckStandardDTO) _then)
      : super(_value, (v) => _then(v as _CheckStandardDTO));

  @override
  _CheckStandardDTO get _value => super._value as _CheckStandardDTO;

  @override
  $Res call({
    Object? intervals = freezed,
    Object? sessions = freezed,
  }) {
    return _then(_CheckStandardDTO(
      intervals: intervals == freezed
          ? _value.intervals
          : intervals // ignore: cast_nullable_to_non_nullable
              as List<CheckIntervalDTO>,
      sessions: sessions == freezed
          ? _value.sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<CheckSessionDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CheckStandardDTO extends _CheckStandardDTO {
  const _$_CheckStandardDTO(
      {@JsonKey(name: "intervals") required this.intervals,
      @JsonKey(name: "sessions") required this.sessions})
      : super._();

  factory _$_CheckStandardDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_CheckStandardDTOFromJson(json);

  @override
  @JsonKey(name: "intervals")
  final List<CheckIntervalDTO> intervals;
  @override
  @JsonKey(name: "sessions")
  final List<CheckSessionDTO> sessions;

  @override
  String toString() {
    return 'CheckStandardDTO(intervals: $intervals, sessions: $sessions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckStandardDTO &&
            (identical(other.intervals, intervals) ||
                const DeepCollectionEquality()
                    .equals(other.intervals, intervals)) &&
            (identical(other.sessions, sessions) ||
                const DeepCollectionEquality()
                    .equals(other.sessions, sessions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(intervals) ^
      const DeepCollectionEquality().hash(sessions);

  @JsonKey(ignore: true)
  @override
  _$CheckStandardDTOCopyWith<_CheckStandardDTO> get copyWith =>
      __$CheckStandardDTOCopyWithImpl<_CheckStandardDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CheckStandardDTOToJson(this);
  }
}

abstract class _CheckStandardDTO extends CheckStandardDTO {
  const factory _CheckStandardDTO(
      {@JsonKey(name: "intervals")
          required List<CheckIntervalDTO> intervals,
      @JsonKey(name: "sessions")
          required List<CheckSessionDTO> sessions}) = _$_CheckStandardDTO;
  const _CheckStandardDTO._() : super._();

  factory _CheckStandardDTO.fromJson(Map<String, dynamic> json) =
      _$_CheckStandardDTO.fromJson;

  @override
  @JsonKey(name: "intervals")
  List<CheckIntervalDTO> get intervals => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "sessions")
  List<CheckSessionDTO> get sessions => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CheckStandardDTOCopyWith<_CheckStandardDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

CheckIntervalDTO _$CheckIntervalDTOFromJson(Map<String, dynamic> json) {
  return _CheckIntervalDTO.fromJson(json);
}

/// @nodoc
class _$CheckIntervalDTOTearOff {
  const _$CheckIntervalDTOTearOff();

  _CheckIntervalDTO call(
      {@JsonKey(name: "GUBUN", defaultValue: "") required dynamic id,
      @JsonKey(name: "GUBUN_NM", defaultValue: "") required dynamic name}) {
    return _CheckIntervalDTO(
      id: id,
      name: name,
    );
  }

  CheckIntervalDTO fromJson(Map<String, Object> json) {
    return CheckIntervalDTO.fromJson(json);
  }
}

/// @nodoc
const $CheckIntervalDTO = _$CheckIntervalDTOTearOff();

/// @nodoc
mixin _$CheckIntervalDTO {
  @JsonKey(name: "GUBUN", defaultValue: "")
  dynamic get id => throw _privateConstructorUsedError;
  @JsonKey(name: "GUBUN_NM", defaultValue: "")
  dynamic get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckIntervalDTOCopyWith<CheckIntervalDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckIntervalDTOCopyWith<$Res> {
  factory $CheckIntervalDTOCopyWith(
          CheckIntervalDTO value, $Res Function(CheckIntervalDTO) then) =
      _$CheckIntervalDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "GUBUN", defaultValue: "") dynamic id,
      @JsonKey(name: "GUBUN_NM", defaultValue: "") dynamic name});
}

/// @nodoc
class _$CheckIntervalDTOCopyWithImpl<$Res>
    implements $CheckIntervalDTOCopyWith<$Res> {
  _$CheckIntervalDTOCopyWithImpl(this._value, this._then);

  final CheckIntervalDTO _value;
  // ignore: unused_field
  final $Res Function(CheckIntervalDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$CheckIntervalDTOCopyWith<$Res>
    implements $CheckIntervalDTOCopyWith<$Res> {
  factory _$CheckIntervalDTOCopyWith(
          _CheckIntervalDTO value, $Res Function(_CheckIntervalDTO) then) =
      __$CheckIntervalDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "GUBUN", defaultValue: "") dynamic id,
      @JsonKey(name: "GUBUN_NM", defaultValue: "") dynamic name});
}

/// @nodoc
class __$CheckIntervalDTOCopyWithImpl<$Res>
    extends _$CheckIntervalDTOCopyWithImpl<$Res>
    implements _$CheckIntervalDTOCopyWith<$Res> {
  __$CheckIntervalDTOCopyWithImpl(
      _CheckIntervalDTO _value, $Res Function(_CheckIntervalDTO) _then)
      : super(_value, (v) => _then(v as _CheckIntervalDTO));

  @override
  _CheckIntervalDTO get _value => super._value as _CheckIntervalDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_CheckIntervalDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CheckIntervalDTO extends _CheckIntervalDTO {
  const _$_CheckIntervalDTO(
      {@JsonKey(name: "GUBUN", defaultValue: "") required this.id,
      @JsonKey(name: "GUBUN_NM", defaultValue: "") required this.name})
      : super._();

  factory _$_CheckIntervalDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_CheckIntervalDTOFromJson(json);

  @override
  @JsonKey(name: "GUBUN", defaultValue: "")
  final dynamic id;
  @override
  @JsonKey(name: "GUBUN_NM", defaultValue: "")
  final dynamic name;

  @override
  String toString() {
    return 'CheckIntervalDTO(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckIntervalDTO &&
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
  _$CheckIntervalDTOCopyWith<_CheckIntervalDTO> get copyWith =>
      __$CheckIntervalDTOCopyWithImpl<_CheckIntervalDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CheckIntervalDTOToJson(this);
  }
}

abstract class _CheckIntervalDTO extends CheckIntervalDTO {
  const factory _CheckIntervalDTO(
          {@JsonKey(name: "GUBUN", defaultValue: "") required dynamic id,
          @JsonKey(name: "GUBUN_NM", defaultValue: "") required dynamic name}) =
      _$_CheckIntervalDTO;
  const _CheckIntervalDTO._() : super._();

  factory _CheckIntervalDTO.fromJson(Map<String, dynamic> json) =
      _$_CheckIntervalDTO.fromJson;

  @override
  @JsonKey(name: "GUBUN", defaultValue: "")
  dynamic get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "GUBUN_NM", defaultValue: "")
  dynamic get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CheckIntervalDTOCopyWith<_CheckIntervalDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

CheckSessionDTO _$CheckSessionDTOFromJson(Map<String, dynamic> json) {
  return _CheckSessionDTO.fromJson(json);
}

/// @nodoc
class _$CheckSessionDTOTearOff {
  const _$CheckSessionDTOTearOff();

  _CheckSessionDTO call(
      {@JsonKey(name: "GUBUN", defaultValue: "") required dynamic id,
      @JsonKey(name: "GUBUN_NM", defaultValue: "") required dynamic name}) {
    return _CheckSessionDTO(
      id: id,
      name: name,
    );
  }

  CheckSessionDTO fromJson(Map<String, Object> json) {
    return CheckSessionDTO.fromJson(json);
  }
}

/// @nodoc
const $CheckSessionDTO = _$CheckSessionDTOTearOff();

/// @nodoc
mixin _$CheckSessionDTO {
  @JsonKey(name: "GUBUN", defaultValue: "")
  dynamic get id => throw _privateConstructorUsedError;
  @JsonKey(name: "GUBUN_NM", defaultValue: "")
  dynamic get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckSessionDTOCopyWith<CheckSessionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckSessionDTOCopyWith<$Res> {
  factory $CheckSessionDTOCopyWith(
          CheckSessionDTO value, $Res Function(CheckSessionDTO) then) =
      _$CheckSessionDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "GUBUN", defaultValue: "") dynamic id,
      @JsonKey(name: "GUBUN_NM", defaultValue: "") dynamic name});
}

/// @nodoc
class _$CheckSessionDTOCopyWithImpl<$Res>
    implements $CheckSessionDTOCopyWith<$Res> {
  _$CheckSessionDTOCopyWithImpl(this._value, this._then);

  final CheckSessionDTO _value;
  // ignore: unused_field
  final $Res Function(CheckSessionDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$CheckSessionDTOCopyWith<$Res>
    implements $CheckSessionDTOCopyWith<$Res> {
  factory _$CheckSessionDTOCopyWith(
          _CheckSessionDTO value, $Res Function(_CheckSessionDTO) then) =
      __$CheckSessionDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "GUBUN", defaultValue: "") dynamic id,
      @JsonKey(name: "GUBUN_NM", defaultValue: "") dynamic name});
}

/// @nodoc
class __$CheckSessionDTOCopyWithImpl<$Res>
    extends _$CheckSessionDTOCopyWithImpl<$Res>
    implements _$CheckSessionDTOCopyWith<$Res> {
  __$CheckSessionDTOCopyWithImpl(
      _CheckSessionDTO _value, $Res Function(_CheckSessionDTO) _then)
      : super(_value, (v) => _then(v as _CheckSessionDTO));

  @override
  _CheckSessionDTO get _value => super._value as _CheckSessionDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_CheckSessionDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CheckSessionDTO extends _CheckSessionDTO {
  const _$_CheckSessionDTO(
      {@JsonKey(name: "GUBUN", defaultValue: "") required this.id,
      @JsonKey(name: "GUBUN_NM", defaultValue: "") required this.name})
      : super._();

  factory _$_CheckSessionDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_CheckSessionDTOFromJson(json);

  @override
  @JsonKey(name: "GUBUN", defaultValue: "")
  final dynamic id;
  @override
  @JsonKey(name: "GUBUN_NM", defaultValue: "")
  final dynamic name;

  @override
  String toString() {
    return 'CheckSessionDTO(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckSessionDTO &&
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
  _$CheckSessionDTOCopyWith<_CheckSessionDTO> get copyWith =>
      __$CheckSessionDTOCopyWithImpl<_CheckSessionDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CheckSessionDTOToJson(this);
  }
}

abstract class _CheckSessionDTO extends CheckSessionDTO {
  const factory _CheckSessionDTO(
          {@JsonKey(name: "GUBUN", defaultValue: "") required dynamic id,
          @JsonKey(name: "GUBUN_NM", defaultValue: "") required dynamic name}) =
      _$_CheckSessionDTO;
  const _CheckSessionDTO._() : super._();

  factory _CheckSessionDTO.fromJson(Map<String, dynamic> json) =
      _$_CheckSessionDTO.fromJson;

  @override
  @JsonKey(name: "GUBUN", defaultValue: "")
  dynamic get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "GUBUN_NM", defaultValue: "")
  dynamic get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CheckSessionDTOCopyWith<_CheckSessionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
