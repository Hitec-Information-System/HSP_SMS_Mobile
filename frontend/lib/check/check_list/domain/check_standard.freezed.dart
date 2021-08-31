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

/// @nodoc
class _$CheckProfileTearOff {
  const _$CheckProfileTearOff();

  _CheckProfile call(
      {required String spotId,
      required String spotNm,
      required String userId,
      required String userNm,
      required String time}) {
    return _CheckProfile(
      spotId: spotId,
      spotNm: spotNm,
      userId: userId,
      userNm: userNm,
      time: time,
    );
  }
}

/// @nodoc
const $CheckProfile = _$CheckProfileTearOff();

/// @nodoc
mixin _$CheckProfile {
  String get spotId => throw _privateConstructorUsedError;
  String get spotNm => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get userNm => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CheckProfileCopyWith<CheckProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckProfileCopyWith<$Res> {
  factory $CheckProfileCopyWith(
          CheckProfile value, $Res Function(CheckProfile) then) =
      _$CheckProfileCopyWithImpl<$Res>;
  $Res call(
      {String spotId,
      String spotNm,
      String userId,
      String userNm,
      String time});
}

/// @nodoc
class _$CheckProfileCopyWithImpl<$Res> implements $CheckProfileCopyWith<$Res> {
  _$CheckProfileCopyWithImpl(this._value, this._then);

  final CheckProfile _value;
  // ignore: unused_field
  final $Res Function(CheckProfile) _then;

  @override
  $Res call({
    Object? spotId = freezed,
    Object? spotNm = freezed,
    Object? userId = freezed,
    Object? userNm = freezed,
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      spotId: spotId == freezed
          ? _value.spotId
          : spotId // ignore: cast_nullable_to_non_nullable
              as String,
      spotNm: spotNm == freezed
          ? _value.spotNm
          : spotNm // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userNm: userNm == freezed
          ? _value.userNm
          : userNm // ignore: cast_nullable_to_non_nullable
              as String,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CheckProfileCopyWith<$Res>
    implements $CheckProfileCopyWith<$Res> {
  factory _$CheckProfileCopyWith(
          _CheckProfile value, $Res Function(_CheckProfile) then) =
      __$CheckProfileCopyWithImpl<$Res>;
  @override
  $Res call(
      {String spotId,
      String spotNm,
      String userId,
      String userNm,
      String time});
}

/// @nodoc
class __$CheckProfileCopyWithImpl<$Res> extends _$CheckProfileCopyWithImpl<$Res>
    implements _$CheckProfileCopyWith<$Res> {
  __$CheckProfileCopyWithImpl(
      _CheckProfile _value, $Res Function(_CheckProfile) _then)
      : super(_value, (v) => _then(v as _CheckProfile));

  @override
  _CheckProfile get _value => super._value as _CheckProfile;

  @override
  $Res call({
    Object? spotId = freezed,
    Object? spotNm = freezed,
    Object? userId = freezed,
    Object? userNm = freezed,
    Object? time = freezed,
  }) {
    return _then(_CheckProfile(
      spotId: spotId == freezed
          ? _value.spotId
          : spotId // ignore: cast_nullable_to_non_nullable
              as String,
      spotNm: spotNm == freezed
          ? _value.spotNm
          : spotNm // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userNm: userNm == freezed
          ? _value.userNm
          : userNm // ignore: cast_nullable_to_non_nullable
              as String,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CheckProfile extends _CheckProfile {
  const _$_CheckProfile(
      {required this.spotId,
      required this.spotNm,
      required this.userId,
      required this.userNm,
      required this.time})
      : super._();

  @override
  final String spotId;
  @override
  final String spotNm;
  @override
  final String userId;
  @override
  final String userNm;
  @override
  final String time;

  @override
  String toString() {
    return 'CheckProfile(spotId: $spotId, spotNm: $spotNm, userId: $userId, userNm: $userNm, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckProfile &&
            (identical(other.spotId, spotId) ||
                const DeepCollectionEquality().equals(other.spotId, spotId)) &&
            (identical(other.spotNm, spotNm) ||
                const DeepCollectionEquality().equals(other.spotNm, spotNm)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.userNm, userNm) ||
                const DeepCollectionEquality().equals(other.userNm, userNm)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(spotId) ^
      const DeepCollectionEquality().hash(spotNm) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(userNm) ^
      const DeepCollectionEquality().hash(time);

  @JsonKey(ignore: true)
  @override
  _$CheckProfileCopyWith<_CheckProfile> get copyWith =>
      __$CheckProfileCopyWithImpl<_CheckProfile>(this, _$identity);
}

abstract class _CheckProfile extends CheckProfile {
  const factory _CheckProfile(
      {required String spotId,
      required String spotNm,
      required String userId,
      required String userNm,
      required String time}) = _$_CheckProfile;
  const _CheckProfile._() : super._();

  @override
  String get spotId => throw _privateConstructorUsedError;
  @override
  String get spotNm => throw _privateConstructorUsedError;
  @override
  String get userId => throw _privateConstructorUsedError;
  @override
  String get userNm => throw _privateConstructorUsedError;
  @override
  String get time => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CheckProfileCopyWith<_CheckProfile> get copyWith =>
      throw _privateConstructorUsedError;
}
