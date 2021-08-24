// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'check_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CheckDetailsTearOff {
  const _$CheckDetailsTearOff();

  _CheckDetails call(
      {required String id,
      required String name,
      required String method,
      required String checkInterval,
      required String remark,
      required List<bool> checkResult,
      required List<XFile> images}) {
    return _CheckDetails(
      id: id,
      name: name,
      method: method,
      checkInterval: checkInterval,
      remark: remark,
      checkResult: checkResult,
      images: images,
    );
  }
}

/// @nodoc
const $CheckDetails = _$CheckDetailsTearOff();

/// @nodoc
mixin _$CheckDetails {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get method => throw _privateConstructorUsedError;
  String get checkInterval => throw _privateConstructorUsedError;
  String get remark => throw _privateConstructorUsedError;
  List<bool> get checkResult => throw _privateConstructorUsedError;
  List<XFile> get images => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CheckDetailsCopyWith<CheckDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckDetailsCopyWith<$Res> {
  factory $CheckDetailsCopyWith(
          CheckDetails value, $Res Function(CheckDetails) then) =
      _$CheckDetailsCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String method,
      String checkInterval,
      String remark,
      List<bool> checkResult,
      List<XFile> images});
}

/// @nodoc
class _$CheckDetailsCopyWithImpl<$Res> implements $CheckDetailsCopyWith<$Res> {
  _$CheckDetailsCopyWithImpl(this._value, this._then);

  final CheckDetails _value;
  // ignore: unused_field
  final $Res Function(CheckDetails) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? method = freezed,
    Object? checkInterval = freezed,
    Object? remark = freezed,
    Object? checkResult = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      checkInterval: checkInterval == freezed
          ? _value.checkInterval
          : checkInterval // ignore: cast_nullable_to_non_nullable
              as String,
      remark: remark == freezed
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      checkResult: checkResult == freezed
          ? _value.checkResult
          : checkResult // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<XFile>,
    ));
  }
}

/// @nodoc
abstract class _$CheckDetailsCopyWith<$Res>
    implements $CheckDetailsCopyWith<$Res> {
  factory _$CheckDetailsCopyWith(
          _CheckDetails value, $Res Function(_CheckDetails) then) =
      __$CheckDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String method,
      String checkInterval,
      String remark,
      List<bool> checkResult,
      List<XFile> images});
}

/// @nodoc
class __$CheckDetailsCopyWithImpl<$Res> extends _$CheckDetailsCopyWithImpl<$Res>
    implements _$CheckDetailsCopyWith<$Res> {
  __$CheckDetailsCopyWithImpl(
      _CheckDetails _value, $Res Function(_CheckDetails) _then)
      : super(_value, (v) => _then(v as _CheckDetails));

  @override
  _CheckDetails get _value => super._value as _CheckDetails;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? method = freezed,
    Object? checkInterval = freezed,
    Object? remark = freezed,
    Object? checkResult = freezed,
    Object? images = freezed,
  }) {
    return _then(_CheckDetails(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      checkInterval: checkInterval == freezed
          ? _value.checkInterval
          : checkInterval // ignore: cast_nullable_to_non_nullable
              as String,
      remark: remark == freezed
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      checkResult: checkResult == freezed
          ? _value.checkResult
          : checkResult // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<XFile>,
    ));
  }
}

/// @nodoc

class _$_CheckDetails extends _CheckDetails {
  const _$_CheckDetails(
      {required this.id,
      required this.name,
      required this.method,
      required this.checkInterval,
      required this.remark,
      required this.checkResult,
      required this.images})
      : super._();

  @override
  final String id;
  @override
  final String name;
  @override
  final String method;
  @override
  final String checkInterval;
  @override
  final String remark;
  @override
  final List<bool> checkResult;
  @override
  final List<XFile> images;

  @override
  String toString() {
    return 'CheckDetails(id: $id, name: $name, method: $method, checkInterval: $checkInterval, remark: $remark, checkResult: $checkResult, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckDetails &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.method, method) ||
                const DeepCollectionEquality().equals(other.method, method)) &&
            (identical(other.checkInterval, checkInterval) ||
                const DeepCollectionEquality()
                    .equals(other.checkInterval, checkInterval)) &&
            (identical(other.remark, remark) ||
                const DeepCollectionEquality().equals(other.remark, remark)) &&
            (identical(other.checkResult, checkResult) ||
                const DeepCollectionEquality()
                    .equals(other.checkResult, checkResult)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(method) ^
      const DeepCollectionEquality().hash(checkInterval) ^
      const DeepCollectionEquality().hash(remark) ^
      const DeepCollectionEquality().hash(checkResult) ^
      const DeepCollectionEquality().hash(images);

  @JsonKey(ignore: true)
  @override
  _$CheckDetailsCopyWith<_CheckDetails> get copyWith =>
      __$CheckDetailsCopyWithImpl<_CheckDetails>(this, _$identity);
}

abstract class _CheckDetails extends CheckDetails {
  const factory _CheckDetails(
      {required String id,
      required String name,
      required String method,
      required String checkInterval,
      required String remark,
      required List<bool> checkResult,
      required List<XFile> images}) = _$_CheckDetails;
  const _CheckDetails._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get method => throw _privateConstructorUsedError;
  @override
  String get checkInterval => throw _privateConstructorUsedError;
  @override
  String get remark => throw _privateConstructorUsedError;
  @override
  List<bool> get checkResult => throw _privateConstructorUsedError;
  @override
  List<XFile> get images => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CheckDetailsCopyWith<_CheckDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
