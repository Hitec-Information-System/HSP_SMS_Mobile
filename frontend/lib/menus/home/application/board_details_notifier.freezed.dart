// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'board_details_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BoardDetailsStateTearOff {
  const _$BoardDetailsStateTearOff();

  _Initial initial(BoardItem item) {
    return _Initial(
      item,
    );
  }

  _Saving saving(BoardItem item) {
    return _Saving(
      item,
    );
  }

  _Saved saved(BoardItem item) {
    return _Saved(
      item,
    );
  }

  _Failure failure(BoardItem item, CheckMonitorFailure failure) {
    return _Failure(
      item,
      failure,
    );
  }
}

/// @nodoc
const $BoardDetailsState = _$BoardDetailsStateTearOff();

/// @nodoc
mixin _$BoardDetailsState {
  BoardItem get item => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BoardItem item) initial,
    required TResult Function(BoardItem item) saving,
    required TResult Function(BoardItem item) saved,
    required TResult Function(BoardItem item, CheckMonitorFailure failure)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BoardItem item)? initial,
    TResult Function(BoardItem item)? saving,
    TResult Function(BoardItem item)? saved,
    TResult Function(BoardItem item, CheckMonitorFailure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Saving value) saving,
    required TResult Function(_Saved value) saved,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Saving value)? saving,
    TResult Function(_Saved value)? saved,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BoardDetailsStateCopyWith<BoardDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardDetailsStateCopyWith<$Res> {
  factory $BoardDetailsStateCopyWith(
          BoardDetailsState value, $Res Function(BoardDetailsState) then) =
      _$BoardDetailsStateCopyWithImpl<$Res>;
  $Res call({BoardItem item});

  $BoardItemCopyWith<$Res> get item;
}

/// @nodoc
class _$BoardDetailsStateCopyWithImpl<$Res>
    implements $BoardDetailsStateCopyWith<$Res> {
  _$BoardDetailsStateCopyWithImpl(this._value, this._then);

  final BoardDetailsState _value;
  // ignore: unused_field
  final $Res Function(BoardDetailsState) _then;

  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(_value.copyWith(
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as BoardItem,
    ));
  }

  @override
  $BoardItemCopyWith<$Res> get item {
    return $BoardItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res>
    implements $BoardDetailsStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({BoardItem item});

  @override
  $BoardItemCopyWith<$Res> get item;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$BoardDetailsStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(_Initial(
      item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as BoardItem,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial(this.item) : super._();

  @override
  final BoardItem item;

  @override
  String toString() {
    return 'BoardDetailsState.initial(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initial &&
            (identical(other.item, item) ||
                const DeepCollectionEquality().equals(other.item, item)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(item);

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BoardItem item) initial,
    required TResult Function(BoardItem item) saving,
    required TResult Function(BoardItem item) saved,
    required TResult Function(BoardItem item, CheckMonitorFailure failure)
        failure,
  }) {
    return initial(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BoardItem item)? initial,
    TResult Function(BoardItem item)? saving,
    TResult Function(BoardItem item)? saved,
    TResult Function(BoardItem item, CheckMonitorFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Saving value) saving,
    required TResult Function(_Saved value) saved,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Saving value)? saving,
    TResult Function(_Saved value)? saved,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends BoardDetailsState {
  const factory _Initial(BoardItem item) = _$_Initial;
  const _Initial._() : super._();

  @override
  BoardItem get item => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SavingCopyWith<$Res>
    implements $BoardDetailsStateCopyWith<$Res> {
  factory _$SavingCopyWith(_Saving value, $Res Function(_Saving) then) =
      __$SavingCopyWithImpl<$Res>;
  @override
  $Res call({BoardItem item});

  @override
  $BoardItemCopyWith<$Res> get item;
}

/// @nodoc
class __$SavingCopyWithImpl<$Res> extends _$BoardDetailsStateCopyWithImpl<$Res>
    implements _$SavingCopyWith<$Res> {
  __$SavingCopyWithImpl(_Saving _value, $Res Function(_Saving) _then)
      : super(_value, (v) => _then(v as _Saving));

  @override
  _Saving get _value => super._value as _Saving;

  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(_Saving(
      item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as BoardItem,
    ));
  }
}

/// @nodoc

class _$_Saving extends _Saving {
  const _$_Saving(this.item) : super._();

  @override
  final BoardItem item;

  @override
  String toString() {
    return 'BoardDetailsState.saving(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Saving &&
            (identical(other.item, item) ||
                const DeepCollectionEquality().equals(other.item, item)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(item);

  @JsonKey(ignore: true)
  @override
  _$SavingCopyWith<_Saving> get copyWith =>
      __$SavingCopyWithImpl<_Saving>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BoardItem item) initial,
    required TResult Function(BoardItem item) saving,
    required TResult Function(BoardItem item) saved,
    required TResult Function(BoardItem item, CheckMonitorFailure failure)
        failure,
  }) {
    return saving(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BoardItem item)? initial,
    TResult Function(BoardItem item)? saving,
    TResult Function(BoardItem item)? saved,
    TResult Function(BoardItem item, CheckMonitorFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (saving != null) {
      return saving(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Saving value) saving,
    required TResult Function(_Saved value) saved,
    required TResult Function(_Failure value) failure,
  }) {
    return saving(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Saving value)? saving,
    TResult Function(_Saved value)? saved,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (saving != null) {
      return saving(this);
    }
    return orElse();
  }
}

abstract class _Saving extends BoardDetailsState {
  const factory _Saving(BoardItem item) = _$_Saving;
  const _Saving._() : super._();

  @override
  BoardItem get item => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SavingCopyWith<_Saving> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res>
    implements $BoardDetailsStateCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
  @override
  $Res call({BoardItem item});

  @override
  $BoardItemCopyWith<$Res> get item;
}

/// @nodoc
class __$SavedCopyWithImpl<$Res> extends _$BoardDetailsStateCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;

  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(_Saved(
      item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as BoardItem,
    ));
  }
}

/// @nodoc

class _$_Saved extends _Saved {
  const _$_Saved(this.item) : super._();

  @override
  final BoardItem item;

  @override
  String toString() {
    return 'BoardDetailsState.saved(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Saved &&
            (identical(other.item, item) ||
                const DeepCollectionEquality().equals(other.item, item)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(item);

  @JsonKey(ignore: true)
  @override
  _$SavedCopyWith<_Saved> get copyWith =>
      __$SavedCopyWithImpl<_Saved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BoardItem item) initial,
    required TResult Function(BoardItem item) saving,
    required TResult Function(BoardItem item) saved,
    required TResult Function(BoardItem item, CheckMonitorFailure failure)
        failure,
  }) {
    return saved(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BoardItem item)? initial,
    TResult Function(BoardItem item)? saving,
    TResult Function(BoardItem item)? saved,
    TResult Function(BoardItem item, CheckMonitorFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Saving value) saving,
    required TResult Function(_Saved value) saved,
    required TResult Function(_Failure value) failure,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Saving value)? saving,
    TResult Function(_Saved value)? saved,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved extends BoardDetailsState {
  const factory _Saved(BoardItem item) = _$_Saved;
  const _Saved._() : super._();

  @override
  BoardItem get item => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SavedCopyWith<_Saved> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res>
    implements $BoardDetailsStateCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  @override
  $Res call({BoardItem item, CheckMonitorFailure failure});

  @override
  $BoardItemCopyWith<$Res> get item;
  $CheckMonitorFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$BoardDetailsStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object? item = freezed,
    Object? failure = freezed,
  }) {
    return _then(_Failure(
      item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as BoardItem,
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as CheckMonitorFailure,
    ));
  }

  @override
  $CheckMonitorFailureCopyWith<$Res> get failure {
    return $CheckMonitorFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_Failure extends _Failure {
  const _$_Failure(this.item, this.failure) : super._();

  @override
  final BoardItem item;
  @override
  final CheckMonitorFailure failure;

  @override
  String toString() {
    return 'BoardDetailsState.failure(item: $item, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failure &&
            (identical(other.item, item) ||
                const DeepCollectionEquality().equals(other.item, item)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(item) ^
      const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BoardItem item) initial,
    required TResult Function(BoardItem item) saving,
    required TResult Function(BoardItem item) saved,
    required TResult Function(BoardItem item, CheckMonitorFailure failure)
        failure,
  }) {
    return failure(item, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BoardItem item)? initial,
    TResult Function(BoardItem item)? saving,
    TResult Function(BoardItem item)? saved,
    TResult Function(BoardItem item, CheckMonitorFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(item, this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Saving value) saving,
    required TResult Function(_Saved value) saved,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Saving value)? saving,
    TResult Function(_Saved value)? saved,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure extends BoardDetailsState {
  const factory _Failure(BoardItem item, CheckMonitorFailure failure) =
      _$_Failure;
  const _Failure._() : super._();

  @override
  BoardItem get item => throw _privateConstructorUsedError;
  CheckMonitorFailure get failure => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
