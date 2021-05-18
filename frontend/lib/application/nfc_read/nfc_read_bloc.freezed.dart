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

  TagButtonClicked tagButtonClicked() {
    return const TagButtonClicked();
  }

  TagCompleted tagCompleted() {
    return const TagCompleted();
  }

  TagCancelledByUser tagCancelledByUser() {
    return const TagCancelledByUser();
  }

  TagClear tagClear() {
    return const TagClear();
  }
}

/// @nodoc
const $NfcReadEvent = _$NfcReadEventTearOff();

/// @nodoc
mixin _$NfcReadEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() tagButtonClicked,
    required TResult Function() tagCompleted,
    required TResult Function() tagCancelledByUser,
    required TResult Function() tagClear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tagButtonClicked,
    TResult Function()? tagCompleted,
    TResult Function()? tagCancelledByUser,
    TResult Function()? tagClear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TagButtonClicked value) tagButtonClicked,
    required TResult Function(TagCompleted value) tagCompleted,
    required TResult Function(TagCancelledByUser value) tagCancelledByUser,
    required TResult Function(TagClear value) tagClear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TagButtonClicked value)? tagButtonClicked,
    TResult Function(TagCompleted value)? tagCompleted,
    TResult Function(TagCancelledByUser value)? tagCancelledByUser,
    TResult Function(TagClear value)? tagClear,
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
abstract class $TagButtonClickedCopyWith<$Res> {
  factory $TagButtonClickedCopyWith(
          TagButtonClicked value, $Res Function(TagButtonClicked) then) =
      _$TagButtonClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$TagButtonClickedCopyWithImpl<$Res>
    extends _$NfcReadEventCopyWithImpl<$Res>
    implements $TagButtonClickedCopyWith<$Res> {
  _$TagButtonClickedCopyWithImpl(
      TagButtonClicked _value, $Res Function(TagButtonClicked) _then)
      : super(_value, (v) => _then(v as TagButtonClicked));

  @override
  TagButtonClicked get _value => super._value as TagButtonClicked;
}

/// @nodoc

class _$TagButtonClicked implements TagButtonClicked {
  const _$TagButtonClicked();

  @override
  String toString() {
    return 'NfcReadEvent.tagButtonClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TagButtonClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() tagButtonClicked,
    required TResult Function() tagCompleted,
    required TResult Function() tagCancelledByUser,
    required TResult Function() tagClear,
  }) {
    return tagButtonClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tagButtonClicked,
    TResult Function()? tagCompleted,
    TResult Function()? tagCancelledByUser,
    TResult Function()? tagClear,
    required TResult orElse(),
  }) {
    if (tagButtonClicked != null) {
      return tagButtonClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TagButtonClicked value) tagButtonClicked,
    required TResult Function(TagCompleted value) tagCompleted,
    required TResult Function(TagCancelledByUser value) tagCancelledByUser,
    required TResult Function(TagClear value) tagClear,
  }) {
    return tagButtonClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TagButtonClicked value)? tagButtonClicked,
    TResult Function(TagCompleted value)? tagCompleted,
    TResult Function(TagCancelledByUser value)? tagCancelledByUser,
    TResult Function(TagClear value)? tagClear,
    required TResult orElse(),
  }) {
    if (tagButtonClicked != null) {
      return tagButtonClicked(this);
    }
    return orElse();
  }
}

abstract class TagButtonClicked implements NfcReadEvent {
  const factory TagButtonClicked() = _$TagButtonClicked;
}

/// @nodoc
abstract class $TagCompletedCopyWith<$Res> {
  factory $TagCompletedCopyWith(
          TagCompleted value, $Res Function(TagCompleted) then) =
      _$TagCompletedCopyWithImpl<$Res>;
}

/// @nodoc
class _$TagCompletedCopyWithImpl<$Res> extends _$NfcReadEventCopyWithImpl<$Res>
    implements $TagCompletedCopyWith<$Res> {
  _$TagCompletedCopyWithImpl(
      TagCompleted _value, $Res Function(TagCompleted) _then)
      : super(_value, (v) => _then(v as TagCompleted));

  @override
  TagCompleted get _value => super._value as TagCompleted;
}

/// @nodoc

class _$TagCompleted implements TagCompleted {
  const _$TagCompleted();

  @override
  String toString() {
    return 'NfcReadEvent.tagCompleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TagCompleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() tagButtonClicked,
    required TResult Function() tagCompleted,
    required TResult Function() tagCancelledByUser,
    required TResult Function() tagClear,
  }) {
    return tagCompleted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tagButtonClicked,
    TResult Function()? tagCompleted,
    TResult Function()? tagCancelledByUser,
    TResult Function()? tagClear,
    required TResult orElse(),
  }) {
    if (tagCompleted != null) {
      return tagCompleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TagButtonClicked value) tagButtonClicked,
    required TResult Function(TagCompleted value) tagCompleted,
    required TResult Function(TagCancelledByUser value) tagCancelledByUser,
    required TResult Function(TagClear value) tagClear,
  }) {
    return tagCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TagButtonClicked value)? tagButtonClicked,
    TResult Function(TagCompleted value)? tagCompleted,
    TResult Function(TagCancelledByUser value)? tagCancelledByUser,
    TResult Function(TagClear value)? tagClear,
    required TResult orElse(),
  }) {
    if (tagCompleted != null) {
      return tagCompleted(this);
    }
    return orElse();
  }
}

abstract class TagCompleted implements NfcReadEvent {
  const factory TagCompleted() = _$TagCompleted;
}

/// @nodoc
abstract class $TagCancelledByUserCopyWith<$Res> {
  factory $TagCancelledByUserCopyWith(
          TagCancelledByUser value, $Res Function(TagCancelledByUser) then) =
      _$TagCancelledByUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$TagCancelledByUserCopyWithImpl<$Res>
    extends _$NfcReadEventCopyWithImpl<$Res>
    implements $TagCancelledByUserCopyWith<$Res> {
  _$TagCancelledByUserCopyWithImpl(
      TagCancelledByUser _value, $Res Function(TagCancelledByUser) _then)
      : super(_value, (v) => _then(v as TagCancelledByUser));

  @override
  TagCancelledByUser get _value => super._value as TagCancelledByUser;
}

/// @nodoc

class _$TagCancelledByUser implements TagCancelledByUser {
  const _$TagCancelledByUser();

  @override
  String toString() {
    return 'NfcReadEvent.tagCancelledByUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TagCancelledByUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() tagButtonClicked,
    required TResult Function() tagCompleted,
    required TResult Function() tagCancelledByUser,
    required TResult Function() tagClear,
  }) {
    return tagCancelledByUser();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tagButtonClicked,
    TResult Function()? tagCompleted,
    TResult Function()? tagCancelledByUser,
    TResult Function()? tagClear,
    required TResult orElse(),
  }) {
    if (tagCancelledByUser != null) {
      return tagCancelledByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TagButtonClicked value) tagButtonClicked,
    required TResult Function(TagCompleted value) tagCompleted,
    required TResult Function(TagCancelledByUser value) tagCancelledByUser,
    required TResult Function(TagClear value) tagClear,
  }) {
    return tagCancelledByUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TagButtonClicked value)? tagButtonClicked,
    TResult Function(TagCompleted value)? tagCompleted,
    TResult Function(TagCancelledByUser value)? tagCancelledByUser,
    TResult Function(TagClear value)? tagClear,
    required TResult orElse(),
  }) {
    if (tagCancelledByUser != null) {
      return tagCancelledByUser(this);
    }
    return orElse();
  }
}

abstract class TagCancelledByUser implements NfcReadEvent {
  const factory TagCancelledByUser() = _$TagCancelledByUser;
}

/// @nodoc
abstract class $TagClearCopyWith<$Res> {
  factory $TagClearCopyWith(TagClear value, $Res Function(TagClear) then) =
      _$TagClearCopyWithImpl<$Res>;
}

/// @nodoc
class _$TagClearCopyWithImpl<$Res> extends _$NfcReadEventCopyWithImpl<$Res>
    implements $TagClearCopyWith<$Res> {
  _$TagClearCopyWithImpl(TagClear _value, $Res Function(TagClear) _then)
      : super(_value, (v) => _then(v as TagClear));

  @override
  TagClear get _value => super._value as TagClear;
}

/// @nodoc

class _$TagClear implements TagClear {
  const _$TagClear();

  @override
  String toString() {
    return 'NfcReadEvent.tagClear()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TagClear);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() tagButtonClicked,
    required TResult Function() tagCompleted,
    required TResult Function() tagCancelledByUser,
    required TResult Function() tagClear,
  }) {
    return tagClear();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tagButtonClicked,
    TResult Function()? tagCompleted,
    TResult Function()? tagCancelledByUser,
    TResult Function()? tagClear,
    required TResult orElse(),
  }) {
    if (tagClear != null) {
      return tagClear();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TagButtonClicked value) tagButtonClicked,
    required TResult Function(TagCompleted value) tagCompleted,
    required TResult Function(TagCancelledByUser value) tagCancelledByUser,
    required TResult Function(TagClear value) tagClear,
  }) {
    return tagClear(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TagButtonClicked value)? tagButtonClicked,
    TResult Function(TagCompleted value)? tagCompleted,
    TResult Function(TagCancelledByUser value)? tagCancelledByUser,
    TResult Function(TagClear value)? tagClear,
    required TResult orElse(),
  }) {
    if (tagClear != null) {
      return tagClear(this);
    }
    return orElse();
  }
}

abstract class TagClear implements NfcReadEvent {
  const factory TagClear() = _$TagClear;
}

/// @nodoc
class _$NfcReadStateTearOff {
  const _$NfcReadStateTearOff();

  _Initial initial() {
    return const _Initial();
  }
}

/// @nodoc
const $NfcReadState = _$NfcReadStateTearOff();

/// @nodoc
mixin _$NfcReadState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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
