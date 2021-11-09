// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'board_item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BoardItemDTO _$BoardItemDTOFromJson(Map<String, dynamic> json) {
  return _BoardItemDTO.fromJson(json);
}

/// @nodoc
class _$BoardItemDTOTearOff {
  const _$BoardItemDTOTearOff();

  _BoardItemDTO call(
      {@JsonKey(name: "BOARD_ID")
          required String board,
      @JsonKey(name: "B_PK")
          required String key,
      @JsonKey(name: "COMP_CD")
          required String compCd,
      @JsonKey(name: "TOP_FIX_YN")
          required String topFixYn,
      @JsonKey(name: "TITLE")
          required String title,
      @JsonKey(name: "TXT")
          required String contents,
      @JsonKey(name: "CRT_BY")
          required String createdBy,
      @JsonKey(name: "CRT_DT", fromJson: _dateStringsToDateTime)
          required DateTime createdDate,
      @JsonKey(name: "UDT_BY")
          required String updatedBy,
      @JsonKey(name: "UDT_DT", fromJson: _dateStringsToDateTime)
          required DateTime updatedDate,
      @JsonKey(name: "USE_YN", fromJson: _useYnToBool)
          required bool isInUse}) {
    return _BoardItemDTO(
      board: board,
      key: key,
      compCd: compCd,
      topFixYn: topFixYn,
      title: title,
      contents: contents,
      createdBy: createdBy,
      createdDate: createdDate,
      updatedBy: updatedBy,
      updatedDate: updatedDate,
      isInUse: isInUse,
    );
  }

  BoardItemDTO fromJson(Map<String, Object> json) {
    return BoardItemDTO.fromJson(json);
  }
}

/// @nodoc
const $BoardItemDTO = _$BoardItemDTOTearOff();

/// @nodoc
mixin _$BoardItemDTO {
  @JsonKey(name: "BOARD_ID")
  String get board => throw _privateConstructorUsedError;
  @JsonKey(name: "B_PK")
  String get key => throw _privateConstructorUsedError;
  @JsonKey(name: "COMP_CD")
  String get compCd => throw _privateConstructorUsedError;
  @JsonKey(name: "TOP_FIX_YN")
  String get topFixYn => throw _privateConstructorUsedError;
  @JsonKey(name: "TITLE")
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "TXT")
  String get contents => throw _privateConstructorUsedError;
  @JsonKey(name: "CRT_BY")
  String get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: "CRT_DT", fromJson: _dateStringsToDateTime)
  DateTime get createdDate => throw _privateConstructorUsedError;
  @JsonKey(name: "UDT_BY")
  String get updatedBy => throw _privateConstructorUsedError;
  @JsonKey(name: "UDT_DT", fromJson: _dateStringsToDateTime)
  DateTime get updatedDate => throw _privateConstructorUsedError;
  @JsonKey(name: "USE_YN", fromJson: _useYnToBool)
  bool get isInUse => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoardItemDTOCopyWith<BoardItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardItemDTOCopyWith<$Res> {
  factory $BoardItemDTOCopyWith(
          BoardItemDTO value, $Res Function(BoardItemDTO) then) =
      _$BoardItemDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "BOARD_ID")
          String board,
      @JsonKey(name: "B_PK")
          String key,
      @JsonKey(name: "COMP_CD")
          String compCd,
      @JsonKey(name: "TOP_FIX_YN")
          String topFixYn,
      @JsonKey(name: "TITLE")
          String title,
      @JsonKey(name: "TXT")
          String contents,
      @JsonKey(name: "CRT_BY")
          String createdBy,
      @JsonKey(name: "CRT_DT", fromJson: _dateStringsToDateTime)
          DateTime createdDate,
      @JsonKey(name: "UDT_BY")
          String updatedBy,
      @JsonKey(name: "UDT_DT", fromJson: _dateStringsToDateTime)
          DateTime updatedDate,
      @JsonKey(name: "USE_YN", fromJson: _useYnToBool)
          bool isInUse});
}

/// @nodoc
class _$BoardItemDTOCopyWithImpl<$Res> implements $BoardItemDTOCopyWith<$Res> {
  _$BoardItemDTOCopyWithImpl(this._value, this._then);

  final BoardItemDTO _value;
  // ignore: unused_field
  final $Res Function(BoardItemDTO) _then;

  @override
  $Res call({
    Object? board = freezed,
    Object? key = freezed,
    Object? compCd = freezed,
    Object? topFixYn = freezed,
    Object? title = freezed,
    Object? contents = freezed,
    Object? createdBy = freezed,
    Object? createdDate = freezed,
    Object? updatedBy = freezed,
    Object? updatedDate = freezed,
    Object? isInUse = freezed,
  }) {
    return _then(_value.copyWith(
      board: board == freezed
          ? _value.board
          : board // ignore: cast_nullable_to_non_nullable
              as String,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      compCd: compCd == freezed
          ? _value.compCd
          : compCd // ignore: cast_nullable_to_non_nullable
              as String,
      topFixYn: topFixYn == freezed
          ? _value.topFixYn
          : topFixYn // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      contents: contents == freezed
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      createdDate: createdDate == freezed
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedBy: updatedBy == freezed
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as String,
      updatedDate: updatedDate == freezed
          ? _value.updatedDate
          : updatedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isInUse: isInUse == freezed
          ? _value.isInUse
          : isInUse // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$BoardItemDTOCopyWith<$Res>
    implements $BoardItemDTOCopyWith<$Res> {
  factory _$BoardItemDTOCopyWith(
          _BoardItemDTO value, $Res Function(_BoardItemDTO) then) =
      __$BoardItemDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "BOARD_ID")
          String board,
      @JsonKey(name: "B_PK")
          String key,
      @JsonKey(name: "COMP_CD")
          String compCd,
      @JsonKey(name: "TOP_FIX_YN")
          String topFixYn,
      @JsonKey(name: "TITLE")
          String title,
      @JsonKey(name: "TXT")
          String contents,
      @JsonKey(name: "CRT_BY")
          String createdBy,
      @JsonKey(name: "CRT_DT", fromJson: _dateStringsToDateTime)
          DateTime createdDate,
      @JsonKey(name: "UDT_BY")
          String updatedBy,
      @JsonKey(name: "UDT_DT", fromJson: _dateStringsToDateTime)
          DateTime updatedDate,
      @JsonKey(name: "USE_YN", fromJson: _useYnToBool)
          bool isInUse});
}

/// @nodoc
class __$BoardItemDTOCopyWithImpl<$Res> extends _$BoardItemDTOCopyWithImpl<$Res>
    implements _$BoardItemDTOCopyWith<$Res> {
  __$BoardItemDTOCopyWithImpl(
      _BoardItemDTO _value, $Res Function(_BoardItemDTO) _then)
      : super(_value, (v) => _then(v as _BoardItemDTO));

  @override
  _BoardItemDTO get _value => super._value as _BoardItemDTO;

  @override
  $Res call({
    Object? board = freezed,
    Object? key = freezed,
    Object? compCd = freezed,
    Object? topFixYn = freezed,
    Object? title = freezed,
    Object? contents = freezed,
    Object? createdBy = freezed,
    Object? createdDate = freezed,
    Object? updatedBy = freezed,
    Object? updatedDate = freezed,
    Object? isInUse = freezed,
  }) {
    return _then(_BoardItemDTO(
      board: board == freezed
          ? _value.board
          : board // ignore: cast_nullable_to_non_nullable
              as String,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      compCd: compCd == freezed
          ? _value.compCd
          : compCd // ignore: cast_nullable_to_non_nullable
              as String,
      topFixYn: topFixYn == freezed
          ? _value.topFixYn
          : topFixYn // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      contents: contents == freezed
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      createdDate: createdDate == freezed
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedBy: updatedBy == freezed
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as String,
      updatedDate: updatedDate == freezed
          ? _value.updatedDate
          : updatedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isInUse: isInUse == freezed
          ? _value.isInUse
          : isInUse // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BoardItemDTO extends _BoardItemDTO {
  const _$_BoardItemDTO(
      {@JsonKey(name: "BOARD_ID")
          required this.board,
      @JsonKey(name: "B_PK")
          required this.key,
      @JsonKey(name: "COMP_CD")
          required this.compCd,
      @JsonKey(name: "TOP_FIX_YN")
          required this.topFixYn,
      @JsonKey(name: "TITLE")
          required this.title,
      @JsonKey(name: "TXT")
          required this.contents,
      @JsonKey(name: "CRT_BY")
          required this.createdBy,
      @JsonKey(name: "CRT_DT", fromJson: _dateStringsToDateTime)
          required this.createdDate,
      @JsonKey(name: "UDT_BY")
          required this.updatedBy,
      @JsonKey(name: "UDT_DT", fromJson: _dateStringsToDateTime)
          required this.updatedDate,
      @JsonKey(name: "USE_YN", fromJson: _useYnToBool)
          required this.isInUse})
      : super._();

  factory _$_BoardItemDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_BoardItemDTOFromJson(json);

  @override
  @JsonKey(name: "BOARD_ID")
  final String board;
  @override
  @JsonKey(name: "B_PK")
  final String key;
  @override
  @JsonKey(name: "COMP_CD")
  final String compCd;
  @override
  @JsonKey(name: "TOP_FIX_YN")
  final String topFixYn;
  @override
  @JsonKey(name: "TITLE")
  final String title;
  @override
  @JsonKey(name: "TXT")
  final String contents;
  @override
  @JsonKey(name: "CRT_BY")
  final String createdBy;
  @override
  @JsonKey(name: "CRT_DT", fromJson: _dateStringsToDateTime)
  final DateTime createdDate;
  @override
  @JsonKey(name: "UDT_BY")
  final String updatedBy;
  @override
  @JsonKey(name: "UDT_DT", fromJson: _dateStringsToDateTime)
  final DateTime updatedDate;
  @override
  @JsonKey(name: "USE_YN", fromJson: _useYnToBool)
  final bool isInUse;

  @override
  String toString() {
    return 'BoardItemDTO(board: $board, key: $key, compCd: $compCd, topFixYn: $topFixYn, title: $title, contents: $contents, createdBy: $createdBy, createdDate: $createdDate, updatedBy: $updatedBy, updatedDate: $updatedDate, isInUse: $isInUse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BoardItemDTO &&
            (identical(other.board, board) ||
                const DeepCollectionEquality().equals(other.board, board)) &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.compCd, compCd) ||
                const DeepCollectionEquality().equals(other.compCd, compCd)) &&
            (identical(other.topFixYn, topFixYn) ||
                const DeepCollectionEquality()
                    .equals(other.topFixYn, topFixYn)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.contents, contents) ||
                const DeepCollectionEquality()
                    .equals(other.contents, contents)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.createdDate, createdDate) ||
                const DeepCollectionEquality()
                    .equals(other.createdDate, createdDate)) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality()
                    .equals(other.updatedBy, updatedBy)) &&
            (identical(other.updatedDate, updatedDate) ||
                const DeepCollectionEquality()
                    .equals(other.updatedDate, updatedDate)) &&
            (identical(other.isInUse, isInUse) ||
                const DeepCollectionEquality().equals(other.isInUse, isInUse)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(board) ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(compCd) ^
      const DeepCollectionEquality().hash(topFixYn) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(contents) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(createdDate) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(updatedDate) ^
      const DeepCollectionEquality().hash(isInUse);

  @JsonKey(ignore: true)
  @override
  _$BoardItemDTOCopyWith<_BoardItemDTO> get copyWith =>
      __$BoardItemDTOCopyWithImpl<_BoardItemDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BoardItemDTOToJson(this);
  }
}

abstract class _BoardItemDTO extends BoardItemDTO {
  const factory _BoardItemDTO(
      {@JsonKey(name: "BOARD_ID")
          required String board,
      @JsonKey(name: "B_PK")
          required String key,
      @JsonKey(name: "COMP_CD")
          required String compCd,
      @JsonKey(name: "TOP_FIX_YN")
          required String topFixYn,
      @JsonKey(name: "TITLE")
          required String title,
      @JsonKey(name: "TXT")
          required String contents,
      @JsonKey(name: "CRT_BY")
          required String createdBy,
      @JsonKey(name: "CRT_DT", fromJson: _dateStringsToDateTime)
          required DateTime createdDate,
      @JsonKey(name: "UDT_BY")
          required String updatedBy,
      @JsonKey(name: "UDT_DT", fromJson: _dateStringsToDateTime)
          required DateTime updatedDate,
      @JsonKey(name: "USE_YN", fromJson: _useYnToBool)
          required bool isInUse}) = _$_BoardItemDTO;
  const _BoardItemDTO._() : super._();

  factory _BoardItemDTO.fromJson(Map<String, dynamic> json) =
      _$_BoardItemDTO.fromJson;

  @override
  @JsonKey(name: "BOARD_ID")
  String get board => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "B_PK")
  String get key => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "COMP_CD")
  String get compCd => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "TOP_FIX_YN")
  String get topFixYn => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "TITLE")
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "TXT")
  String get contents => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "CRT_BY")
  String get createdBy => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "CRT_DT", fromJson: _dateStringsToDateTime)
  DateTime get createdDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "UDT_BY")
  String get updatedBy => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "UDT_DT", fromJson: _dateStringsToDateTime)
  DateTime get updatedDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "USE_YN", fromJson: _useYnToBool)
  bool get isInUse => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BoardItemDTOCopyWith<_BoardItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
