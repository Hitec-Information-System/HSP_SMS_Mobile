// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'check_info_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CheckInfoStateTearOff {
  const _$CheckInfoStateTearOff();

  _CheckInfoStateInitial initial() {
    return const _CheckInfoStateInitial();
  }

  _CheckInfoStateLoading loading() {
    return const _CheckInfoStateLoading();
  }

  _CheckInfoStateLoaded loaded(CheckInfo info) {
    return _CheckInfoStateLoaded(
      info,
    );
  }

  _CheckInfoStateFailure failure(CheckInfoFailure failure) {
    return _CheckInfoStateFailure(
      failure,
    );
  }
}

/// @nodoc
const $CheckInfoState = _$CheckInfoStateTearOff();

/// @nodoc
mixin _$CheckInfoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CheckInfo info) loaded,
    required TResult Function(CheckInfoFailure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CheckInfo info)? loaded,
    TResult Function(CheckInfoFailure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckInfoStateInitial value) initial,
    required TResult Function(_CheckInfoStateLoading value) loading,
    required TResult Function(_CheckInfoStateLoaded value) loaded,
    required TResult Function(_CheckInfoStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckInfoStateInitial value)? initial,
    TResult Function(_CheckInfoStateLoading value)? loading,
    TResult Function(_CheckInfoStateLoaded value)? loaded,
    TResult Function(_CheckInfoStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckInfoStateCopyWith<$Res> {
  factory $CheckInfoStateCopyWith(
          CheckInfoState value, $Res Function(CheckInfoState) then) =
      _$CheckInfoStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CheckInfoStateCopyWithImpl<$Res>
    implements $CheckInfoStateCopyWith<$Res> {
  _$CheckInfoStateCopyWithImpl(this._value, this._then);

  final CheckInfoState _value;
  // ignore: unused_field
  final $Res Function(CheckInfoState) _then;
}

/// @nodoc
abstract class _$CheckInfoStateInitialCopyWith<$Res> {
  factory _$CheckInfoStateInitialCopyWith(_CheckInfoStateInitial value,
          $Res Function(_CheckInfoStateInitial) then) =
      __$CheckInfoStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$CheckInfoStateInitialCopyWithImpl<$Res>
    extends _$CheckInfoStateCopyWithImpl<$Res>
    implements _$CheckInfoStateInitialCopyWith<$Res> {
  __$CheckInfoStateInitialCopyWithImpl(_CheckInfoStateInitial _value,
      $Res Function(_CheckInfoStateInitial) _then)
      : super(_value, (v) => _then(v as _CheckInfoStateInitial));

  @override
  _CheckInfoStateInitial get _value => super._value as _CheckInfoStateInitial;
}

/// @nodoc

class _$_CheckInfoStateInitial extends _CheckInfoStateInitial {
  const _$_CheckInfoStateInitial() : super._();

  @override
  String toString() {
    return 'CheckInfoState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CheckInfoStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CheckInfo info) loaded,
    required TResult Function(CheckInfoFailure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CheckInfo info)? loaded,
    TResult Function(CheckInfoFailure failure)? failure,
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
    required TResult Function(_CheckInfoStateInitial value) initial,
    required TResult Function(_CheckInfoStateLoading value) loading,
    required TResult Function(_CheckInfoStateLoaded value) loaded,
    required TResult Function(_CheckInfoStateFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckInfoStateInitial value)? initial,
    TResult Function(_CheckInfoStateLoading value)? loading,
    TResult Function(_CheckInfoStateLoaded value)? loaded,
    TResult Function(_CheckInfoStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CheckInfoStateInitial extends CheckInfoState {
  const factory _CheckInfoStateInitial() = _$_CheckInfoStateInitial;
  const _CheckInfoStateInitial._() : super._();
}

/// @nodoc
abstract class _$CheckInfoStateLoadingCopyWith<$Res> {
  factory _$CheckInfoStateLoadingCopyWith(_CheckInfoStateLoading value,
          $Res Function(_CheckInfoStateLoading) then) =
      __$CheckInfoStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$CheckInfoStateLoadingCopyWithImpl<$Res>
    extends _$CheckInfoStateCopyWithImpl<$Res>
    implements _$CheckInfoStateLoadingCopyWith<$Res> {
  __$CheckInfoStateLoadingCopyWithImpl(_CheckInfoStateLoading _value,
      $Res Function(_CheckInfoStateLoading) _then)
      : super(_value, (v) => _then(v as _CheckInfoStateLoading));

  @override
  _CheckInfoStateLoading get _value => super._value as _CheckInfoStateLoading;
}

/// @nodoc

class _$_CheckInfoStateLoading extends _CheckInfoStateLoading {
  const _$_CheckInfoStateLoading() : super._();

  @override
  String toString() {
    return 'CheckInfoState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CheckInfoStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CheckInfo info) loaded,
    required TResult Function(CheckInfoFailure failure) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CheckInfo info)? loaded,
    TResult Function(CheckInfoFailure failure)? failure,
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
    required TResult Function(_CheckInfoStateInitial value) initial,
    required TResult Function(_CheckInfoStateLoading value) loading,
    required TResult Function(_CheckInfoStateLoaded value) loaded,
    required TResult Function(_CheckInfoStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckInfoStateInitial value)? initial,
    TResult Function(_CheckInfoStateLoading value)? loading,
    TResult Function(_CheckInfoStateLoaded value)? loaded,
    TResult Function(_CheckInfoStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CheckInfoStateLoading extends CheckInfoState {
  const factory _CheckInfoStateLoading() = _$_CheckInfoStateLoading;
  const _CheckInfoStateLoading._() : super._();
}

/// @nodoc
abstract class _$CheckInfoStateLoadedCopyWith<$Res> {
  factory _$CheckInfoStateLoadedCopyWith(_CheckInfoStateLoaded value,
          $Res Function(_CheckInfoStateLoaded) then) =
      __$CheckInfoStateLoadedCopyWithImpl<$Res>;
  $Res call({CheckInfo info});

  $CheckInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$CheckInfoStateLoadedCopyWithImpl<$Res>
    extends _$CheckInfoStateCopyWithImpl<$Res>
    implements _$CheckInfoStateLoadedCopyWith<$Res> {
  __$CheckInfoStateLoadedCopyWithImpl(
      _CheckInfoStateLoaded _value, $Res Function(_CheckInfoStateLoaded) _then)
      : super(_value, (v) => _then(v as _CheckInfoStateLoaded));

  @override
  _CheckInfoStateLoaded get _value => super._value as _CheckInfoStateLoaded;

  @override
  $Res call({
    Object? info = freezed,
  }) {
    return _then(_CheckInfoStateLoaded(
      info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as CheckInfo,
    ));
  }

  @override
  $CheckInfoCopyWith<$Res> get info {
    return $CheckInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc

class _$_CheckInfoStateLoaded extends _CheckInfoStateLoaded {
  const _$_CheckInfoStateLoaded(this.info) : super._();

  @override
  final CheckInfo info;

  @override
  String toString() {
    return 'CheckInfoState.loaded(info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckInfoStateLoaded &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(info);

  @JsonKey(ignore: true)
  @override
  _$CheckInfoStateLoadedCopyWith<_CheckInfoStateLoaded> get copyWith =>
      __$CheckInfoStateLoadedCopyWithImpl<_CheckInfoStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CheckInfo info) loaded,
    required TResult Function(CheckInfoFailure failure) failure,
  }) {
    return loaded(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CheckInfo info)? loaded,
    TResult Function(CheckInfoFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckInfoStateInitial value) initial,
    required TResult Function(_CheckInfoStateLoading value) loading,
    required TResult Function(_CheckInfoStateLoaded value) loaded,
    required TResult Function(_CheckInfoStateFailure value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckInfoStateInitial value)? initial,
    TResult Function(_CheckInfoStateLoading value)? loading,
    TResult Function(_CheckInfoStateLoaded value)? loaded,
    TResult Function(_CheckInfoStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _CheckInfoStateLoaded extends CheckInfoState {
  const factory _CheckInfoStateLoaded(CheckInfo info) = _$_CheckInfoStateLoaded;
  const _CheckInfoStateLoaded._() : super._();

  CheckInfo get info => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CheckInfoStateLoadedCopyWith<_CheckInfoStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CheckInfoStateFailureCopyWith<$Res> {
  factory _$CheckInfoStateFailureCopyWith(_CheckInfoStateFailure value,
          $Res Function(_CheckInfoStateFailure) then) =
      __$CheckInfoStateFailureCopyWithImpl<$Res>;
  $Res call({CheckInfoFailure failure});

  $CheckInfoFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$CheckInfoStateFailureCopyWithImpl<$Res>
    extends _$CheckInfoStateCopyWithImpl<$Res>
    implements _$CheckInfoStateFailureCopyWith<$Res> {
  __$CheckInfoStateFailureCopyWithImpl(_CheckInfoStateFailure _value,
      $Res Function(_CheckInfoStateFailure) _then)
      : super(_value, (v) => _then(v as _CheckInfoStateFailure));

  @override
  _CheckInfoStateFailure get _value => super._value as _CheckInfoStateFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_CheckInfoStateFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as CheckInfoFailure,
    ));
  }

  @override
  $CheckInfoFailureCopyWith<$Res> get failure {
    return $CheckInfoFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_CheckInfoStateFailure extends _CheckInfoStateFailure {
  const _$_CheckInfoStateFailure(this.failure) : super._();

  @override
  final CheckInfoFailure failure;

  @override
  String toString() {
    return 'CheckInfoState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckInfoStateFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$CheckInfoStateFailureCopyWith<_CheckInfoStateFailure> get copyWith =>
      __$CheckInfoStateFailureCopyWithImpl<_CheckInfoStateFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CheckInfo info) loaded,
    required TResult Function(CheckInfoFailure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CheckInfo info)? loaded,
    TResult Function(CheckInfoFailure failure)? failure,
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
    required TResult Function(_CheckInfoStateInitial value) initial,
    required TResult Function(_CheckInfoStateLoading value) loading,
    required TResult Function(_CheckInfoStateLoaded value) loaded,
    required TResult Function(_CheckInfoStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckInfoStateInitial value)? initial,
    TResult Function(_CheckInfoStateLoading value)? loading,
    TResult Function(_CheckInfoStateLoaded value)? loaded,
    TResult Function(_CheckInfoStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _CheckInfoStateFailure extends CheckInfoState {
  const factory _CheckInfoStateFailure(CheckInfoFailure failure) =
      _$_CheckInfoStateFailure;
  const _CheckInfoStateFailure._() : super._();

  CheckInfoFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CheckInfoStateFailureCopyWith<_CheckInfoStateFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
