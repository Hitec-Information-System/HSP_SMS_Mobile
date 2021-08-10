// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'check_serial_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CheckSerialFailureTearOff {
  const _$CheckSerialFailureTearOff();

  _CheckSerialNotFound notFound() {
    return const _CheckSerialNotFound();
  }

  _CheckSerialServerError serverError([String? message]) {
    return _CheckSerialServerError(
      message,
    );
  }
}

/// @nodoc
const $CheckSerialFailure = _$CheckSerialFailureTearOff();

/// @nodoc
mixin _$CheckSerialFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notFound,
    required TResult Function(String? message) serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notFound,
    TResult Function(String? message)? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckSerialNotFound value) notFound,
    required TResult Function(_CheckSerialServerError value) serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckSerialNotFound value)? notFound,
    TResult Function(_CheckSerialServerError value)? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckSerialFailureCopyWith<$Res> {
  factory $CheckSerialFailureCopyWith(
          CheckSerialFailure value, $Res Function(CheckSerialFailure) then) =
      _$CheckSerialFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$CheckSerialFailureCopyWithImpl<$Res>
    implements $CheckSerialFailureCopyWith<$Res> {
  _$CheckSerialFailureCopyWithImpl(this._value, this._then);

  final CheckSerialFailure _value;
  // ignore: unused_field
  final $Res Function(CheckSerialFailure) _then;
}

/// @nodoc
abstract class _$CheckSerialNotFoundCopyWith<$Res> {
  factory _$CheckSerialNotFoundCopyWith(_CheckSerialNotFound value,
          $Res Function(_CheckSerialNotFound) then) =
      __$CheckSerialNotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$CheckSerialNotFoundCopyWithImpl<$Res>
    extends _$CheckSerialFailureCopyWithImpl<$Res>
    implements _$CheckSerialNotFoundCopyWith<$Res> {
  __$CheckSerialNotFoundCopyWithImpl(
      _CheckSerialNotFound _value, $Res Function(_CheckSerialNotFound) _then)
      : super(_value, (v) => _then(v as _CheckSerialNotFound));

  @override
  _CheckSerialNotFound get _value => super._value as _CheckSerialNotFound;
}

/// @nodoc

class _$_CheckSerialNotFound extends _CheckSerialNotFound {
  const _$_CheckSerialNotFound() : super._();

  @override
  String toString() {
    return 'CheckSerialFailure.notFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CheckSerialNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notFound,
    required TResult Function(String? message) serverError,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notFound,
    TResult Function(String? message)? serverError,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckSerialNotFound value) notFound,
    required TResult Function(_CheckSerialServerError value) serverError,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckSerialNotFound value)? notFound,
    TResult Function(_CheckSerialServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class _CheckSerialNotFound extends CheckSerialFailure {
  const factory _CheckSerialNotFound() = _$_CheckSerialNotFound;
  const _CheckSerialNotFound._() : super._();
}

/// @nodoc
abstract class _$CheckSerialServerErrorCopyWith<$Res> {
  factory _$CheckSerialServerErrorCopyWith(_CheckSerialServerError value,
          $Res Function(_CheckSerialServerError) then) =
      __$CheckSerialServerErrorCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$CheckSerialServerErrorCopyWithImpl<$Res>
    extends _$CheckSerialFailureCopyWithImpl<$Res>
    implements _$CheckSerialServerErrorCopyWith<$Res> {
  __$CheckSerialServerErrorCopyWithImpl(_CheckSerialServerError _value,
      $Res Function(_CheckSerialServerError) _then)
      : super(_value, (v) => _then(v as _CheckSerialServerError));

  @override
  _CheckSerialServerError get _value => super._value as _CheckSerialServerError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_CheckSerialServerError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_CheckSerialServerError extends _CheckSerialServerError {
  const _$_CheckSerialServerError([this.message]) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'CheckSerialFailure.serverError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckSerialServerError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$CheckSerialServerErrorCopyWith<_CheckSerialServerError> get copyWith =>
      __$CheckSerialServerErrorCopyWithImpl<_CheckSerialServerError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notFound,
    required TResult Function(String? message) serverError,
  }) {
    return serverError(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notFound,
    TResult Function(String? message)? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckSerialNotFound value) notFound,
    required TResult Function(_CheckSerialServerError value) serverError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckSerialNotFound value)? notFound,
    TResult Function(_CheckSerialServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _CheckSerialServerError extends CheckSerialFailure {
  const factory _CheckSerialServerError([String? message]) =
      _$_CheckSerialServerError;
  const _CheckSerialServerError._() : super._();

  String? get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CheckSerialServerErrorCopyWith<_CheckSerialServerError> get copyWith =>
      throw _privateConstructorUsedError;
}
