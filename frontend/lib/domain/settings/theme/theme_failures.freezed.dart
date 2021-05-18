// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'theme_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ThemeFailureTearOff {
  const _$ThemeFailureTearOff();

  SaveError saveError() {
    return const SaveError();
  }

  NotExist notExist() {
    return const NotExist();
  }
}

/// @nodoc
const $ThemeFailure = _$ThemeFailureTearOff();

/// @nodoc
mixin _$ThemeFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() saveError,
    required TResult Function() notExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? saveError,
    TResult Function()? notExist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveError value) saveError,
    required TResult Function(NotExist value) notExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveError value)? saveError,
    TResult Function(NotExist value)? notExist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeFailureCopyWith<$Res> {
  factory $ThemeFailureCopyWith(
          ThemeFailure value, $Res Function(ThemeFailure) then) =
      _$ThemeFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$ThemeFailureCopyWithImpl<$Res> implements $ThemeFailureCopyWith<$Res> {
  _$ThemeFailureCopyWithImpl(this._value, this._then);

  final ThemeFailure _value;
  // ignore: unused_field
  final $Res Function(ThemeFailure) _then;
}

/// @nodoc
abstract class $SaveErrorCopyWith<$Res> {
  factory $SaveErrorCopyWith(SaveError value, $Res Function(SaveError) then) =
      _$SaveErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$SaveErrorCopyWithImpl<$Res> extends _$ThemeFailureCopyWithImpl<$Res>
    implements $SaveErrorCopyWith<$Res> {
  _$SaveErrorCopyWithImpl(SaveError _value, $Res Function(SaveError) _then)
      : super(_value, (v) => _then(v as SaveError));

  @override
  SaveError get _value => super._value as SaveError;
}

/// @nodoc

class _$SaveError implements SaveError {
  const _$SaveError();

  @override
  String toString() {
    return 'ThemeFailure.saveError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SaveError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() saveError,
    required TResult Function() notExist,
  }) {
    return saveError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? saveError,
    TResult Function()? notExist,
    required TResult orElse(),
  }) {
    if (saveError != null) {
      return saveError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveError value) saveError,
    required TResult Function(NotExist value) notExist,
  }) {
    return saveError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveError value)? saveError,
    TResult Function(NotExist value)? notExist,
    required TResult orElse(),
  }) {
    if (saveError != null) {
      return saveError(this);
    }
    return orElse();
  }
}

abstract class SaveError implements ThemeFailure {
  const factory SaveError() = _$SaveError;
}

/// @nodoc
abstract class $NotExistCopyWith<$Res> {
  factory $NotExistCopyWith(NotExist value, $Res Function(NotExist) then) =
      _$NotExistCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotExistCopyWithImpl<$Res> extends _$ThemeFailureCopyWithImpl<$Res>
    implements $NotExistCopyWith<$Res> {
  _$NotExistCopyWithImpl(NotExist _value, $Res Function(NotExist) _then)
      : super(_value, (v) => _then(v as NotExist));

  @override
  NotExist get _value => super._value as NotExist;
}

/// @nodoc

class _$NotExist implements NotExist {
  const _$NotExist();

  @override
  String toString() {
    return 'ThemeFailure.notExist()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NotExist);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() saveError,
    required TResult Function() notExist,
  }) {
    return notExist();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? saveError,
    TResult Function()? notExist,
    required TResult orElse(),
  }) {
    if (notExist != null) {
      return notExist();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveError value) saveError,
    required TResult Function(NotExist value) notExist,
  }) {
    return notExist(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveError value)? saveError,
    TResult Function(NotExist value)? notExist,
    required TResult orElse(),
  }) {
    if (notExist != null) {
      return notExist(this);
    }
    return orElse();
  }
}

abstract class NotExist implements ThemeFailure {
  const factory NotExist() = _$NotExist;
}
