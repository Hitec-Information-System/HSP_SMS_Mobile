// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

  _Storage storage() {
    return const _Storage();
  }

  _Server server([String? message]) {
    return _Server(
      message,
    );
  }

  _InvalidIdPwd invalidIdPwd([String? message]) {
    return _InvalidIdPwd(
      message,
    );
  }
}

/// @nodoc
const $AuthFailure = _$AuthFailureTearOff();

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() storage,
    required TResult Function(String? message) server,
    required TResult Function(String? message) invalidIdPwd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? storage,
    TResult Function(String? message)? server,
    TResult Function(String? message)? invalidIdPwd,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Storage value) storage,
    required TResult Function(_Server value) server,
    required TResult Function(_InvalidIdPwd value) invalidIdPwd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Storage value)? storage,
    TResult Function(_Server value)? server,
    TResult Function(_InvalidIdPwd value)? invalidIdPwd,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

/// @nodoc
abstract class _$StorageCopyWith<$Res> {
  factory _$StorageCopyWith(_Storage value, $Res Function(_Storage) then) =
      __$StorageCopyWithImpl<$Res>;
}

/// @nodoc
class __$StorageCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$StorageCopyWith<$Res> {
  __$StorageCopyWithImpl(_Storage _value, $Res Function(_Storage) _then)
      : super(_value, (v) => _then(v as _Storage));

  @override
  _Storage get _value => super._value as _Storage;
}

/// @nodoc

class _$_Storage extends _Storage {
  const _$_Storage() : super._();

  @override
  String toString() {
    return 'AuthFailure.storage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Storage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() storage,
    required TResult Function(String? message) server,
    required TResult Function(String? message) invalidIdPwd,
  }) {
    return storage();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? storage,
    TResult Function(String? message)? server,
    TResult Function(String? message)? invalidIdPwd,
    required TResult orElse(),
  }) {
    if (storage != null) {
      return storage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Storage value) storage,
    required TResult Function(_Server value) server,
    required TResult Function(_InvalidIdPwd value) invalidIdPwd,
  }) {
    return storage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Storage value)? storage,
    TResult Function(_Server value)? server,
    TResult Function(_InvalidIdPwd value)? invalidIdPwd,
    required TResult orElse(),
  }) {
    if (storage != null) {
      return storage(this);
    }
    return orElse();
  }
}

abstract class _Storage extends AuthFailure {
  const factory _Storage() = _$_Storage;
  const _Storage._() : super._();
}

/// @nodoc
abstract class _$ServerCopyWith<$Res> {
  factory _$ServerCopyWith(_Server value, $Res Function(_Server) then) =
      __$ServerCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$ServerCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$ServerCopyWith<$Res> {
  __$ServerCopyWithImpl(_Server _value, $Res Function(_Server) _then)
      : super(_value, (v) => _then(v as _Server));

  @override
  _Server get _value => super._value as _Server;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_Server(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Server extends _Server {
  const _$_Server([this.message]) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'AuthFailure.server(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Server &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$ServerCopyWith<_Server> get copyWith =>
      __$ServerCopyWithImpl<_Server>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() storage,
    required TResult Function(String? message) server,
    required TResult Function(String? message) invalidIdPwd,
  }) {
    return server(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? storage,
    TResult Function(String? message)? server,
    TResult Function(String? message)? invalidIdPwd,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Storage value) storage,
    required TResult Function(_Server value) server,
    required TResult Function(_InvalidIdPwd value) invalidIdPwd,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Storage value)? storage,
    TResult Function(_Server value)? server,
    TResult Function(_InvalidIdPwd value)? invalidIdPwd,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class _Server extends AuthFailure {
  const factory _Server([String? message]) = _$_Server;
  const _Server._() : super._();

  String? get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ServerCopyWith<_Server> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InvalidIdPwdCopyWith<$Res> {
  factory _$InvalidIdPwdCopyWith(
          _InvalidIdPwd value, $Res Function(_InvalidIdPwd) then) =
      __$InvalidIdPwdCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$InvalidIdPwdCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$InvalidIdPwdCopyWith<$Res> {
  __$InvalidIdPwdCopyWithImpl(
      _InvalidIdPwd _value, $Res Function(_InvalidIdPwd) _then)
      : super(_value, (v) => _then(v as _InvalidIdPwd));

  @override
  _InvalidIdPwd get _value => super._value as _InvalidIdPwd;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_InvalidIdPwd(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_InvalidIdPwd extends _InvalidIdPwd {
  const _$_InvalidIdPwd([this.message]) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'AuthFailure.invalidIdPwd(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidIdPwd &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$InvalidIdPwdCopyWith<_InvalidIdPwd> get copyWith =>
      __$InvalidIdPwdCopyWithImpl<_InvalidIdPwd>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() storage,
    required TResult Function(String? message) server,
    required TResult Function(String? message) invalidIdPwd,
  }) {
    return invalidIdPwd(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? storage,
    TResult Function(String? message)? server,
    TResult Function(String? message)? invalidIdPwd,
    required TResult orElse(),
  }) {
    if (invalidIdPwd != null) {
      return invalidIdPwd(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Storage value) storage,
    required TResult Function(_Server value) server,
    required TResult Function(_InvalidIdPwd value) invalidIdPwd,
  }) {
    return invalidIdPwd(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Storage value)? storage,
    TResult Function(_Server value)? server,
    TResult Function(_InvalidIdPwd value)? invalidIdPwd,
    required TResult orElse(),
  }) {
    if (invalidIdPwd != null) {
      return invalidIdPwd(this);
    }
    return orElse();
  }
}

abstract class _InvalidIdPwd extends AuthFailure {
  const factory _InvalidIdPwd([String? message]) = _$_InvalidIdPwd;
  const _InvalidIdPwd._() : super._();

  String? get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InvalidIdPwdCopyWith<_InvalidIdPwd> get copyWith =>
      throw _privateConstructorUsedError;
}
