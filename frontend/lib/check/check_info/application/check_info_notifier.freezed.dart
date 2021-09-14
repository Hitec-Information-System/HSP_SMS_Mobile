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

  _CheckInfoStateInitial initial(String tagId) {
    return _CheckInfoStateInitial(
      tagId,
    );
  }

  _CheckInfoStateLoading loading(String tagId) {
    return _CheckInfoStateLoading(
      tagId,
    );
  }

  _CheckInfoStateLoaded loaded(String tagId, CheckInfo info) {
    return _CheckInfoStateLoaded(
      tagId,
      info,
    );
  }

  _CheckInfoStateFailure failure(String tagId, CheckInfoFailure failure) {
    return _CheckInfoStateFailure(
      tagId,
      failure,
    );
  }
}

/// @nodoc
const $CheckInfoState = _$CheckInfoStateTearOff();

/// @nodoc
mixin _$CheckInfoState {
  String get tagId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String tagId) initial,
    required TResult Function(String tagId) loading,
    required TResult Function(String tagId, CheckInfo info) loaded,
    required TResult Function(String tagId, CheckInfoFailure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String tagId)? initial,
    TResult Function(String tagId)? loading,
    TResult Function(String tagId, CheckInfo info)? loaded,
    TResult Function(String tagId, CheckInfoFailure failure)? failure,
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

  @JsonKey(ignore: true)
  $CheckInfoStateCopyWith<CheckInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckInfoStateCopyWith<$Res> {
  factory $CheckInfoStateCopyWith(
          CheckInfoState value, $Res Function(CheckInfoState) then) =
      _$CheckInfoStateCopyWithImpl<$Res>;
  $Res call({String tagId});
}

/// @nodoc
class _$CheckInfoStateCopyWithImpl<$Res>
    implements $CheckInfoStateCopyWith<$Res> {
  _$CheckInfoStateCopyWithImpl(this._value, this._then);

  final CheckInfoState _value;
  // ignore: unused_field
  final $Res Function(CheckInfoState) _then;

  @override
  $Res call({
    Object? tagId = freezed,
  }) {
    return _then(_value.copyWith(
      tagId: tagId == freezed
          ? _value.tagId
          : tagId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CheckInfoStateInitialCopyWith<$Res>
    implements $CheckInfoStateCopyWith<$Res> {
  factory _$CheckInfoStateInitialCopyWith(_CheckInfoStateInitial value,
          $Res Function(_CheckInfoStateInitial) then) =
      __$CheckInfoStateInitialCopyWithImpl<$Res>;
  @override
  $Res call({String tagId});
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

  @override
  $Res call({
    Object? tagId = freezed,
  }) {
    return _then(_CheckInfoStateInitial(
      tagId == freezed
          ? _value.tagId
          : tagId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CheckInfoStateInitial extends _CheckInfoStateInitial {
  const _$_CheckInfoStateInitial(this.tagId) : super._();

  @override
  final String tagId;

  @override
  String toString() {
    return 'CheckInfoState.initial(tagId: $tagId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckInfoStateInitial &&
            (identical(other.tagId, tagId) ||
                const DeepCollectionEquality().equals(other.tagId, tagId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tagId);

  @JsonKey(ignore: true)
  @override
  _$CheckInfoStateInitialCopyWith<_CheckInfoStateInitial> get copyWith =>
      __$CheckInfoStateInitialCopyWithImpl<_CheckInfoStateInitial>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String tagId) initial,
    required TResult Function(String tagId) loading,
    required TResult Function(String tagId, CheckInfo info) loaded,
    required TResult Function(String tagId, CheckInfoFailure failure) failure,
  }) {
    return initial(tagId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String tagId)? initial,
    TResult Function(String tagId)? loading,
    TResult Function(String tagId, CheckInfo info)? loaded,
    TResult Function(String tagId, CheckInfoFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(tagId);
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
  const factory _CheckInfoStateInitial(String tagId) = _$_CheckInfoStateInitial;
  const _CheckInfoStateInitial._() : super._();

  @override
  String get tagId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CheckInfoStateInitialCopyWith<_CheckInfoStateInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CheckInfoStateLoadingCopyWith<$Res>
    implements $CheckInfoStateCopyWith<$Res> {
  factory _$CheckInfoStateLoadingCopyWith(_CheckInfoStateLoading value,
          $Res Function(_CheckInfoStateLoading) then) =
      __$CheckInfoStateLoadingCopyWithImpl<$Res>;
  @override
  $Res call({String tagId});
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

  @override
  $Res call({
    Object? tagId = freezed,
  }) {
    return _then(_CheckInfoStateLoading(
      tagId == freezed
          ? _value.tagId
          : tagId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CheckInfoStateLoading extends _CheckInfoStateLoading {
  const _$_CheckInfoStateLoading(this.tagId) : super._();

  @override
  final String tagId;

  @override
  String toString() {
    return 'CheckInfoState.loading(tagId: $tagId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckInfoStateLoading &&
            (identical(other.tagId, tagId) ||
                const DeepCollectionEquality().equals(other.tagId, tagId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tagId);

  @JsonKey(ignore: true)
  @override
  _$CheckInfoStateLoadingCopyWith<_CheckInfoStateLoading> get copyWith =>
      __$CheckInfoStateLoadingCopyWithImpl<_CheckInfoStateLoading>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String tagId) initial,
    required TResult Function(String tagId) loading,
    required TResult Function(String tagId, CheckInfo info) loaded,
    required TResult Function(String tagId, CheckInfoFailure failure) failure,
  }) {
    return loading(tagId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String tagId)? initial,
    TResult Function(String tagId)? loading,
    TResult Function(String tagId, CheckInfo info)? loaded,
    TResult Function(String tagId, CheckInfoFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(tagId);
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
  const factory _CheckInfoStateLoading(String tagId) = _$_CheckInfoStateLoading;
  const _CheckInfoStateLoading._() : super._();

  @override
  String get tagId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CheckInfoStateLoadingCopyWith<_CheckInfoStateLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CheckInfoStateLoadedCopyWith<$Res>
    implements $CheckInfoStateCopyWith<$Res> {
  factory _$CheckInfoStateLoadedCopyWith(_CheckInfoStateLoaded value,
          $Res Function(_CheckInfoStateLoaded) then) =
      __$CheckInfoStateLoadedCopyWithImpl<$Res>;
  @override
  $Res call({String tagId, CheckInfo info});

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
    Object? tagId = freezed,
    Object? info = freezed,
  }) {
    return _then(_CheckInfoStateLoaded(
      tagId == freezed
          ? _value.tagId
          : tagId // ignore: cast_nullable_to_non_nullable
              as String,
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
  const _$_CheckInfoStateLoaded(this.tagId, this.info) : super._();

  @override
  final String tagId;
  @override
  final CheckInfo info;

  @override
  String toString() {
    return 'CheckInfoState.loaded(tagId: $tagId, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckInfoStateLoaded &&
            (identical(other.tagId, tagId) ||
                const DeepCollectionEquality().equals(other.tagId, tagId)) &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(tagId) ^
      const DeepCollectionEquality().hash(info);

  @JsonKey(ignore: true)
  @override
  _$CheckInfoStateLoadedCopyWith<_CheckInfoStateLoaded> get copyWith =>
      __$CheckInfoStateLoadedCopyWithImpl<_CheckInfoStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String tagId) initial,
    required TResult Function(String tagId) loading,
    required TResult Function(String tagId, CheckInfo info) loaded,
    required TResult Function(String tagId, CheckInfoFailure failure) failure,
  }) {
    return loaded(tagId, info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String tagId)? initial,
    TResult Function(String tagId)? loading,
    TResult Function(String tagId, CheckInfo info)? loaded,
    TResult Function(String tagId, CheckInfoFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(tagId, info);
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
  const factory _CheckInfoStateLoaded(String tagId, CheckInfo info) =
      _$_CheckInfoStateLoaded;
  const _CheckInfoStateLoaded._() : super._();

  @override
  String get tagId => throw _privateConstructorUsedError;
  CheckInfo get info => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CheckInfoStateLoadedCopyWith<_CheckInfoStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CheckInfoStateFailureCopyWith<$Res>
    implements $CheckInfoStateCopyWith<$Res> {
  factory _$CheckInfoStateFailureCopyWith(_CheckInfoStateFailure value,
          $Res Function(_CheckInfoStateFailure) then) =
      __$CheckInfoStateFailureCopyWithImpl<$Res>;
  @override
  $Res call({String tagId, CheckInfoFailure failure});

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
    Object? tagId = freezed,
    Object? failure = freezed,
  }) {
    return _then(_CheckInfoStateFailure(
      tagId == freezed
          ? _value.tagId
          : tagId // ignore: cast_nullable_to_non_nullable
              as String,
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
  const _$_CheckInfoStateFailure(this.tagId, this.failure) : super._();

  @override
  final String tagId;
  @override
  final CheckInfoFailure failure;

  @override
  String toString() {
    return 'CheckInfoState.failure(tagId: $tagId, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckInfoStateFailure &&
            (identical(other.tagId, tagId) ||
                const DeepCollectionEquality().equals(other.tagId, tagId)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(tagId) ^
      const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$CheckInfoStateFailureCopyWith<_CheckInfoStateFailure> get copyWith =>
      __$CheckInfoStateFailureCopyWithImpl<_CheckInfoStateFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String tagId) initial,
    required TResult Function(String tagId) loading,
    required TResult Function(String tagId, CheckInfo info) loaded,
    required TResult Function(String tagId, CheckInfoFailure failure) failure,
  }) {
    return failure(tagId, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String tagId)? initial,
    TResult Function(String tagId)? loading,
    TResult Function(String tagId, CheckInfo info)? loaded,
    TResult Function(String tagId, CheckInfoFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(tagId, this.failure);
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
  const factory _CheckInfoStateFailure(String tagId, CheckInfoFailure failure) =
      _$_CheckInfoStateFailure;
  const _CheckInfoStateFailure._() : super._();

  @override
  String get tagId => throw _privateConstructorUsedError;
  CheckInfoFailure get failure => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CheckInfoStateFailureCopyWith<_CheckInfoStateFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
