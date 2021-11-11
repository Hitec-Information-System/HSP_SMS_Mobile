// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'check_monitor_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CheckMonitorFailureTearOff {
  const _$CheckMonitorFailureTearOff();

  _Api api([int? statusCode, String? message]) {
    return _Api(
      statusCode,
      message,
    );
  }

  _Internal internal({required String message}) {
    return _Internal(
      message: message,
    );
  }

  _NoConnection noConnection() {
    return const _NoConnection();
  }
}

/// @nodoc
const $CheckMonitorFailure = _$CheckMonitorFailureTearOff();

/// @nodoc
mixin _$CheckMonitorFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? statusCode, String? message) api,
    required TResult Function(String message) internal,
    required TResult Function() noConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? statusCode, String? message)? api,
    TResult Function(String message)? internal,
    TResult Function()? noConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Api value) api,
    required TResult Function(_Internal value) internal,
    required TResult Function(_NoConnection value) noConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Api value)? api,
    TResult Function(_Internal value)? internal,
    TResult Function(_NoConnection value)? noConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckMonitorFailureCopyWith<$Res> {
  factory $CheckMonitorFailureCopyWith(
          CheckMonitorFailure value, $Res Function(CheckMonitorFailure) then) =
      _$CheckMonitorFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$CheckMonitorFailureCopyWithImpl<$Res>
    implements $CheckMonitorFailureCopyWith<$Res> {
  _$CheckMonitorFailureCopyWithImpl(this._value, this._then);

  final CheckMonitorFailure _value;
  // ignore: unused_field
  final $Res Function(CheckMonitorFailure) _then;
}

/// @nodoc
abstract class _$ApiCopyWith<$Res> {
  factory _$ApiCopyWith(_Api value, $Res Function(_Api) then) =
      __$ApiCopyWithImpl<$Res>;
  $Res call({int? statusCode, String? message});
}

/// @nodoc
class __$ApiCopyWithImpl<$Res> extends _$CheckMonitorFailureCopyWithImpl<$Res>
    implements _$ApiCopyWith<$Res> {
  __$ApiCopyWithImpl(_Api _value, $Res Function(_Api) _then)
      : super(_value, (v) => _then(v as _Api));

  @override
  _Api get _value => super._value as _Api;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_Api(
      statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Api extends _Api {
  const _$_Api([this.statusCode, this.message]) : super._();

  @override
  final int? statusCode;
  @override
  final String? message;

  @override
  String toString() {
    return 'CheckMonitorFailure.api(statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Api &&
            (identical(other.statusCode, statusCode) ||
                const DeepCollectionEquality()
                    .equals(other.statusCode, statusCode)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(statusCode) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$ApiCopyWith<_Api> get copyWith =>
      __$ApiCopyWithImpl<_Api>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? statusCode, String? message) api,
    required TResult Function(String message) internal,
    required TResult Function() noConnection,
  }) {
    return api(statusCode, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? statusCode, String? message)? api,
    TResult Function(String message)? internal,
    TResult Function()? noConnection,
    required TResult orElse(),
  }) {
    if (api != null) {
      return api(statusCode, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Api value) api,
    required TResult Function(_Internal value) internal,
    required TResult Function(_NoConnection value) noConnection,
  }) {
    return api(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Api value)? api,
    TResult Function(_Internal value)? internal,
    TResult Function(_NoConnection value)? noConnection,
    required TResult orElse(),
  }) {
    if (api != null) {
      return api(this);
    }
    return orElse();
  }
}

abstract class _Api extends CheckMonitorFailure {
  const factory _Api([int? statusCode, String? message]) = _$_Api;
  const _Api._() : super._();

  int? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ApiCopyWith<_Api> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InternalCopyWith<$Res> {
  factory _$InternalCopyWith(_Internal value, $Res Function(_Internal) then) =
      __$InternalCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$InternalCopyWithImpl<$Res>
    extends _$CheckMonitorFailureCopyWithImpl<$Res>
    implements _$InternalCopyWith<$Res> {
  __$InternalCopyWithImpl(_Internal _value, $Res Function(_Internal) _then)
      : super(_value, (v) => _then(v as _Internal));

  @override
  _Internal get _value => super._value as _Internal;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_Internal(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Internal extends _Internal {
  const _$_Internal({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'CheckMonitorFailure.internal(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Internal &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$InternalCopyWith<_Internal> get copyWith =>
      __$InternalCopyWithImpl<_Internal>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? statusCode, String? message) api,
    required TResult Function(String message) internal,
    required TResult Function() noConnection,
  }) {
    return internal(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? statusCode, String? message)? api,
    TResult Function(String message)? internal,
    TResult Function()? noConnection,
    required TResult orElse(),
  }) {
    if (internal != null) {
      return internal(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Api value) api,
    required TResult Function(_Internal value) internal,
    required TResult Function(_NoConnection value) noConnection,
  }) {
    return internal(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Api value)? api,
    TResult Function(_Internal value)? internal,
    TResult Function(_NoConnection value)? noConnection,
    required TResult orElse(),
  }) {
    if (internal != null) {
      return internal(this);
    }
    return orElse();
  }
}

abstract class _Internal extends CheckMonitorFailure {
  const factory _Internal({required String message}) = _$_Internal;
  const _Internal._() : super._();

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InternalCopyWith<_Internal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NoConnectionCopyWith<$Res> {
  factory _$NoConnectionCopyWith(
          _NoConnection value, $Res Function(_NoConnection) then) =
      __$NoConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoConnectionCopyWithImpl<$Res>
    extends _$CheckMonitorFailureCopyWithImpl<$Res>
    implements _$NoConnectionCopyWith<$Res> {
  __$NoConnectionCopyWithImpl(
      _NoConnection _value, $Res Function(_NoConnection) _then)
      : super(_value, (v) => _then(v as _NoConnection));

  @override
  _NoConnection get _value => super._value as _NoConnection;
}

/// @nodoc

class _$_NoConnection extends _NoConnection {
  const _$_NoConnection() : super._();

  @override
  String toString() {
    return 'CheckMonitorFailure.noConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NoConnection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? statusCode, String? message) api,
    required TResult Function(String message) internal,
    required TResult Function() noConnection,
  }) {
    return noConnection();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? statusCode, String? message)? api,
    TResult Function(String message)? internal,
    TResult Function()? noConnection,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Api value) api,
    required TResult Function(_Internal value) internal,
    required TResult Function(_NoConnection value) noConnection,
  }) {
    return noConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Api value)? api,
    TResult Function(_Internal value)? internal,
    TResult Function(_NoConnection value)? noConnection,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(this);
    }
    return orElse();
  }
}

abstract class _NoConnection extends CheckMonitorFailure {
  const factory _NoConnection() = _$_NoConnection;
  const _NoConnection._() : super._();
}
