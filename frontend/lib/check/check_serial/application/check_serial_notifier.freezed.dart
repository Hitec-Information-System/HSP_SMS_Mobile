// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'check_serial_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CheckSerialStateTearOff {
  const _$CheckSerialStateTearOff();

  _CheckSerialStateInitial initial() {
    return const _CheckSerialStateInitial();
  }

  _CheckSerialStateLoading loading() {
    return const _CheckSerialStateLoading();
  }

  _CheckSerialStateLoaded loaded(CheckSerial serial) {
    return _CheckSerialStateLoaded(
      serial,
    );
  }

  _CheckSerialStateFailure failure(CheckSerialFailure failure) {
    return _CheckSerialStateFailure(
      failure,
    );
  }
}

/// @nodoc
const $CheckSerialState = _$CheckSerialStateTearOff();

/// @nodoc
mixin _$CheckSerialState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CheckSerial serial) loaded,
    required TResult Function(CheckSerialFailure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CheckSerial serial)? loaded,
    TResult Function(CheckSerialFailure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckSerialStateInitial value) initial,
    required TResult Function(_CheckSerialStateLoading value) loading,
    required TResult Function(_CheckSerialStateLoaded value) loaded,
    required TResult Function(_CheckSerialStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckSerialStateInitial value)? initial,
    TResult Function(_CheckSerialStateLoading value)? loading,
    TResult Function(_CheckSerialStateLoaded value)? loaded,
    TResult Function(_CheckSerialStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckSerialStateCopyWith<$Res> {
  factory $CheckSerialStateCopyWith(
          CheckSerialState value, $Res Function(CheckSerialState) then) =
      _$CheckSerialStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CheckSerialStateCopyWithImpl<$Res>
    implements $CheckSerialStateCopyWith<$Res> {
  _$CheckSerialStateCopyWithImpl(this._value, this._then);

  final CheckSerialState _value;
  // ignore: unused_field
  final $Res Function(CheckSerialState) _then;
}

/// @nodoc
abstract class _$CheckSerialStateInitialCopyWith<$Res> {
  factory _$CheckSerialStateInitialCopyWith(_CheckSerialStateInitial value,
          $Res Function(_CheckSerialStateInitial) then) =
      __$CheckSerialStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$CheckSerialStateInitialCopyWithImpl<$Res>
    extends _$CheckSerialStateCopyWithImpl<$Res>
    implements _$CheckSerialStateInitialCopyWith<$Res> {
  __$CheckSerialStateInitialCopyWithImpl(_CheckSerialStateInitial _value,
      $Res Function(_CheckSerialStateInitial) _then)
      : super(_value, (v) => _then(v as _CheckSerialStateInitial));

  @override
  _CheckSerialStateInitial get _value =>
      super._value as _CheckSerialStateInitial;
}

/// @nodoc

class _$_CheckSerialStateInitial extends _CheckSerialStateInitial {
  const _$_CheckSerialStateInitial() : super._();

  @override
  String toString() {
    return 'CheckSerialState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CheckSerialStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CheckSerial serial) loaded,
    required TResult Function(CheckSerialFailure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CheckSerial serial)? loaded,
    TResult Function(CheckSerialFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckSerialStateInitial value) initial,
    required TResult Function(_CheckSerialStateLoading value) loading,
    required TResult Function(_CheckSerialStateLoaded value) loaded,
    required TResult Function(_CheckSerialStateFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckSerialStateInitial value)? initial,
    TResult Function(_CheckSerialStateLoading value)? loading,
    TResult Function(_CheckSerialStateLoaded value)? loaded,
    TResult Function(_CheckSerialStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CheckSerialStateInitial extends CheckSerialState {
  const factory _CheckSerialStateInitial() = _$_CheckSerialStateInitial;
  const _CheckSerialStateInitial._() : super._();
}

/// @nodoc
abstract class _$CheckSerialStateLoadingCopyWith<$Res> {
  factory _$CheckSerialStateLoadingCopyWith(_CheckSerialStateLoading value,
          $Res Function(_CheckSerialStateLoading) then) =
      __$CheckSerialStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$CheckSerialStateLoadingCopyWithImpl<$Res>
    extends _$CheckSerialStateCopyWithImpl<$Res>
    implements _$CheckSerialStateLoadingCopyWith<$Res> {
  __$CheckSerialStateLoadingCopyWithImpl(_CheckSerialStateLoading _value,
      $Res Function(_CheckSerialStateLoading) _then)
      : super(_value, (v) => _then(v as _CheckSerialStateLoading));

  @override
  _CheckSerialStateLoading get _value =>
      super._value as _CheckSerialStateLoading;
}

/// @nodoc

class _$_CheckSerialStateLoading extends _CheckSerialStateLoading {
  const _$_CheckSerialStateLoading() : super._();

  @override
  String toString() {
    return 'CheckSerialState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CheckSerialStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CheckSerial serial) loaded,
    required TResult Function(CheckSerialFailure failure) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CheckSerial serial)? loaded,
    TResult Function(CheckSerialFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckSerialStateInitial value) initial,
    required TResult Function(_CheckSerialStateLoading value) loading,
    required TResult Function(_CheckSerialStateLoaded value) loaded,
    required TResult Function(_CheckSerialStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckSerialStateInitial value)? initial,
    TResult Function(_CheckSerialStateLoading value)? loading,
    TResult Function(_CheckSerialStateLoaded value)? loaded,
    TResult Function(_CheckSerialStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CheckSerialStateLoading extends CheckSerialState {
  const factory _CheckSerialStateLoading() = _$_CheckSerialStateLoading;
  const _CheckSerialStateLoading._() : super._();
}

/// @nodoc
abstract class _$CheckSerialStateLoadedCopyWith<$Res> {
  factory _$CheckSerialStateLoadedCopyWith(_CheckSerialStateLoaded value,
          $Res Function(_CheckSerialStateLoaded) then) =
      __$CheckSerialStateLoadedCopyWithImpl<$Res>;
  $Res call({CheckSerial serial});

  $CheckSerialCopyWith<$Res> get serial;
}

/// @nodoc
class __$CheckSerialStateLoadedCopyWithImpl<$Res>
    extends _$CheckSerialStateCopyWithImpl<$Res>
    implements _$CheckSerialStateLoadedCopyWith<$Res> {
  __$CheckSerialStateLoadedCopyWithImpl(_CheckSerialStateLoaded _value,
      $Res Function(_CheckSerialStateLoaded) _then)
      : super(_value, (v) => _then(v as _CheckSerialStateLoaded));

  @override
  _CheckSerialStateLoaded get _value => super._value as _CheckSerialStateLoaded;

  @override
  $Res call({
    Object? serial = freezed,
  }) {
    return _then(_CheckSerialStateLoaded(
      serial == freezed
          ? _value.serial
          : serial // ignore: cast_nullable_to_non_nullable
              as CheckSerial,
    ));
  }

  @override
  $CheckSerialCopyWith<$Res> get serial {
    return $CheckSerialCopyWith<$Res>(_value.serial, (value) {
      return _then(_value.copyWith(serial: value));
    });
  }
}

/// @nodoc

class _$_CheckSerialStateLoaded extends _CheckSerialStateLoaded {
  const _$_CheckSerialStateLoaded(this.serial) : super._();

  @override
  final CheckSerial serial;

  @override
  String toString() {
    return 'CheckSerialState.loaded(serial: $serial)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckSerialStateLoaded &&
            (identical(other.serial, serial) ||
                const DeepCollectionEquality().equals(other.serial, serial)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(serial);

  @JsonKey(ignore: true)
  @override
  _$CheckSerialStateLoadedCopyWith<_CheckSerialStateLoaded> get copyWith =>
      __$CheckSerialStateLoadedCopyWithImpl<_CheckSerialStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CheckSerial serial) loaded,
    required TResult Function(CheckSerialFailure failure) failure,
  }) {
    return loaded(serial);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CheckSerial serial)? loaded,
    TResult Function(CheckSerialFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(serial);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckSerialStateInitial value) initial,
    required TResult Function(_CheckSerialStateLoading value) loading,
    required TResult Function(_CheckSerialStateLoaded value) loaded,
    required TResult Function(_CheckSerialStateFailure value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckSerialStateInitial value)? initial,
    TResult Function(_CheckSerialStateLoading value)? loading,
    TResult Function(_CheckSerialStateLoaded value)? loaded,
    TResult Function(_CheckSerialStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _CheckSerialStateLoaded extends CheckSerialState {
  const factory _CheckSerialStateLoaded(CheckSerial serial) =
      _$_CheckSerialStateLoaded;
  const _CheckSerialStateLoaded._() : super._();

  CheckSerial get serial => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CheckSerialStateLoadedCopyWith<_CheckSerialStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CheckSerialStateFailureCopyWith<$Res> {
  factory _$CheckSerialStateFailureCopyWith(_CheckSerialStateFailure value,
          $Res Function(_CheckSerialStateFailure) then) =
      __$CheckSerialStateFailureCopyWithImpl<$Res>;
  $Res call({CheckSerialFailure failure});

  $CheckSerialFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$CheckSerialStateFailureCopyWithImpl<$Res>
    extends _$CheckSerialStateCopyWithImpl<$Res>
    implements _$CheckSerialStateFailureCopyWith<$Res> {
  __$CheckSerialStateFailureCopyWithImpl(_CheckSerialStateFailure _value,
      $Res Function(_CheckSerialStateFailure) _then)
      : super(_value, (v) => _then(v as _CheckSerialStateFailure));

  @override
  _CheckSerialStateFailure get _value =>
      super._value as _CheckSerialStateFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_CheckSerialStateFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as CheckSerialFailure,
    ));
  }

  @override
  $CheckSerialFailureCopyWith<$Res> get failure {
    return $CheckSerialFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_CheckSerialStateFailure extends _CheckSerialStateFailure {
  const _$_CheckSerialStateFailure(this.failure) : super._();

  @override
  final CheckSerialFailure failure;

  @override
  String toString() {
    return 'CheckSerialState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckSerialStateFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$CheckSerialStateFailureCopyWith<_CheckSerialStateFailure> get copyWith =>
      __$CheckSerialStateFailureCopyWithImpl<_CheckSerialStateFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CheckSerial serial) loaded,
    required TResult Function(CheckSerialFailure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CheckSerial serial)? loaded,
    TResult Function(CheckSerialFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckSerialStateInitial value) initial,
    required TResult Function(_CheckSerialStateLoading value) loading,
    required TResult Function(_CheckSerialStateLoaded value) loaded,
    required TResult Function(_CheckSerialStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckSerialStateInitial value)? initial,
    TResult Function(_CheckSerialStateLoading value)? loading,
    TResult Function(_CheckSerialStateLoaded value)? loaded,
    TResult Function(_CheckSerialStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _CheckSerialStateFailure extends CheckSerialState {
  const factory _CheckSerialStateFailure(CheckSerialFailure failure) =
      _$_CheckSerialStateFailure;
  const _CheckSerialStateFailure._() : super._();

  CheckSerialFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CheckSerialStateFailureCopyWith<_CheckSerialStateFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
