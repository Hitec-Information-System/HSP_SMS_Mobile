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

  _CheckInfoStateInitial initial(String tagId, CheckInfo info) {
    return _CheckInfoStateInitial(
      tagId,
      info,
    );
  }

  _CheckInfoStateLoading loading(String tagId, CheckInfo info) {
    return _CheckInfoStateLoading(
      tagId,
      info,
    );
  }

  _CheckInfoStateLoaded loaded(String tagId, CheckInfo info) {
    return _CheckInfoStateLoaded(
      tagId,
      info,
    );
  }

  _CheckInfoStateSaving saving(String tagId, CheckInfo info) {
    return _CheckInfoStateSaving(
      tagId,
      info,
    );
  }

  _CheckInfoStateSaved saved(String tagId, CheckInfo info) {
    return _CheckInfoStateSaved(
      tagId,
      info,
    );
  }

  _CheckInfoStateFailure failure(
      String tagId, CheckInfo info, CheckInfoFailure failure) {
    return _CheckInfoStateFailure(
      tagId,
      info,
      failure,
    );
  }
}

/// @nodoc
const $CheckInfoState = _$CheckInfoStateTearOff();

/// @nodoc
mixin _$CheckInfoState {
  String get tagId => throw _privateConstructorUsedError;
  CheckInfo get info => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String tagId, CheckInfo info) initial,
    required TResult Function(String tagId, CheckInfo info) loading,
    required TResult Function(String tagId, CheckInfo info) loaded,
    required TResult Function(String tagId, CheckInfo info) saving,
    required TResult Function(String tagId, CheckInfo info) saved,
    required TResult Function(
            String tagId, CheckInfo info, CheckInfoFailure failure)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String tagId, CheckInfo info)? initial,
    TResult Function(String tagId, CheckInfo info)? loading,
    TResult Function(String tagId, CheckInfo info)? loaded,
    TResult Function(String tagId, CheckInfo info)? saving,
    TResult Function(String tagId, CheckInfo info)? saved,
    TResult Function(String tagId, CheckInfo info, CheckInfoFailure failure)?
        failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckInfoStateInitial value) initial,
    required TResult Function(_CheckInfoStateLoading value) loading,
    required TResult Function(_CheckInfoStateLoaded value) loaded,
    required TResult Function(_CheckInfoStateSaving value) saving,
    required TResult Function(_CheckInfoStateSaved value) saved,
    required TResult Function(_CheckInfoStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckInfoStateInitial value)? initial,
    TResult Function(_CheckInfoStateLoading value)? loading,
    TResult Function(_CheckInfoStateLoaded value)? loaded,
    TResult Function(_CheckInfoStateSaving value)? saving,
    TResult Function(_CheckInfoStateSaved value)? saved,
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
  $Res call({String tagId, CheckInfo info});

  $CheckInfoCopyWith<$Res> get info;
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
    Object? info = freezed,
  }) {
    return _then(_value.copyWith(
      tagId: tagId == freezed
          ? _value.tagId
          : tagId // ignore: cast_nullable_to_non_nullable
              as String,
      info: info == freezed
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
abstract class _$CheckInfoStateInitialCopyWith<$Res>
    implements $CheckInfoStateCopyWith<$Res> {
  factory _$CheckInfoStateInitialCopyWith(_CheckInfoStateInitial value,
          $Res Function(_CheckInfoStateInitial) then) =
      __$CheckInfoStateInitialCopyWithImpl<$Res>;
  @override
  $Res call({String tagId, CheckInfo info});

  @override
  $CheckInfoCopyWith<$Res> get info;
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
    Object? info = freezed,
  }) {
    return _then(_CheckInfoStateInitial(
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
}

/// @nodoc

class _$_CheckInfoStateInitial extends _CheckInfoStateInitial {
  const _$_CheckInfoStateInitial(this.tagId, this.info) : super._();

  @override
  final String tagId;
  @override
  final CheckInfo info;

  @override
  String toString() {
    return 'CheckInfoState.initial(tagId: $tagId, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckInfoStateInitial &&
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
  _$CheckInfoStateInitialCopyWith<_CheckInfoStateInitial> get copyWith =>
      __$CheckInfoStateInitialCopyWithImpl<_CheckInfoStateInitial>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String tagId, CheckInfo info) initial,
    required TResult Function(String tagId, CheckInfo info) loading,
    required TResult Function(String tagId, CheckInfo info) loaded,
    required TResult Function(String tagId, CheckInfo info) saving,
    required TResult Function(String tagId, CheckInfo info) saved,
    required TResult Function(
            String tagId, CheckInfo info, CheckInfoFailure failure)
        failure,
  }) {
    return initial(tagId, info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String tagId, CheckInfo info)? initial,
    TResult Function(String tagId, CheckInfo info)? loading,
    TResult Function(String tagId, CheckInfo info)? loaded,
    TResult Function(String tagId, CheckInfo info)? saving,
    TResult Function(String tagId, CheckInfo info)? saved,
    TResult Function(String tagId, CheckInfo info, CheckInfoFailure failure)?
        failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(tagId, info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckInfoStateInitial value) initial,
    required TResult Function(_CheckInfoStateLoading value) loading,
    required TResult Function(_CheckInfoStateLoaded value) loaded,
    required TResult Function(_CheckInfoStateSaving value) saving,
    required TResult Function(_CheckInfoStateSaved value) saved,
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
    TResult Function(_CheckInfoStateSaving value)? saving,
    TResult Function(_CheckInfoStateSaved value)? saved,
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
  const factory _CheckInfoStateInitial(String tagId, CheckInfo info) =
      _$_CheckInfoStateInitial;
  const _CheckInfoStateInitial._() : super._();

  @override
  String get tagId => throw _privateConstructorUsedError;
  @override
  CheckInfo get info => throw _privateConstructorUsedError;
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
  $Res call({String tagId, CheckInfo info});

  @override
  $CheckInfoCopyWith<$Res> get info;
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
    Object? info = freezed,
  }) {
    return _then(_CheckInfoStateLoading(
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
}

/// @nodoc

class _$_CheckInfoStateLoading extends _CheckInfoStateLoading {
  const _$_CheckInfoStateLoading(this.tagId, this.info) : super._();

  @override
  final String tagId;
  @override
  final CheckInfo info;

  @override
  String toString() {
    return 'CheckInfoState.loading(tagId: $tagId, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckInfoStateLoading &&
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
  _$CheckInfoStateLoadingCopyWith<_CheckInfoStateLoading> get copyWith =>
      __$CheckInfoStateLoadingCopyWithImpl<_CheckInfoStateLoading>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String tagId, CheckInfo info) initial,
    required TResult Function(String tagId, CheckInfo info) loading,
    required TResult Function(String tagId, CheckInfo info) loaded,
    required TResult Function(String tagId, CheckInfo info) saving,
    required TResult Function(String tagId, CheckInfo info) saved,
    required TResult Function(
            String tagId, CheckInfo info, CheckInfoFailure failure)
        failure,
  }) {
    return loading(tagId, info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String tagId, CheckInfo info)? initial,
    TResult Function(String tagId, CheckInfo info)? loading,
    TResult Function(String tagId, CheckInfo info)? loaded,
    TResult Function(String tagId, CheckInfo info)? saving,
    TResult Function(String tagId, CheckInfo info)? saved,
    TResult Function(String tagId, CheckInfo info, CheckInfoFailure failure)?
        failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(tagId, info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckInfoStateInitial value) initial,
    required TResult Function(_CheckInfoStateLoading value) loading,
    required TResult Function(_CheckInfoStateLoaded value) loaded,
    required TResult Function(_CheckInfoStateSaving value) saving,
    required TResult Function(_CheckInfoStateSaved value) saved,
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
    TResult Function(_CheckInfoStateSaving value)? saving,
    TResult Function(_CheckInfoStateSaved value)? saved,
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
  const factory _CheckInfoStateLoading(String tagId, CheckInfo info) =
      _$_CheckInfoStateLoading;
  const _CheckInfoStateLoading._() : super._();

  @override
  String get tagId => throw _privateConstructorUsedError;
  @override
  CheckInfo get info => throw _privateConstructorUsedError;
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

  @override
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
    required TResult Function(String tagId, CheckInfo info) initial,
    required TResult Function(String tagId, CheckInfo info) loading,
    required TResult Function(String tagId, CheckInfo info) loaded,
    required TResult Function(String tagId, CheckInfo info) saving,
    required TResult Function(String tagId, CheckInfo info) saved,
    required TResult Function(
            String tagId, CheckInfo info, CheckInfoFailure failure)
        failure,
  }) {
    return loaded(tagId, info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String tagId, CheckInfo info)? initial,
    TResult Function(String tagId, CheckInfo info)? loading,
    TResult Function(String tagId, CheckInfo info)? loaded,
    TResult Function(String tagId, CheckInfo info)? saving,
    TResult Function(String tagId, CheckInfo info)? saved,
    TResult Function(String tagId, CheckInfo info, CheckInfoFailure failure)?
        failure,
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
    required TResult Function(_CheckInfoStateSaving value) saving,
    required TResult Function(_CheckInfoStateSaved value) saved,
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
    TResult Function(_CheckInfoStateSaving value)? saving,
    TResult Function(_CheckInfoStateSaved value)? saved,
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
  @override
  CheckInfo get info => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CheckInfoStateLoadedCopyWith<_CheckInfoStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CheckInfoStateSavingCopyWith<$Res>
    implements $CheckInfoStateCopyWith<$Res> {
  factory _$CheckInfoStateSavingCopyWith(_CheckInfoStateSaving value,
          $Res Function(_CheckInfoStateSaving) then) =
      __$CheckInfoStateSavingCopyWithImpl<$Res>;
  @override
  $Res call({String tagId, CheckInfo info});

  @override
  $CheckInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$CheckInfoStateSavingCopyWithImpl<$Res>
    extends _$CheckInfoStateCopyWithImpl<$Res>
    implements _$CheckInfoStateSavingCopyWith<$Res> {
  __$CheckInfoStateSavingCopyWithImpl(
      _CheckInfoStateSaving _value, $Res Function(_CheckInfoStateSaving) _then)
      : super(_value, (v) => _then(v as _CheckInfoStateSaving));

  @override
  _CheckInfoStateSaving get _value => super._value as _CheckInfoStateSaving;

  @override
  $Res call({
    Object? tagId = freezed,
    Object? info = freezed,
  }) {
    return _then(_CheckInfoStateSaving(
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
}

/// @nodoc

class _$_CheckInfoStateSaving extends _CheckInfoStateSaving {
  const _$_CheckInfoStateSaving(this.tagId, this.info) : super._();

  @override
  final String tagId;
  @override
  final CheckInfo info;

  @override
  String toString() {
    return 'CheckInfoState.saving(tagId: $tagId, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckInfoStateSaving &&
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
  _$CheckInfoStateSavingCopyWith<_CheckInfoStateSaving> get copyWith =>
      __$CheckInfoStateSavingCopyWithImpl<_CheckInfoStateSaving>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String tagId, CheckInfo info) initial,
    required TResult Function(String tagId, CheckInfo info) loading,
    required TResult Function(String tagId, CheckInfo info) loaded,
    required TResult Function(String tagId, CheckInfo info) saving,
    required TResult Function(String tagId, CheckInfo info) saved,
    required TResult Function(
            String tagId, CheckInfo info, CheckInfoFailure failure)
        failure,
  }) {
    return saving(tagId, info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String tagId, CheckInfo info)? initial,
    TResult Function(String tagId, CheckInfo info)? loading,
    TResult Function(String tagId, CheckInfo info)? loaded,
    TResult Function(String tagId, CheckInfo info)? saving,
    TResult Function(String tagId, CheckInfo info)? saved,
    TResult Function(String tagId, CheckInfo info, CheckInfoFailure failure)?
        failure,
    required TResult orElse(),
  }) {
    if (saving != null) {
      return saving(tagId, info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckInfoStateInitial value) initial,
    required TResult Function(_CheckInfoStateLoading value) loading,
    required TResult Function(_CheckInfoStateLoaded value) loaded,
    required TResult Function(_CheckInfoStateSaving value) saving,
    required TResult Function(_CheckInfoStateSaved value) saved,
    required TResult Function(_CheckInfoStateFailure value) failure,
  }) {
    return saving(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckInfoStateInitial value)? initial,
    TResult Function(_CheckInfoStateLoading value)? loading,
    TResult Function(_CheckInfoStateLoaded value)? loaded,
    TResult Function(_CheckInfoStateSaving value)? saving,
    TResult Function(_CheckInfoStateSaved value)? saved,
    TResult Function(_CheckInfoStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (saving != null) {
      return saving(this);
    }
    return orElse();
  }
}

abstract class _CheckInfoStateSaving extends CheckInfoState {
  const factory _CheckInfoStateSaving(String tagId, CheckInfo info) =
      _$_CheckInfoStateSaving;
  const _CheckInfoStateSaving._() : super._();

  @override
  String get tagId => throw _privateConstructorUsedError;
  @override
  CheckInfo get info => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CheckInfoStateSavingCopyWith<_CheckInfoStateSaving> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CheckInfoStateSavedCopyWith<$Res>
    implements $CheckInfoStateCopyWith<$Res> {
  factory _$CheckInfoStateSavedCopyWith(_CheckInfoStateSaved value,
          $Res Function(_CheckInfoStateSaved) then) =
      __$CheckInfoStateSavedCopyWithImpl<$Res>;
  @override
  $Res call({String tagId, CheckInfo info});

  @override
  $CheckInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$CheckInfoStateSavedCopyWithImpl<$Res>
    extends _$CheckInfoStateCopyWithImpl<$Res>
    implements _$CheckInfoStateSavedCopyWith<$Res> {
  __$CheckInfoStateSavedCopyWithImpl(
      _CheckInfoStateSaved _value, $Res Function(_CheckInfoStateSaved) _then)
      : super(_value, (v) => _then(v as _CheckInfoStateSaved));

  @override
  _CheckInfoStateSaved get _value => super._value as _CheckInfoStateSaved;

  @override
  $Res call({
    Object? tagId = freezed,
    Object? info = freezed,
  }) {
    return _then(_CheckInfoStateSaved(
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
}

/// @nodoc

class _$_CheckInfoStateSaved extends _CheckInfoStateSaved {
  const _$_CheckInfoStateSaved(this.tagId, this.info) : super._();

  @override
  final String tagId;
  @override
  final CheckInfo info;

  @override
  String toString() {
    return 'CheckInfoState.saved(tagId: $tagId, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckInfoStateSaved &&
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
  _$CheckInfoStateSavedCopyWith<_CheckInfoStateSaved> get copyWith =>
      __$CheckInfoStateSavedCopyWithImpl<_CheckInfoStateSaved>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String tagId, CheckInfo info) initial,
    required TResult Function(String tagId, CheckInfo info) loading,
    required TResult Function(String tagId, CheckInfo info) loaded,
    required TResult Function(String tagId, CheckInfo info) saving,
    required TResult Function(String tagId, CheckInfo info) saved,
    required TResult Function(
            String tagId, CheckInfo info, CheckInfoFailure failure)
        failure,
  }) {
    return saved(tagId, info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String tagId, CheckInfo info)? initial,
    TResult Function(String tagId, CheckInfo info)? loading,
    TResult Function(String tagId, CheckInfo info)? loaded,
    TResult Function(String tagId, CheckInfo info)? saving,
    TResult Function(String tagId, CheckInfo info)? saved,
    TResult Function(String tagId, CheckInfo info, CheckInfoFailure failure)?
        failure,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(tagId, info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckInfoStateInitial value) initial,
    required TResult Function(_CheckInfoStateLoading value) loading,
    required TResult Function(_CheckInfoStateLoaded value) loaded,
    required TResult Function(_CheckInfoStateSaving value) saving,
    required TResult Function(_CheckInfoStateSaved value) saved,
    required TResult Function(_CheckInfoStateFailure value) failure,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckInfoStateInitial value)? initial,
    TResult Function(_CheckInfoStateLoading value)? loading,
    TResult Function(_CheckInfoStateLoaded value)? loaded,
    TResult Function(_CheckInfoStateSaving value)? saving,
    TResult Function(_CheckInfoStateSaved value)? saved,
    TResult Function(_CheckInfoStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _CheckInfoStateSaved extends CheckInfoState {
  const factory _CheckInfoStateSaved(String tagId, CheckInfo info) =
      _$_CheckInfoStateSaved;
  const _CheckInfoStateSaved._() : super._();

  @override
  String get tagId => throw _privateConstructorUsedError;
  @override
  CheckInfo get info => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CheckInfoStateSavedCopyWith<_CheckInfoStateSaved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CheckInfoStateFailureCopyWith<$Res>
    implements $CheckInfoStateCopyWith<$Res> {
  factory _$CheckInfoStateFailureCopyWith(_CheckInfoStateFailure value,
          $Res Function(_CheckInfoStateFailure) then) =
      __$CheckInfoStateFailureCopyWithImpl<$Res>;
  @override
  $Res call({String tagId, CheckInfo info, CheckInfoFailure failure});

  @override
  $CheckInfoCopyWith<$Res> get info;
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
    Object? info = freezed,
    Object? failure = freezed,
  }) {
    return _then(_CheckInfoStateFailure(
      tagId == freezed
          ? _value.tagId
          : tagId // ignore: cast_nullable_to_non_nullable
              as String,
      info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as CheckInfo,
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
  const _$_CheckInfoStateFailure(this.tagId, this.info, this.failure)
      : super._();

  @override
  final String tagId;
  @override
  final CheckInfo info;
  @override
  final CheckInfoFailure failure;

  @override
  String toString() {
    return 'CheckInfoState.failure(tagId: $tagId, info: $info, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckInfoStateFailure &&
            (identical(other.tagId, tagId) ||
                const DeepCollectionEquality().equals(other.tagId, tagId)) &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(tagId) ^
      const DeepCollectionEquality().hash(info) ^
      const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$CheckInfoStateFailureCopyWith<_CheckInfoStateFailure> get copyWith =>
      __$CheckInfoStateFailureCopyWithImpl<_CheckInfoStateFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String tagId, CheckInfo info) initial,
    required TResult Function(String tagId, CheckInfo info) loading,
    required TResult Function(String tagId, CheckInfo info) loaded,
    required TResult Function(String tagId, CheckInfo info) saving,
    required TResult Function(String tagId, CheckInfo info) saved,
    required TResult Function(
            String tagId, CheckInfo info, CheckInfoFailure failure)
        failure,
  }) {
    return failure(tagId, info, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String tagId, CheckInfo info)? initial,
    TResult Function(String tagId, CheckInfo info)? loading,
    TResult Function(String tagId, CheckInfo info)? loaded,
    TResult Function(String tagId, CheckInfo info)? saving,
    TResult Function(String tagId, CheckInfo info)? saved,
    TResult Function(String tagId, CheckInfo info, CheckInfoFailure failure)?
        failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(tagId, info, this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckInfoStateInitial value) initial,
    required TResult Function(_CheckInfoStateLoading value) loading,
    required TResult Function(_CheckInfoStateLoaded value) loaded,
    required TResult Function(_CheckInfoStateSaving value) saving,
    required TResult Function(_CheckInfoStateSaved value) saved,
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
    TResult Function(_CheckInfoStateSaving value)? saving,
    TResult Function(_CheckInfoStateSaved value)? saved,
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
  const factory _CheckInfoStateFailure(
          String tagId, CheckInfo info, CheckInfoFailure failure) =
      _$_CheckInfoStateFailure;
  const _CheckInfoStateFailure._() : super._();

  @override
  String get tagId => throw _privateConstructorUsedError;
  @override
  CheckInfo get info => throw _privateConstructorUsedError;
  CheckInfoFailure get failure => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CheckInfoStateFailureCopyWith<_CheckInfoStateFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
