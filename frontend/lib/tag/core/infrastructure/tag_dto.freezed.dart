// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tag_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TagDTOTearOff {
  const _$TagDTOTearOff();

  _TagDTO call({required String id}) {
    return _TagDTO(
      id: id,
    );
  }
}

/// @nodoc
const $TagDTO = _$TagDTOTearOff();

/// @nodoc
mixin _$TagDTO {
  String get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TagDTOCopyWith<TagDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagDTOCopyWith<$Res> {
  factory $TagDTOCopyWith(TagDTO value, $Res Function(TagDTO) then) =
      _$TagDTOCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$TagDTOCopyWithImpl<$Res> implements $TagDTOCopyWith<$Res> {
  _$TagDTOCopyWithImpl(this._value, this._then);

  final TagDTO _value;
  // ignore: unused_field
  final $Res Function(TagDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TagDTOCopyWith<$Res> implements $TagDTOCopyWith<$Res> {
  factory _$TagDTOCopyWith(_TagDTO value, $Res Function(_TagDTO) then) =
      __$TagDTOCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$TagDTOCopyWithImpl<$Res> extends _$TagDTOCopyWithImpl<$Res>
    implements _$TagDTOCopyWith<$Res> {
  __$TagDTOCopyWithImpl(_TagDTO _value, $Res Function(_TagDTO) _then)
      : super(_value, (v) => _then(v as _TagDTO));

  @override
  _TagDTO get _value => super._value as _TagDTO;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_TagDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TagDTO extends _TagDTO {
  const _$_TagDTO({required this.id}) : super._();

  @override
  final String id;

  @override
  String toString() {
    return 'TagDTO(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TagDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$TagDTOCopyWith<_TagDTO> get copyWith =>
      __$TagDTOCopyWithImpl<_TagDTO>(this, _$identity);
}

abstract class _TagDTO extends TagDTO {
  const factory _TagDTO({required String id}) = _$_TagDTO;
  const _TagDTO._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TagDTOCopyWith<_TagDTO> get copyWith => throw _privateConstructorUsedError;
}
