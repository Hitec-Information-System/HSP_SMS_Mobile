// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'board_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BoardDTO _$BoardDTOFromJson(Map<String, dynamic> json) {
  return _BoardDTO.fromJson(json);
}

/// @nodoc
class _$BoardDTOTearOff {
  const _$BoardDTOTearOff();

  _BoardDTO call(
      {@JsonKey(name: "STATUS") required BoardProgressStatusDTO status,
      @JsonKey(name: "NOTICE") required List<BoardItemDTO> notice,
      @JsonKey(name: "SAFETY_OFFER") required List<BoardItemDTO> safety}) {
    return _BoardDTO(
      status: status,
      notice: notice,
      safety: safety,
    );
  }

  BoardDTO fromJson(Map<String, Object> json) {
    return BoardDTO.fromJson(json);
  }
}

/// @nodoc
const $BoardDTO = _$BoardDTOTearOff();

/// @nodoc
mixin _$BoardDTO {
  @JsonKey(name: "STATUS")
  BoardProgressStatusDTO get status => throw _privateConstructorUsedError;
  @JsonKey(name: "NOTICE")
  List<BoardItemDTO> get notice => throw _privateConstructorUsedError;
  @JsonKey(name: "SAFETY_OFFER")
  List<BoardItemDTO> get safety => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoardDTOCopyWith<BoardDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardDTOCopyWith<$Res> {
  factory $BoardDTOCopyWith(BoardDTO value, $Res Function(BoardDTO) then) =
      _$BoardDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "STATUS") BoardProgressStatusDTO status,
      @JsonKey(name: "NOTICE") List<BoardItemDTO> notice,
      @JsonKey(name: "SAFETY_OFFER") List<BoardItemDTO> safety});

  $BoardProgressStatusDTOCopyWith<$Res> get status;
}

/// @nodoc
class _$BoardDTOCopyWithImpl<$Res> implements $BoardDTOCopyWith<$Res> {
  _$BoardDTOCopyWithImpl(this._value, this._then);

  final BoardDTO _value;
  // ignore: unused_field
  final $Res Function(BoardDTO) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? notice = freezed,
    Object? safety = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BoardProgressStatusDTO,
      notice: notice == freezed
          ? _value.notice
          : notice // ignore: cast_nullable_to_non_nullable
              as List<BoardItemDTO>,
      safety: safety == freezed
          ? _value.safety
          : safety // ignore: cast_nullable_to_non_nullable
              as List<BoardItemDTO>,
    ));
  }

  @override
  $BoardProgressStatusDTOCopyWith<$Res> get status {
    return $BoardProgressStatusDTOCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }
}

/// @nodoc
abstract class _$BoardDTOCopyWith<$Res> implements $BoardDTOCopyWith<$Res> {
  factory _$BoardDTOCopyWith(_BoardDTO value, $Res Function(_BoardDTO) then) =
      __$BoardDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "STATUS") BoardProgressStatusDTO status,
      @JsonKey(name: "NOTICE") List<BoardItemDTO> notice,
      @JsonKey(name: "SAFETY_OFFER") List<BoardItemDTO> safety});

  @override
  $BoardProgressStatusDTOCopyWith<$Res> get status;
}

/// @nodoc
class __$BoardDTOCopyWithImpl<$Res> extends _$BoardDTOCopyWithImpl<$Res>
    implements _$BoardDTOCopyWith<$Res> {
  __$BoardDTOCopyWithImpl(_BoardDTO _value, $Res Function(_BoardDTO) _then)
      : super(_value, (v) => _then(v as _BoardDTO));

  @override
  _BoardDTO get _value => super._value as _BoardDTO;

  @override
  $Res call({
    Object? status = freezed,
    Object? notice = freezed,
    Object? safety = freezed,
  }) {
    return _then(_BoardDTO(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BoardProgressStatusDTO,
      notice: notice == freezed
          ? _value.notice
          : notice // ignore: cast_nullable_to_non_nullable
              as List<BoardItemDTO>,
      safety: safety == freezed
          ? _value.safety
          : safety // ignore: cast_nullable_to_non_nullable
              as List<BoardItemDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BoardDTO extends _BoardDTO {
  const _$_BoardDTO(
      {@JsonKey(name: "STATUS") required this.status,
      @JsonKey(name: "NOTICE") required this.notice,
      @JsonKey(name: "SAFETY_OFFER") required this.safety})
      : super._();

  factory _$_BoardDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_BoardDTOFromJson(json);

  @override
  @JsonKey(name: "STATUS")
  final BoardProgressStatusDTO status;
  @override
  @JsonKey(name: "NOTICE")
  final List<BoardItemDTO> notice;
  @override
  @JsonKey(name: "SAFETY_OFFER")
  final List<BoardItemDTO> safety;

  @override
  String toString() {
    return 'BoardDTO(status: $status, notice: $notice, safety: $safety)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BoardDTO &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.notice, notice) ||
                const DeepCollectionEquality().equals(other.notice, notice)) &&
            (identical(other.safety, safety) ||
                const DeepCollectionEquality().equals(other.safety, safety)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(notice) ^
      const DeepCollectionEquality().hash(safety);

  @JsonKey(ignore: true)
  @override
  _$BoardDTOCopyWith<_BoardDTO> get copyWith =>
      __$BoardDTOCopyWithImpl<_BoardDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BoardDTOToJson(this);
  }
}

abstract class _BoardDTO extends BoardDTO {
  const factory _BoardDTO(
          {@JsonKey(name: "STATUS") required BoardProgressStatusDTO status,
          @JsonKey(name: "NOTICE") required List<BoardItemDTO> notice,
          @JsonKey(name: "SAFETY_OFFER") required List<BoardItemDTO> safety}) =
      _$_BoardDTO;
  const _BoardDTO._() : super._();

  factory _BoardDTO.fromJson(Map<String, dynamic> json) = _$_BoardDTO.fromJson;

  @override
  @JsonKey(name: "STATUS")
  BoardProgressStatusDTO get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "NOTICE")
  List<BoardItemDTO> get notice => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "SAFETY_OFFER")
  List<BoardItemDTO> get safety => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BoardDTOCopyWith<_BoardDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

BoardProgressStatusDTO _$BoardProgressStatusDTOFromJson(
    Map<String, dynamic> json) {
  return _BoardProgressStatusDTO.fromJson(json);
}

/// @nodoc
class _$BoardProgressStatusDTOTearOff {
  const _$BoardProgressStatusDTOTearOff();

  _BoardProgressStatusDTO call(
      {@JsonKey(name: "BUILDING") required ProgressStatusDTO? building,
      @JsonKey(name: "LINE") required ProgressStatusDTO? line,
      @JsonKey(name: "FORKLIFT") required ProgressStatusDTO? forklift}) {
    return _BoardProgressStatusDTO(
      building: building,
      line: line,
      forklift: forklift,
    );
  }

  BoardProgressStatusDTO fromJson(Map<String, Object> json) {
    return BoardProgressStatusDTO.fromJson(json);
  }
}

/// @nodoc
const $BoardProgressStatusDTO = _$BoardProgressStatusDTOTearOff();

/// @nodoc
mixin _$BoardProgressStatusDTO {
  @JsonKey(name: "BUILDING")
  ProgressStatusDTO? get building => throw _privateConstructorUsedError;
  @JsonKey(name: "LINE")
  ProgressStatusDTO? get line => throw _privateConstructorUsedError;
  @JsonKey(name: "FORKLIFT")
  ProgressStatusDTO? get forklift => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoardProgressStatusDTOCopyWith<BoardProgressStatusDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardProgressStatusDTOCopyWith<$Res> {
  factory $BoardProgressStatusDTOCopyWith(BoardProgressStatusDTO value,
          $Res Function(BoardProgressStatusDTO) then) =
      _$BoardProgressStatusDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "BUILDING") ProgressStatusDTO? building,
      @JsonKey(name: "LINE") ProgressStatusDTO? line,
      @JsonKey(name: "FORKLIFT") ProgressStatusDTO? forklift});

  $ProgressStatusDTOCopyWith<$Res>? get building;
  $ProgressStatusDTOCopyWith<$Res>? get line;
  $ProgressStatusDTOCopyWith<$Res>? get forklift;
}

/// @nodoc
class _$BoardProgressStatusDTOCopyWithImpl<$Res>
    implements $BoardProgressStatusDTOCopyWith<$Res> {
  _$BoardProgressStatusDTOCopyWithImpl(this._value, this._then);

  final BoardProgressStatusDTO _value;
  // ignore: unused_field
  final $Res Function(BoardProgressStatusDTO) _then;

  @override
  $Res call({
    Object? building = freezed,
    Object? line = freezed,
    Object? forklift = freezed,
  }) {
    return _then(_value.copyWith(
      building: building == freezed
          ? _value.building
          : building // ignore: cast_nullable_to_non_nullable
              as ProgressStatusDTO?,
      line: line == freezed
          ? _value.line
          : line // ignore: cast_nullable_to_non_nullable
              as ProgressStatusDTO?,
      forklift: forklift == freezed
          ? _value.forklift
          : forklift // ignore: cast_nullable_to_non_nullable
              as ProgressStatusDTO?,
    ));
  }

  @override
  $ProgressStatusDTOCopyWith<$Res>? get building {
    if (_value.building == null) {
      return null;
    }

    return $ProgressStatusDTOCopyWith<$Res>(_value.building!, (value) {
      return _then(_value.copyWith(building: value));
    });
  }

  @override
  $ProgressStatusDTOCopyWith<$Res>? get line {
    if (_value.line == null) {
      return null;
    }

    return $ProgressStatusDTOCopyWith<$Res>(_value.line!, (value) {
      return _then(_value.copyWith(line: value));
    });
  }

  @override
  $ProgressStatusDTOCopyWith<$Res>? get forklift {
    if (_value.forklift == null) {
      return null;
    }

    return $ProgressStatusDTOCopyWith<$Res>(_value.forklift!, (value) {
      return _then(_value.copyWith(forklift: value));
    });
  }
}

/// @nodoc
abstract class _$BoardProgressStatusDTOCopyWith<$Res>
    implements $BoardProgressStatusDTOCopyWith<$Res> {
  factory _$BoardProgressStatusDTOCopyWith(_BoardProgressStatusDTO value,
          $Res Function(_BoardProgressStatusDTO) then) =
      __$BoardProgressStatusDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "BUILDING") ProgressStatusDTO? building,
      @JsonKey(name: "LINE") ProgressStatusDTO? line,
      @JsonKey(name: "FORKLIFT") ProgressStatusDTO? forklift});

  @override
  $ProgressStatusDTOCopyWith<$Res>? get building;
  @override
  $ProgressStatusDTOCopyWith<$Res>? get line;
  @override
  $ProgressStatusDTOCopyWith<$Res>? get forklift;
}

/// @nodoc
class __$BoardProgressStatusDTOCopyWithImpl<$Res>
    extends _$BoardProgressStatusDTOCopyWithImpl<$Res>
    implements _$BoardProgressStatusDTOCopyWith<$Res> {
  __$BoardProgressStatusDTOCopyWithImpl(_BoardProgressStatusDTO _value,
      $Res Function(_BoardProgressStatusDTO) _then)
      : super(_value, (v) => _then(v as _BoardProgressStatusDTO));

  @override
  _BoardProgressStatusDTO get _value => super._value as _BoardProgressStatusDTO;

  @override
  $Res call({
    Object? building = freezed,
    Object? line = freezed,
    Object? forklift = freezed,
  }) {
    return _then(_BoardProgressStatusDTO(
      building: building == freezed
          ? _value.building
          : building // ignore: cast_nullable_to_non_nullable
              as ProgressStatusDTO?,
      line: line == freezed
          ? _value.line
          : line // ignore: cast_nullable_to_non_nullable
              as ProgressStatusDTO?,
      forklift: forklift == freezed
          ? _value.forklift
          : forklift // ignore: cast_nullable_to_non_nullable
              as ProgressStatusDTO?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BoardProgressStatusDTO extends _BoardProgressStatusDTO {
  const _$_BoardProgressStatusDTO(
      {@JsonKey(name: "BUILDING") required this.building,
      @JsonKey(name: "LINE") required this.line,
      @JsonKey(name: "FORKLIFT") required this.forklift})
      : super._();

  factory _$_BoardProgressStatusDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_BoardProgressStatusDTOFromJson(json);

  @override
  @JsonKey(name: "BUILDING")
  final ProgressStatusDTO? building;
  @override
  @JsonKey(name: "LINE")
  final ProgressStatusDTO? line;
  @override
  @JsonKey(name: "FORKLIFT")
  final ProgressStatusDTO? forklift;

  @override
  String toString() {
    return 'BoardProgressStatusDTO(building: $building, line: $line, forklift: $forklift)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BoardProgressStatusDTO &&
            (identical(other.building, building) ||
                const DeepCollectionEquality()
                    .equals(other.building, building)) &&
            (identical(other.line, line) ||
                const DeepCollectionEquality().equals(other.line, line)) &&
            (identical(other.forklift, forklift) ||
                const DeepCollectionEquality()
                    .equals(other.forklift, forklift)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(building) ^
      const DeepCollectionEquality().hash(line) ^
      const DeepCollectionEquality().hash(forklift);

  @JsonKey(ignore: true)
  @override
  _$BoardProgressStatusDTOCopyWith<_BoardProgressStatusDTO> get copyWith =>
      __$BoardProgressStatusDTOCopyWithImpl<_BoardProgressStatusDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BoardProgressStatusDTOToJson(this);
  }
}

abstract class _BoardProgressStatusDTO extends BoardProgressStatusDTO {
  const factory _BoardProgressStatusDTO(
          {@JsonKey(name: "BUILDING") required ProgressStatusDTO? building,
          @JsonKey(name: "LINE") required ProgressStatusDTO? line,
          @JsonKey(name: "FORKLIFT") required ProgressStatusDTO? forklift}) =
      _$_BoardProgressStatusDTO;
  const _BoardProgressStatusDTO._() : super._();

  factory _BoardProgressStatusDTO.fromJson(Map<String, dynamic> json) =
      _$_BoardProgressStatusDTO.fromJson;

  @override
  @JsonKey(name: "BUILDING")
  ProgressStatusDTO? get building => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "LINE")
  ProgressStatusDTO? get line => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "FORKLIFT")
  ProgressStatusDTO? get forklift => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BoardProgressStatusDTOCopyWith<_BoardProgressStatusDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

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
      @JsonKey(name: "CRT_DT", fromJson: dateStringsToDateTime)
          required DateTime createdDate,
      @JsonKey(name: "UDT_BY")
          required String updatedBy,
      @JsonKey(name: "UDT_DT", fromJson: dateStringsToDateTime)
          required DateTime updatedDate,
      @JsonKey(name: "USE_YN", fromJson: _useYnToBool)
          required bool isInUse,
      @JsonKey(name: "IMGS", defaultValue: [])
          required List<AddedImageBoardDTO> images}) {
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
      images: images,
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
  @JsonKey(name: "CRT_DT", fromJson: dateStringsToDateTime)
  DateTime get createdDate => throw _privateConstructorUsedError;
  @JsonKey(name: "UDT_BY")
  String get updatedBy => throw _privateConstructorUsedError;
  @JsonKey(name: "UDT_DT", fromJson: dateStringsToDateTime)
  DateTime get updatedDate => throw _privateConstructorUsedError;
  @JsonKey(name: "USE_YN", fromJson: _useYnToBool)
  bool get isInUse => throw _privateConstructorUsedError;
  @JsonKey(name: "IMGS", defaultValue: [])
  List<AddedImageBoardDTO> get images => throw _privateConstructorUsedError;

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
      @JsonKey(name: "CRT_DT", fromJson: dateStringsToDateTime)
          DateTime createdDate,
      @JsonKey(name: "UDT_BY")
          String updatedBy,
      @JsonKey(name: "UDT_DT", fromJson: dateStringsToDateTime)
          DateTime updatedDate,
      @JsonKey(name: "USE_YN", fromJson: _useYnToBool)
          bool isInUse,
      @JsonKey(name: "IMGS", defaultValue: [])
          List<AddedImageBoardDTO> images});
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
    Object? images = freezed,
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
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<AddedImageBoardDTO>,
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
      @JsonKey(name: "CRT_DT", fromJson: dateStringsToDateTime)
          DateTime createdDate,
      @JsonKey(name: "UDT_BY")
          String updatedBy,
      @JsonKey(name: "UDT_DT", fromJson: dateStringsToDateTime)
          DateTime updatedDate,
      @JsonKey(name: "USE_YN", fromJson: _useYnToBool)
          bool isInUse,
      @JsonKey(name: "IMGS", defaultValue: [])
          List<AddedImageBoardDTO> images});
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
    Object? images = freezed,
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
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<AddedImageBoardDTO>,
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
      @JsonKey(name: "CRT_DT", fromJson: dateStringsToDateTime)
          required this.createdDate,
      @JsonKey(name: "UDT_BY")
          required this.updatedBy,
      @JsonKey(name: "UDT_DT", fromJson: dateStringsToDateTime)
          required this.updatedDate,
      @JsonKey(name: "USE_YN", fromJson: _useYnToBool)
          required this.isInUse,
      @JsonKey(name: "IMGS", defaultValue: [])
          required this.images})
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
  @JsonKey(name: "CRT_DT", fromJson: dateStringsToDateTime)
  final DateTime createdDate;
  @override
  @JsonKey(name: "UDT_BY")
  final String updatedBy;
  @override
  @JsonKey(name: "UDT_DT", fromJson: dateStringsToDateTime)
  final DateTime updatedDate;
  @override
  @JsonKey(name: "USE_YN", fromJson: _useYnToBool)
  final bool isInUse;
  @override
  @JsonKey(name: "IMGS", defaultValue: [])
  final List<AddedImageBoardDTO> images;

  @override
  String toString() {
    return 'BoardItemDTO(board: $board, key: $key, compCd: $compCd, topFixYn: $topFixYn, title: $title, contents: $contents, createdBy: $createdBy, createdDate: $createdDate, updatedBy: $updatedBy, updatedDate: $updatedDate, isInUse: $isInUse, images: $images)';
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
                const DeepCollectionEquality()
                    .equals(other.isInUse, isInUse)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)));
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
      const DeepCollectionEquality().hash(isInUse) ^
      const DeepCollectionEquality().hash(images);

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
      @JsonKey(name: "CRT_DT", fromJson: dateStringsToDateTime)
          required DateTime createdDate,
      @JsonKey(name: "UDT_BY")
          required String updatedBy,
      @JsonKey(name: "UDT_DT", fromJson: dateStringsToDateTime)
          required DateTime updatedDate,
      @JsonKey(name: "USE_YN", fromJson: _useYnToBool)
          required bool isInUse,
      @JsonKey(name: "IMGS", defaultValue: [])
          required List<AddedImageBoardDTO> images}) = _$_BoardItemDTO;
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
  @JsonKey(name: "CRT_DT", fromJson: dateStringsToDateTime)
  DateTime get createdDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "UDT_BY")
  String get updatedBy => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "UDT_DT", fromJson: dateStringsToDateTime)
  DateTime get updatedDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "USE_YN", fromJson: _useYnToBool)
  bool get isInUse => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "IMGS", defaultValue: [])
  List<AddedImageBoardDTO> get images => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BoardItemDTOCopyWith<_BoardItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

AddedImageBoardDTO _$AddedImageBoardDTOFromJson(Map<String, dynamic> json) {
  return _AddedImageBoardDTO.fromJson(json);
}

/// @nodoc
class _$AddedImageBoardDTOTearOff {
  const _$AddedImageBoardDTOTearOff();

  _AddedImageBoardDTO call(
      {@JsonKey(name: "B_PK", defaultValue: "") required String key,
      @JsonKey(name: "ATT_NO", defaultValue: "") required String no,
      @JsonKey(name: "NAME", defaultValue: "") required String name,
      @JsonKey(name: "CHK_IMG_URL_FULL", defaultValue: "") required String url,
      @JsonKey(name: "RMK", defaultValue: "") required String remark,
      @JsonKey(defaultValue: true) required bool isRemote}) {
    return _AddedImageBoardDTO(
      key: key,
      no: no,
      name: name,
      url: url,
      remark: remark,
      isRemote: isRemote,
    );
  }

  AddedImageBoardDTO fromJson(Map<String, Object> json) {
    return AddedImageBoardDTO.fromJson(json);
  }
}

/// @nodoc
const $AddedImageBoardDTO = _$AddedImageBoardDTOTearOff();

/// @nodoc
mixin _$AddedImageBoardDTO {
  @JsonKey(name: "B_PK", defaultValue: "")
  String get key => throw _privateConstructorUsedError;
  @JsonKey(name: "ATT_NO", defaultValue: "")
  String get no => throw _privateConstructorUsedError;
  @JsonKey(name: "NAME", defaultValue: "")
  String get name =>
      throw _privateConstructorUsedError; // 공통 사용하는 값의 형식을 맞춰주기 위해 넣은 것임
  @JsonKey(name: "CHK_IMG_URL_FULL", defaultValue: "")
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: "RMK", defaultValue: "")
  String get remark => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: true)
  bool get isRemote => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddedImageBoardDTOCopyWith<AddedImageBoardDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddedImageBoardDTOCopyWith<$Res> {
  factory $AddedImageBoardDTOCopyWith(
          AddedImageBoardDTO value, $Res Function(AddedImageBoardDTO) then) =
      _$AddedImageBoardDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "B_PK", defaultValue: "") String key,
      @JsonKey(name: "ATT_NO", defaultValue: "") String no,
      @JsonKey(name: "NAME", defaultValue: "") String name,
      @JsonKey(name: "CHK_IMG_URL_FULL", defaultValue: "") String url,
      @JsonKey(name: "RMK", defaultValue: "") String remark,
      @JsonKey(defaultValue: true) bool isRemote});
}

/// @nodoc
class _$AddedImageBoardDTOCopyWithImpl<$Res>
    implements $AddedImageBoardDTOCopyWith<$Res> {
  _$AddedImageBoardDTOCopyWithImpl(this._value, this._then);

  final AddedImageBoardDTO _value;
  // ignore: unused_field
  final $Res Function(AddedImageBoardDTO) _then;

  @override
  $Res call({
    Object? key = freezed,
    Object? no = freezed,
    Object? name = freezed,
    Object? url = freezed,
    Object? remark = freezed,
    Object? isRemote = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      no: no == freezed
          ? _value.no
          : no // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$AddedImageBoardDTOCopyWith<$Res>
    implements $AddedImageBoardDTOCopyWith<$Res> {
  factory _$AddedImageBoardDTOCopyWith(
          _AddedImageBoardDTO value, $Res Function(_AddedImageBoardDTO) then) =
      __$AddedImageBoardDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "B_PK", defaultValue: "") String key,
      @JsonKey(name: "ATT_NO", defaultValue: "") String no,
      @JsonKey(name: "NAME", defaultValue: "") String name,
      @JsonKey(name: "CHK_IMG_URL_FULL", defaultValue: "") String url,
      @JsonKey(name: "RMK", defaultValue: "") String remark,
      @JsonKey(defaultValue: true) bool isRemote});
}

/// @nodoc
class __$AddedImageBoardDTOCopyWithImpl<$Res>
    extends _$AddedImageBoardDTOCopyWithImpl<$Res>
    implements _$AddedImageBoardDTOCopyWith<$Res> {
  __$AddedImageBoardDTOCopyWithImpl(
      _AddedImageBoardDTO _value, $Res Function(_AddedImageBoardDTO) _then)
      : super(_value, (v) => _then(v as _AddedImageBoardDTO));

  @override
  _AddedImageBoardDTO get _value => super._value as _AddedImageBoardDTO;

  @override
  $Res call({
    Object? key = freezed,
    Object? no = freezed,
    Object? name = freezed,
    Object? url = freezed,
    Object? remark = freezed,
    Object? isRemote = freezed,
  }) {
    return _then(_AddedImageBoardDTO(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      no: no == freezed
          ? _value.no
          : no // ignore: cast_nullable_to_non_nullable
              as String,
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
@JsonSerializable()
class _$_AddedImageBoardDTO extends _AddedImageBoardDTO {
  const _$_AddedImageBoardDTO(
      {@JsonKey(name: "B_PK", defaultValue: "") required this.key,
      @JsonKey(name: "ATT_NO", defaultValue: "") required this.no,
      @JsonKey(name: "NAME", defaultValue: "") required this.name,
      @JsonKey(name: "CHK_IMG_URL_FULL", defaultValue: "") required this.url,
      @JsonKey(name: "RMK", defaultValue: "") required this.remark,
      @JsonKey(defaultValue: true) required this.isRemote})
      : super._();

  factory _$_AddedImageBoardDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_AddedImageBoardDTOFromJson(json);

  @override
  @JsonKey(name: "B_PK", defaultValue: "")
  final String key;
  @override
  @JsonKey(name: "ATT_NO", defaultValue: "")
  final String no;
  @override
  @JsonKey(name: "NAME", defaultValue: "")
  final String name;
  @override // 공통 사용하는 값의 형식을 맞춰주기 위해 넣은 것임
  @JsonKey(name: "CHK_IMG_URL_FULL", defaultValue: "")
  final String url;
  @override
  @JsonKey(name: "RMK", defaultValue: "")
  final String remark;
  @override
  @JsonKey(defaultValue: true)
  final bool isRemote;

  @override
  String toString() {
    return 'AddedImageBoardDTO(key: $key, no: $no, name: $name, url: $url, remark: $remark, isRemote: $isRemote)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddedImageBoardDTO &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.no, no) ||
                const DeepCollectionEquality().equals(other.no, no)) &&
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
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(no) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(remark) ^
      const DeepCollectionEquality().hash(isRemote);

  @JsonKey(ignore: true)
  @override
  _$AddedImageBoardDTOCopyWith<_AddedImageBoardDTO> get copyWith =>
      __$AddedImageBoardDTOCopyWithImpl<_AddedImageBoardDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AddedImageBoardDTOToJson(this);
  }
}

abstract class _AddedImageBoardDTO extends AddedImageBoardDTO {
  const factory _AddedImageBoardDTO(
      {@JsonKey(name: "B_PK", defaultValue: "")
          required String key,
      @JsonKey(name: "ATT_NO", defaultValue: "")
          required String no,
      @JsonKey(name: "NAME", defaultValue: "")
          required String name,
      @JsonKey(name: "CHK_IMG_URL_FULL", defaultValue: "")
          required String url,
      @JsonKey(name: "RMK", defaultValue: "")
          required String remark,
      @JsonKey(defaultValue: true)
          required bool isRemote}) = _$_AddedImageBoardDTO;
  const _AddedImageBoardDTO._() : super._();

  factory _AddedImageBoardDTO.fromJson(Map<String, dynamic> json) =
      _$_AddedImageBoardDTO.fromJson;

  @override
  @JsonKey(name: "B_PK", defaultValue: "")
  String get key => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "ATT_NO", defaultValue: "")
  String get no => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "NAME", defaultValue: "")
  String get name => throw _privateConstructorUsedError;
  @override // 공통 사용하는 값의 형식을 맞춰주기 위해 넣은 것임
  @JsonKey(name: "CHK_IMG_URL_FULL", defaultValue: "")
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "RMK", defaultValue: "")
  String get remark => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: true)
  bool get isRemote => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddedImageBoardDTOCopyWith<_AddedImageBoardDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
