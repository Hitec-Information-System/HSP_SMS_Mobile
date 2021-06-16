// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'nfc_read_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NfcReadEventTearOff {
  const _$NfcReadEventTearOff();

  _Started started() {
    return const _Started();
  }
}

/// @nodoc
const $NfcReadEvent = _$NfcReadEventTearOff();

/// @nodoc
mixin _$NfcReadEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NfcReadEventCopyWith<$Res> {
  factory $NfcReadEventCopyWith(
          NfcReadEvent value, $Res Function(NfcReadEvent) then) =
      _$NfcReadEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NfcReadEventCopyWithImpl<$Res> implements $NfcReadEventCopyWith<$Res> {
  _$NfcReadEventCopyWithImpl(this._value, this._then);

  final NfcReadEvent _value;
  // ignore: unused_field
  final $Res Function(NfcReadEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$NfcReadEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'NfcReadEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements NfcReadEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
class _$NfcReadStateTearOff {
  const _$NfcReadStateTearOff();

  _NfcReadState call({required NfcTagId tagId, required bool isSubmitting}) {
    return _NfcReadState(
      tagId: tagId,
      isSubmitting: isSubmitting,
    );
  }

  _Initial initial() {
    return const _Initial();
  }
}

/// @nodoc
const $NfcReadState = _$NfcReadStateTearOff();

/// @nodoc
mixin _$NfcReadState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(NfcTagId tagId, bool isSubmitting) $default, {
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(NfcTagId tagId, bool isSubmitting)? $default, {
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NfcReadState value) $default, {
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NfcReadState value)? $default, {
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NfcReadStateCopyWith<$Res> {
  factory $NfcReadStateCopyWith(
          NfcReadState value, $Res Function(NfcReadState) then) =
      _$NfcReadStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NfcReadStateCopyWithImpl<$Res> implements $NfcReadStateCopyWith<$Res> {
  _$NfcReadStateCopyWithImpl(this._value, this._then);

  final NfcReadState _value;
  // ignore: unused_field
  final $Res Function(NfcReadState) _then;
}

/// @nodoc
abstract class _$NfcReadStateCopyWith<$Res> {
  factory _$NfcReadStateCopyWith(
          _NfcReadState value, $Res Function(_NfcReadState) then) =
      __$NfcReadStateCopyWithImpl<$Res>;
  $Res call({NfcTagId tagId, bool isSubmitting});
}

/// @nodoc
class __$NfcReadStateCopyWithImpl<$Res> extends _$NfcReadStateCopyWithImpl<$Res>
    implements _$NfcReadStateCopyWith<$Res> {
  __$NfcReadStateCopyWithImpl(
      _NfcReadState _value, $Res Function(_NfcReadState) _then)
      : super(_value, (v) => _then(v as _NfcReadState));

  @override
  _NfcReadState get _value => super._value as _NfcReadState;

  @override
  $Res call({
    Object? tagId = freezed,
    Object? isSubmitting = freezed,
  }) {
    return _then(_NfcReadState(
      tagId: tagId == freezed
          ? _value.tagId
          : tagId // ignore: cast_nullable_to_non_nullable
              as NfcTagId,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_NfcReadState implements _NfcReadState {
  const _$_NfcReadState({required this.tagId, required this.isSubmitting});

  @override
  final NfcTagId tagId;
  @override
  final bool isSubmitting;

  @override
  String toString() {
    return 'NfcReadState(tagId: $tagId, isSubmitting: $isSubmitting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NfcReadState &&
            (identical(other.tagId, tagId) ||
                const DeepCollectionEquality().equals(other.tagId, tagId)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(tagId) ^
      const DeepCollectionEquality().hash(isSubmitting);

  @JsonKey(ignore: true)
  @override
  _$NfcReadStateCopyWith<_NfcReadState> get copyWith =>
      __$NfcReadStateCopyWithImpl<_NfcReadState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(NfcTagId tagId, bool isSubmitting) $default, {
    required TResult Function() initial,
  }) {
    return $default(tagId, isSubmitting);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(NfcTagId tagId, bool isSubmitting)? $default, {
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(tagId, isSubmitting);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NfcReadState value) $default, {
    required TResult Function(_Initial value) initial,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NfcReadState value)? $default, {
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _NfcReadState implements NfcReadState {
  const factory _NfcReadState(
      {required NfcTagId tagId, required bool isSubmitting}) = _$_NfcReadState;

  NfcTagId get tagId => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$NfcReadStateCopyWith<_NfcReadState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$NfcReadStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'NfcReadState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(NfcTagId tagId, bool isSubmitting) $default, {
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(NfcTagId tagId, bool isSubmitting)? $default, {
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NfcReadState value) $default, {
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NfcReadState value)? $default, {
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NfcReadState {
  const factory _Initial() = _$_Initial;
}
