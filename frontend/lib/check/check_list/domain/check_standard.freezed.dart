// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'check_standard.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CheckStandardTearOff {
  const _$CheckStandardTearOff();

  _CheckStandard call(
      {required List<CheckInterval> intervals,
      required List<CheckSession> sessions}) {
    return _CheckStandard(
      intervals: intervals,
      sessions: sessions,
    );
  }
}

/// @nodoc
const $CheckStandard = _$CheckStandardTearOff();

/// @nodoc
mixin _$CheckStandard {
  List<CheckInterval> get intervals => throw _privateConstructorUsedError;
  List<CheckSession> get sessions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CheckStandardCopyWith<CheckStandard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckStandardCopyWith<$Res> {
  factory $CheckStandardCopyWith(
          CheckStandard value, $Res Function(CheckStandard) then) =
      _$CheckStandardCopyWithImpl<$Res>;
  $Res call({List<CheckInterval> intervals, List<CheckSession> sessions});
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
    Object? intervals = freezed,
    Object? sessions = freezed,
  }) {
    return _then(_value.copyWith(
      intervals: intervals == freezed
          ? _value.intervals
          : intervals // ignore: cast_nullable_to_non_nullable
              as List<CheckInterval>,
      sessions: sessions == freezed
          ? _value.sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<CheckSession>,
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
  $Res call({List<CheckInterval> intervals, List<CheckSession> sessions});
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
    Object? intervals = freezed,
    Object? sessions = freezed,
  }) {
    return _then(_CheckStandard(
      intervals: intervals == freezed
          ? _value.intervals
          : intervals // ignore: cast_nullable_to_non_nullable
              as List<CheckInterval>,
      sessions: sessions == freezed
          ? _value.sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<CheckSession>,
    ));
  }
}

/// @nodoc

class _$_CheckStandard extends _CheckStandard {
  const _$_CheckStandard({required this.intervals, required this.sessions})
      : super._();

  @override
  final List<CheckInterval> intervals;
  @override
  final List<CheckSession> sessions;

  @override
  String toString() {
    return 'CheckStandard(intervals: $intervals, sessions: $sessions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckStandard &&
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
  _$CheckStandardCopyWith<_CheckStandard> get copyWith =>
      __$CheckStandardCopyWithImpl<_CheckStandard>(this, _$identity);
}

abstract class _CheckStandard extends CheckStandard {
  const factory _CheckStandard(
      {required List<CheckInterval> intervals,
      required List<CheckSession> sessions}) = _$_CheckStandard;
  const _CheckStandard._() : super._();

  @override
  List<CheckInterval> get intervals => throw _privateConstructorUsedError;
  @override
  List<CheckSession> get sessions => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CheckStandardCopyWith<_CheckStandard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CheckIntervalTearOff {
  const _$CheckIntervalTearOff();

  _CheckInterval call({required String id, required String name}) {
    return _CheckInterval(
      id: id,
      name: name,
    );
  }
}

/// @nodoc
const $CheckInterval = _$CheckIntervalTearOff();

/// @nodoc
mixin _$CheckInterval {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CheckIntervalCopyWith<CheckInterval> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckIntervalCopyWith<$Res> {
  factory $CheckIntervalCopyWith(
          CheckInterval value, $Res Function(CheckInterval) then) =
      _$CheckIntervalCopyWithImpl<$Res>;
  $Res call({String id, String name});
}

/// @nodoc
class _$CheckIntervalCopyWithImpl<$Res>
    implements $CheckIntervalCopyWith<$Res> {
  _$CheckIntervalCopyWithImpl(this._value, this._then);

  final CheckInterval _value;
  // ignore: unused_field
  final $Res Function(CheckInterval) _then;

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
abstract class _$CheckIntervalCopyWith<$Res>
    implements $CheckIntervalCopyWith<$Res> {
  factory _$CheckIntervalCopyWith(
          _CheckInterval value, $Res Function(_CheckInterval) then) =
      __$CheckIntervalCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name});
}

/// @nodoc
class __$CheckIntervalCopyWithImpl<$Res>
    extends _$CheckIntervalCopyWithImpl<$Res>
    implements _$CheckIntervalCopyWith<$Res> {
  __$CheckIntervalCopyWithImpl(
      _CheckInterval _value, $Res Function(_CheckInterval) _then)
      : super(_value, (v) => _then(v as _CheckInterval));

  @override
  _CheckInterval get _value => super._value as _CheckInterval;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_CheckInterval(
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

class _$_CheckInterval extends _CheckInterval {
  const _$_CheckInterval({required this.id, required this.name}) : super._();

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'CheckInterval(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckInterval &&
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
  _$CheckIntervalCopyWith<_CheckInterval> get copyWith =>
      __$CheckIntervalCopyWithImpl<_CheckInterval>(this, _$identity);
}

abstract class _CheckInterval extends CheckInterval {
  const factory _CheckInterval({required String id, required String name}) =
      _$_CheckInterval;
  const _CheckInterval._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CheckIntervalCopyWith<_CheckInterval> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CheckSessionTearOff {
  const _$CheckSessionTearOff();

  _CheckSession call({required String id, required String name}) {
    return _CheckSession(
      id: id,
      name: name,
    );
  }
}

/// @nodoc
const $CheckSession = _$CheckSessionTearOff();

/// @nodoc
mixin _$CheckSession {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CheckSessionCopyWith<CheckSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckSessionCopyWith<$Res> {
  factory $CheckSessionCopyWith(
          CheckSession value, $Res Function(CheckSession) then) =
      _$CheckSessionCopyWithImpl<$Res>;
  $Res call({String id, String name});
}

/// @nodoc
class _$CheckSessionCopyWithImpl<$Res> implements $CheckSessionCopyWith<$Res> {
  _$CheckSessionCopyWithImpl(this._value, this._then);

  final CheckSession _value;
  // ignore: unused_field
  final $Res Function(CheckSession) _then;

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
abstract class _$CheckSessionCopyWith<$Res>
    implements $CheckSessionCopyWith<$Res> {
  factory _$CheckSessionCopyWith(
          _CheckSession value, $Res Function(_CheckSession) then) =
      __$CheckSessionCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name});
}

/// @nodoc
class __$CheckSessionCopyWithImpl<$Res> extends _$CheckSessionCopyWithImpl<$Res>
    implements _$CheckSessionCopyWith<$Res> {
  __$CheckSessionCopyWithImpl(
      _CheckSession _value, $Res Function(_CheckSession) _then)
      : super(_value, (v) => _then(v as _CheckSession));

  @override
  _CheckSession get _value => super._value as _CheckSession;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_CheckSession(
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

class _$_CheckSession extends _CheckSession {
  const _$_CheckSession({required this.id, required this.name}) : super._();

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'CheckSession(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckSession &&
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
  _$CheckSessionCopyWith<_CheckSession> get copyWith =>
      __$CheckSessionCopyWithImpl<_CheckSession>(this, _$identity);
}

abstract class _CheckSession extends CheckSession {
  const factory _CheckSession({required String id, required String name}) =
      _$_CheckSession;
  const _CheckSession._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CheckSessionCopyWith<_CheckSession> get copyWith =>
      throw _privateConstructorUsedError;
}
