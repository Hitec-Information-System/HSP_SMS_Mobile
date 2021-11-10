// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'added_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddedImageTearOff {
  const _$AddedImageTearOff();

  _AddedImage call(
      {required String name,
      required String url,
      required String remark,
      required bool isRemote}) {
    return _AddedImage(
      name: name,
      url: url,
      remark: remark,
      isRemote: isRemote,
    );
  }
}

/// @nodoc
const $AddedImage = _$AddedImageTearOff();

/// @nodoc
mixin _$AddedImage {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get remark => throw _privateConstructorUsedError;
  bool get isRemote => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddedImageCopyWith<AddedImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddedImageCopyWith<$Res> {
  factory $AddedImageCopyWith(
          AddedImage value, $Res Function(AddedImage) then) =
      _$AddedImageCopyWithImpl<$Res>;
  $Res call({String name, String url, String remark, bool isRemote});
}

/// @nodoc
class _$AddedImageCopyWithImpl<$Res> implements $AddedImageCopyWith<$Res> {
  _$AddedImageCopyWithImpl(this._value, this._then);

  final AddedImage _value;
  // ignore: unused_field
  final $Res Function(AddedImage) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
    Object? remark = freezed,
    Object? isRemote = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      remark: remark == freezed
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      isRemote: isRemote == freezed
          ? _value.isRemote
          : isRemote // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$AddedImageCopyWith<$Res> implements $AddedImageCopyWith<$Res> {
  factory _$AddedImageCopyWith(
          _AddedImage value, $Res Function(_AddedImage) then) =
      __$AddedImageCopyWithImpl<$Res>;
  @override
  $Res call({String name, String url, String remark, bool isRemote});
}

/// @nodoc
class __$AddedImageCopyWithImpl<$Res> extends _$AddedImageCopyWithImpl<$Res>
    implements _$AddedImageCopyWith<$Res> {
  __$AddedImageCopyWithImpl(
      _AddedImage _value, $Res Function(_AddedImage) _then)
      : super(_value, (v) => _then(v as _AddedImage));

  @override
  _AddedImage get _value => super._value as _AddedImage;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
    Object? remark = freezed,
    Object? isRemote = freezed,
  }) {
    return _then(_AddedImage(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      remark: remark == freezed
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      isRemote: isRemote == freezed
          ? _value.isRemote
          : isRemote // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AddedImage extends _AddedImage {
  const _$_AddedImage(
      {required this.name,
      required this.url,
      required this.remark,
      required this.isRemote})
      : super._();

  @override
  final String name;
  @override
  final String url;
  @override
  final String remark;
  @override
  final bool isRemote;

  @override
  String toString() {
    return 'AddedImage(name: $name, url: $url, remark: $remark, isRemote: $isRemote)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddedImage &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.remark, remark) ||
                const DeepCollectionEquality().equals(other.remark, remark)) &&
            (identical(other.isRemote, isRemote) ||
                const DeepCollectionEquality()
                    .equals(other.isRemote, isRemote)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(remark) ^
      const DeepCollectionEquality().hash(isRemote);

  @JsonKey(ignore: true)
  @override
  _$AddedImageCopyWith<_AddedImage> get copyWith =>
      __$AddedImageCopyWithImpl<_AddedImage>(this, _$identity);
}

abstract class _AddedImage extends AddedImage {
  const factory _AddedImage(
      {required String name,
      required String url,
      required String remark,
      required bool isRemote}) = _$_AddedImage;
  const _AddedImage._() : super._();

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get url => throw _privateConstructorUsedError;
  @override
  String get remark => throw _privateConstructorUsedError;
  @override
  bool get isRemote => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddedImageCopyWith<_AddedImage> get copyWith =>
      throw _privateConstructorUsedError;
}
