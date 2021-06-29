// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'nfc_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NfcFailureTearOff {
  const _$NfcFailureTearOff();

  _NotSupportedTag notSupportedTag([String? message]) {
    return _NotSupportedTag(
      message,
    );
  }

  _ReadError readError() {
    return const _ReadError();
  }
}

/// @nodoc
const $NfcFailure = _$NfcFailureTearOff();

/// @nodoc
mixin _$NfcFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) notSupportedTag,
    required TResult Function() readError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? notSupportedTag,
    TResult Function()? readError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotSupportedTag value) notSupportedTag,
    required TResult Function(_ReadError value) readError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotSupportedTag value)? notSupportedTag,
    TResult Function(_ReadError value)? readError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NfcFailureCopyWith<$Res> {
  factory $NfcFailureCopyWith(
          NfcFailure value, $Res Function(NfcFailure) then) =
      _$NfcFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$NfcFailureCopyWithImpl<$Res> implements $NfcFailureCopyWith<$Res> {
  _$NfcFailureCopyWithImpl(this._value, this._then);

  final NfcFailure _value;
  // ignore: unused_field
  final $Res Function(NfcFailure) _then;
}

/// @nodoc
abstract class _$NotSupportedTagCopyWith<$Res> {
  factory _$NotSupportedTagCopyWith(
          _NotSupportedTag value, $Res Function(_NotSupportedTag) then) =
      __$NotSupportedTagCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$NotSupportedTagCopyWithImpl<$Res>
    extends _$NfcFailureCopyWithImpl<$Res>
    implements _$NotSupportedTagCopyWith<$Res> {
  __$NotSupportedTagCopyWithImpl(
      _NotSupportedTag _value, $Res Function(_NotSupportedTag) _then)
      : super(_value, (v) => _then(v as _NotSupportedTag));

  @override
  _NotSupportedTag get _value => super._value as _NotSupportedTag;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_NotSupportedTag(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_NotSupportedTag extends _NotSupportedTag {
  const _$_NotSupportedTag([this.message]) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'NfcFailure.notSupportedTag(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NotSupportedTag &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$NotSupportedTagCopyWith<_NotSupportedTag> get copyWith =>
      __$NotSupportedTagCopyWithImpl<_NotSupportedTag>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) notSupportedTag,
    required TResult Function() readError,
  }) {
    return notSupportedTag(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? notSupportedTag,
    TResult Function()? readError,
    required TResult orElse(),
  }) {
    if (notSupportedTag != null) {
      return notSupportedTag(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotSupportedTag value) notSupportedTag,
    required TResult Function(_ReadError value) readError,
  }) {
    return notSupportedTag(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotSupportedTag value)? notSupportedTag,
    TResult Function(_ReadError value)? readError,
    required TResult orElse(),
  }) {
    if (notSupportedTag != null) {
      return notSupportedTag(this);
    }
    return orElse();
  }
}

abstract class _NotSupportedTag extends NfcFailure {
  const factory _NotSupportedTag([String? message]) = _$_NotSupportedTag;
  const _NotSupportedTag._() : super._();

  String? get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$NotSupportedTagCopyWith<_NotSupportedTag> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ReadErrorCopyWith<$Res> {
  factory _$ReadErrorCopyWith(
          _ReadError value, $Res Function(_ReadError) then) =
      __$ReadErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ReadErrorCopyWithImpl<$Res> extends _$NfcFailureCopyWithImpl<$Res>
    implements _$ReadErrorCopyWith<$Res> {
  __$ReadErrorCopyWithImpl(_ReadError _value, $Res Function(_ReadError) _then)
      : super(_value, (v) => _then(v as _ReadError));

  @override
  _ReadError get _value => super._value as _ReadError;
}

/// @nodoc

class _$_ReadError extends _ReadError {
  const _$_ReadError() : super._();

  @override
  String toString() {
    return 'NfcFailure.readError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ReadError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) notSupportedTag,
    required TResult Function() readError,
  }) {
    return readError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? notSupportedTag,
    TResult Function()? readError,
    required TResult orElse(),
  }) {
    if (readError != null) {
      return readError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotSupportedTag value) notSupportedTag,
    required TResult Function(_ReadError value) readError,
  }) {
    return readError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotSupportedTag value)? notSupportedTag,
    TResult Function(_ReadError value)? readError,
    required TResult orElse(),
  }) {
    if (readError != null) {
      return readError(this);
    }
    return orElse();
  }
}

abstract class _ReadError extends NfcFailure {
  const factory _ReadError() = _$_ReadError;
  const _ReadError._() : super._();
}
