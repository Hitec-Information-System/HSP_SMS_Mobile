// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'version_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VersionStateTearOff {
  const _$VersionStateTearOff();

  _Initial initial(Version version) {
    return _Initial(
      version,
    );
  }

  _Loading checking(Version version) {
    return _Loading(
      version,
    );
  }

  _Checked checked(Version version) {
    return _Checked(
      version,
    );
  }

  _FileAdded fileAdded(Version version) {
    return _FileAdded(
      version,
    );
  }

  _Uploaded uploaded(Version version) {
    return _Uploaded(
      version,
    );
  }

  _Failure failed(Version version, Failure failure) {
    return _Failure(
      version,
      failure,
    );
  }
}

/// @nodoc
const $VersionState = _$VersionStateTearOff();

/// @nodoc
mixin _$VersionState {
  Version get version => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Version version) initial,
    required TResult Function(Version version) checking,
    required TResult Function(Version version) checked,
    required TResult Function(Version version) fileAdded,
    required TResult Function(Version version) uploaded,
    required TResult Function(Version version, Failure failure) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Version version)? initial,
    TResult Function(Version version)? checking,
    TResult Function(Version version)? checked,
    TResult Function(Version version)? fileAdded,
    TResult Function(Version version)? uploaded,
    TResult Function(Version version, Failure failure)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Version version)? initial,
    TResult Function(Version version)? checking,
    TResult Function(Version version)? checked,
    TResult Function(Version version)? fileAdded,
    TResult Function(Version version)? uploaded,
    TResult Function(Version version, Failure failure)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) checking,
    required TResult Function(_Checked value) checked,
    required TResult Function(_FileAdded value) fileAdded,
    required TResult Function(_Uploaded value) uploaded,
    required TResult Function(_Failure value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? checking,
    TResult Function(_Checked value)? checked,
    TResult Function(_FileAdded value)? fileAdded,
    TResult Function(_Uploaded value)? uploaded,
    TResult Function(_Failure value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? checking,
    TResult Function(_Checked value)? checked,
    TResult Function(_FileAdded value)? fileAdded,
    TResult Function(_Uploaded value)? uploaded,
    TResult Function(_Failure value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VersionStateCopyWith<VersionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VersionStateCopyWith<$Res> {
  factory $VersionStateCopyWith(
          VersionState value, $Res Function(VersionState) then) =
      _$VersionStateCopyWithImpl<$Res>;
  $Res call({Version version});

  $VersionCopyWith<$Res> get version;
}

/// @nodoc
class _$VersionStateCopyWithImpl<$Res> implements $VersionStateCopyWith<$Res> {
  _$VersionStateCopyWithImpl(this._value, this._then);

  final VersionState _value;
  // ignore: unused_field
  final $Res Function(VersionState) _then;

  @override
  $Res call({
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as Version,
    ));
  }

  @override
  $VersionCopyWith<$Res> get version {
    return $VersionCopyWith<$Res>(_value.version, (value) {
      return _then(_value.copyWith(version: value));
    });
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> implements $VersionStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({Version version});

  @override
  $VersionCopyWith<$Res> get version;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$VersionStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? version = freezed,
  }) {
    return _then(_Initial(
      version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as Version,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial(this.version) : super._();

  @override
  final Version version;

  @override
  String toString() {
    return 'VersionState.initial(version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality().equals(other.version, version));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(version));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Version version) initial,
    required TResult Function(Version version) checking,
    required TResult Function(Version version) checked,
    required TResult Function(Version version) fileAdded,
    required TResult Function(Version version) uploaded,
    required TResult Function(Version version, Failure failure) failed,
  }) {
    return initial(version);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Version version)? initial,
    TResult Function(Version version)? checking,
    TResult Function(Version version)? checked,
    TResult Function(Version version)? fileAdded,
    TResult Function(Version version)? uploaded,
    TResult Function(Version version, Failure failure)? failed,
  }) {
    return initial?.call(version);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Version version)? initial,
    TResult Function(Version version)? checking,
    TResult Function(Version version)? checked,
    TResult Function(Version version)? fileAdded,
    TResult Function(Version version)? uploaded,
    TResult Function(Version version, Failure failure)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(version);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) checking,
    required TResult Function(_Checked value) checked,
    required TResult Function(_FileAdded value) fileAdded,
    required TResult Function(_Uploaded value) uploaded,
    required TResult Function(_Failure value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? checking,
    TResult Function(_Checked value)? checked,
    TResult Function(_FileAdded value)? fileAdded,
    TResult Function(_Uploaded value)? uploaded,
    TResult Function(_Failure value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? checking,
    TResult Function(_Checked value)? checked,
    TResult Function(_FileAdded value)? fileAdded,
    TResult Function(_Uploaded value)? uploaded,
    TResult Function(_Failure value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends VersionState {
  const factory _Initial(Version version) = _$_Initial;
  const _Initial._() : super._();

  @override
  Version get version;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> implements $VersionStateCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({Version version});

  @override
  $VersionCopyWith<$Res> get version;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$VersionStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;

  @override
  $Res call({
    Object? version = freezed,
  }) {
    return _then(_Loading(
      version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as Version,
    ));
  }
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading(this.version) : super._();

  @override
  final Version version;

  @override
  String toString() {
    return 'VersionState.checking(version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loading &&
            const DeepCollectionEquality().equals(other.version, version));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(version));

  @JsonKey(ignore: true)
  @override
  _$LoadingCopyWith<_Loading> get copyWith =>
      __$LoadingCopyWithImpl<_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Version version) initial,
    required TResult Function(Version version) checking,
    required TResult Function(Version version) checked,
    required TResult Function(Version version) fileAdded,
    required TResult Function(Version version) uploaded,
    required TResult Function(Version version, Failure failure) failed,
  }) {
    return checking(version);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Version version)? initial,
    TResult Function(Version version)? checking,
    TResult Function(Version version)? checked,
    TResult Function(Version version)? fileAdded,
    TResult Function(Version version)? uploaded,
    TResult Function(Version version, Failure failure)? failed,
  }) {
    return checking?.call(version);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Version version)? initial,
    TResult Function(Version version)? checking,
    TResult Function(Version version)? checked,
    TResult Function(Version version)? fileAdded,
    TResult Function(Version version)? uploaded,
    TResult Function(Version version, Failure failure)? failed,
    required TResult orElse(),
  }) {
    if (checking != null) {
      return checking(version);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) checking,
    required TResult Function(_Checked value) checked,
    required TResult Function(_FileAdded value) fileAdded,
    required TResult Function(_Uploaded value) uploaded,
    required TResult Function(_Failure value) failed,
  }) {
    return checking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? checking,
    TResult Function(_Checked value)? checked,
    TResult Function(_FileAdded value)? fileAdded,
    TResult Function(_Uploaded value)? uploaded,
    TResult Function(_Failure value)? failed,
  }) {
    return checking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? checking,
    TResult Function(_Checked value)? checked,
    TResult Function(_FileAdded value)? fileAdded,
    TResult Function(_Uploaded value)? uploaded,
    TResult Function(_Failure value)? failed,
    required TResult orElse(),
  }) {
    if (checking != null) {
      return checking(this);
    }
    return orElse();
  }
}

abstract class _Loading extends VersionState {
  const factory _Loading(Version version) = _$_Loading;
  const _Loading._() : super._();

  @override
  Version get version;
  @override
  @JsonKey(ignore: true)
  _$LoadingCopyWith<_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CheckedCopyWith<$Res> implements $VersionStateCopyWith<$Res> {
  factory _$CheckedCopyWith(_Checked value, $Res Function(_Checked) then) =
      __$CheckedCopyWithImpl<$Res>;
  @override
  $Res call({Version version});

  @override
  $VersionCopyWith<$Res> get version;
}

/// @nodoc
class __$CheckedCopyWithImpl<$Res> extends _$VersionStateCopyWithImpl<$Res>
    implements _$CheckedCopyWith<$Res> {
  __$CheckedCopyWithImpl(_Checked _value, $Res Function(_Checked) _then)
      : super(_value, (v) => _then(v as _Checked));

  @override
  _Checked get _value => super._value as _Checked;

  @override
  $Res call({
    Object? version = freezed,
  }) {
    return _then(_Checked(
      version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as Version,
    ));
  }
}

/// @nodoc

class _$_Checked extends _Checked {
  const _$_Checked(this.version) : super._();

  @override
  final Version version;

  @override
  String toString() {
    return 'VersionState.checked(version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Checked &&
            const DeepCollectionEquality().equals(other.version, version));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(version));

  @JsonKey(ignore: true)
  @override
  _$CheckedCopyWith<_Checked> get copyWith =>
      __$CheckedCopyWithImpl<_Checked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Version version) initial,
    required TResult Function(Version version) checking,
    required TResult Function(Version version) checked,
    required TResult Function(Version version) fileAdded,
    required TResult Function(Version version) uploaded,
    required TResult Function(Version version, Failure failure) failed,
  }) {
    return checked(version);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Version version)? initial,
    TResult Function(Version version)? checking,
    TResult Function(Version version)? checked,
    TResult Function(Version version)? fileAdded,
    TResult Function(Version version)? uploaded,
    TResult Function(Version version, Failure failure)? failed,
  }) {
    return checked?.call(version);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Version version)? initial,
    TResult Function(Version version)? checking,
    TResult Function(Version version)? checked,
    TResult Function(Version version)? fileAdded,
    TResult Function(Version version)? uploaded,
    TResult Function(Version version, Failure failure)? failed,
    required TResult orElse(),
  }) {
    if (checked != null) {
      return checked(version);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) checking,
    required TResult Function(_Checked value) checked,
    required TResult Function(_FileAdded value) fileAdded,
    required TResult Function(_Uploaded value) uploaded,
    required TResult Function(_Failure value) failed,
  }) {
    return checked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? checking,
    TResult Function(_Checked value)? checked,
    TResult Function(_FileAdded value)? fileAdded,
    TResult Function(_Uploaded value)? uploaded,
    TResult Function(_Failure value)? failed,
  }) {
    return checked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? checking,
    TResult Function(_Checked value)? checked,
    TResult Function(_FileAdded value)? fileAdded,
    TResult Function(_Uploaded value)? uploaded,
    TResult Function(_Failure value)? failed,
    required TResult orElse(),
  }) {
    if (checked != null) {
      return checked(this);
    }
    return orElse();
  }
}

abstract class _Checked extends VersionState {
  const factory _Checked(Version version) = _$_Checked;
  const _Checked._() : super._();

  @override
  Version get version;
  @override
  @JsonKey(ignore: true)
  _$CheckedCopyWith<_Checked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FileAddedCopyWith<$Res>
    implements $VersionStateCopyWith<$Res> {
  factory _$FileAddedCopyWith(
          _FileAdded value, $Res Function(_FileAdded) then) =
      __$FileAddedCopyWithImpl<$Res>;
  @override
  $Res call({Version version});

  @override
  $VersionCopyWith<$Res> get version;
}

/// @nodoc
class __$FileAddedCopyWithImpl<$Res> extends _$VersionStateCopyWithImpl<$Res>
    implements _$FileAddedCopyWith<$Res> {
  __$FileAddedCopyWithImpl(_FileAdded _value, $Res Function(_FileAdded) _then)
      : super(_value, (v) => _then(v as _FileAdded));

  @override
  _FileAdded get _value => super._value as _FileAdded;

  @override
  $Res call({
    Object? version = freezed,
  }) {
    return _then(_FileAdded(
      version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as Version,
    ));
  }
}

/// @nodoc

class _$_FileAdded extends _FileAdded {
  const _$_FileAdded(this.version) : super._();

  @override
  final Version version;

  @override
  String toString() {
    return 'VersionState.fileAdded(version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FileAdded &&
            const DeepCollectionEquality().equals(other.version, version));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(version));

  @JsonKey(ignore: true)
  @override
  _$FileAddedCopyWith<_FileAdded> get copyWith =>
      __$FileAddedCopyWithImpl<_FileAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Version version) initial,
    required TResult Function(Version version) checking,
    required TResult Function(Version version) checked,
    required TResult Function(Version version) fileAdded,
    required TResult Function(Version version) uploaded,
    required TResult Function(Version version, Failure failure) failed,
  }) {
    return fileAdded(version);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Version version)? initial,
    TResult Function(Version version)? checking,
    TResult Function(Version version)? checked,
    TResult Function(Version version)? fileAdded,
    TResult Function(Version version)? uploaded,
    TResult Function(Version version, Failure failure)? failed,
  }) {
    return fileAdded?.call(version);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Version version)? initial,
    TResult Function(Version version)? checking,
    TResult Function(Version version)? checked,
    TResult Function(Version version)? fileAdded,
    TResult Function(Version version)? uploaded,
    TResult Function(Version version, Failure failure)? failed,
    required TResult orElse(),
  }) {
    if (fileAdded != null) {
      return fileAdded(version);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) checking,
    required TResult Function(_Checked value) checked,
    required TResult Function(_FileAdded value) fileAdded,
    required TResult Function(_Uploaded value) uploaded,
    required TResult Function(_Failure value) failed,
  }) {
    return fileAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? checking,
    TResult Function(_Checked value)? checked,
    TResult Function(_FileAdded value)? fileAdded,
    TResult Function(_Uploaded value)? uploaded,
    TResult Function(_Failure value)? failed,
  }) {
    return fileAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? checking,
    TResult Function(_Checked value)? checked,
    TResult Function(_FileAdded value)? fileAdded,
    TResult Function(_Uploaded value)? uploaded,
    TResult Function(_Failure value)? failed,
    required TResult orElse(),
  }) {
    if (fileAdded != null) {
      return fileAdded(this);
    }
    return orElse();
  }
}

abstract class _FileAdded extends VersionState {
  const factory _FileAdded(Version version) = _$_FileAdded;
  const _FileAdded._() : super._();

  @override
  Version get version;
  @override
  @JsonKey(ignore: true)
  _$FileAddedCopyWith<_FileAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UploadedCopyWith<$Res> implements $VersionStateCopyWith<$Res> {
  factory _$UploadedCopyWith(_Uploaded value, $Res Function(_Uploaded) then) =
      __$UploadedCopyWithImpl<$Res>;
  @override
  $Res call({Version version});

  @override
  $VersionCopyWith<$Res> get version;
}

/// @nodoc
class __$UploadedCopyWithImpl<$Res> extends _$VersionStateCopyWithImpl<$Res>
    implements _$UploadedCopyWith<$Res> {
  __$UploadedCopyWithImpl(_Uploaded _value, $Res Function(_Uploaded) _then)
      : super(_value, (v) => _then(v as _Uploaded));

  @override
  _Uploaded get _value => super._value as _Uploaded;

  @override
  $Res call({
    Object? version = freezed,
  }) {
    return _then(_Uploaded(
      version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as Version,
    ));
  }
}

/// @nodoc

class _$_Uploaded extends _Uploaded {
  const _$_Uploaded(this.version) : super._();

  @override
  final Version version;

  @override
  String toString() {
    return 'VersionState.uploaded(version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Uploaded &&
            const DeepCollectionEquality().equals(other.version, version));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(version));

  @JsonKey(ignore: true)
  @override
  _$UploadedCopyWith<_Uploaded> get copyWith =>
      __$UploadedCopyWithImpl<_Uploaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Version version) initial,
    required TResult Function(Version version) checking,
    required TResult Function(Version version) checked,
    required TResult Function(Version version) fileAdded,
    required TResult Function(Version version) uploaded,
    required TResult Function(Version version, Failure failure) failed,
  }) {
    return uploaded(version);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Version version)? initial,
    TResult Function(Version version)? checking,
    TResult Function(Version version)? checked,
    TResult Function(Version version)? fileAdded,
    TResult Function(Version version)? uploaded,
    TResult Function(Version version, Failure failure)? failed,
  }) {
    return uploaded?.call(version);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Version version)? initial,
    TResult Function(Version version)? checking,
    TResult Function(Version version)? checked,
    TResult Function(Version version)? fileAdded,
    TResult Function(Version version)? uploaded,
    TResult Function(Version version, Failure failure)? failed,
    required TResult orElse(),
  }) {
    if (uploaded != null) {
      return uploaded(version);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) checking,
    required TResult Function(_Checked value) checked,
    required TResult Function(_FileAdded value) fileAdded,
    required TResult Function(_Uploaded value) uploaded,
    required TResult Function(_Failure value) failed,
  }) {
    return uploaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? checking,
    TResult Function(_Checked value)? checked,
    TResult Function(_FileAdded value)? fileAdded,
    TResult Function(_Uploaded value)? uploaded,
    TResult Function(_Failure value)? failed,
  }) {
    return uploaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? checking,
    TResult Function(_Checked value)? checked,
    TResult Function(_FileAdded value)? fileAdded,
    TResult Function(_Uploaded value)? uploaded,
    TResult Function(_Failure value)? failed,
    required TResult orElse(),
  }) {
    if (uploaded != null) {
      return uploaded(this);
    }
    return orElse();
  }
}

abstract class _Uploaded extends VersionState {
  const factory _Uploaded(Version version) = _$_Uploaded;
  const _Uploaded._() : super._();

  @override
  Version get version;
  @override
  @JsonKey(ignore: true)
  _$UploadedCopyWith<_Uploaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> implements $VersionStateCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  @override
  $Res call({Version version, Failure failure});

  @override
  $VersionCopyWith<$Res> get version;
  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$VersionStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object? version = freezed,
    Object? failure = freezed,
  }) {
    return _then(_Failure(
      version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as Version,
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_Failure extends _Failure {
  const _$_Failure(this.version, this.failure) : super._();

  @override
  final Version version;
  @override
  final Failure failure;

  @override
  String toString() {
    return 'VersionState.failed(version: $version, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Failure &&
            const DeepCollectionEquality().equals(other.version, version) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(version),
      const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Version version) initial,
    required TResult Function(Version version) checking,
    required TResult Function(Version version) checked,
    required TResult Function(Version version) fileAdded,
    required TResult Function(Version version) uploaded,
    required TResult Function(Version version, Failure failure) failed,
  }) {
    return failed(version, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Version version)? initial,
    TResult Function(Version version)? checking,
    TResult Function(Version version)? checked,
    TResult Function(Version version)? fileAdded,
    TResult Function(Version version)? uploaded,
    TResult Function(Version version, Failure failure)? failed,
  }) {
    return failed?.call(version, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Version version)? initial,
    TResult Function(Version version)? checking,
    TResult Function(Version version)? checked,
    TResult Function(Version version)? fileAdded,
    TResult Function(Version version)? uploaded,
    TResult Function(Version version, Failure failure)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(version, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) checking,
    required TResult Function(_Checked value) checked,
    required TResult Function(_FileAdded value) fileAdded,
    required TResult Function(_Uploaded value) uploaded,
    required TResult Function(_Failure value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? checking,
    TResult Function(_Checked value)? checked,
    TResult Function(_FileAdded value)? fileAdded,
    TResult Function(_Uploaded value)? uploaded,
    TResult Function(_Failure value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? checking,
    TResult Function(_Checked value)? checked,
    TResult Function(_FileAdded value)? fileAdded,
    TResult Function(_Uploaded value)? uploaded,
    TResult Function(_Failure value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failure extends VersionState {
  const factory _Failure(Version version, Failure failure) = _$_Failure;
  const _Failure._() : super._();

  @override
  Version get version;
  Failure get failure;
  @override
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
