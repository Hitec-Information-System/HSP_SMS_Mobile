// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'board.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BoardTearOff {
  const _$BoardTearOff();

  _Board call(
      {required BoardProgressStatus status,
      required List<BoardItem> notice,
      required List<BoardItem> safety}) {
    return _Board(
      status: status,
      notice: notice,
      safety: safety,
    );
  }
}

/// @nodoc
const $Board = _$BoardTearOff();

/// @nodoc
mixin _$Board {
  BoardProgressStatus get status => throw _privateConstructorUsedError;
  List<BoardItem> get notice => throw _privateConstructorUsedError;
  List<BoardItem> get safety => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BoardCopyWith<Board> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardCopyWith<$Res> {
  factory $BoardCopyWith(Board value, $Res Function(Board) then) =
      _$BoardCopyWithImpl<$Res>;
  $Res call(
      {BoardProgressStatus status,
      List<BoardItem> notice,
      List<BoardItem> safety});

  $BoardProgressStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$BoardCopyWithImpl<$Res> implements $BoardCopyWith<$Res> {
  _$BoardCopyWithImpl(this._value, this._then);

  final Board _value;
  // ignore: unused_field
  final $Res Function(Board) _then;

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
              as BoardProgressStatus,
      notice: notice == freezed
          ? _value.notice
          : notice // ignore: cast_nullable_to_non_nullable
              as List<BoardItem>,
      safety: safety == freezed
          ? _value.safety
          : safety // ignore: cast_nullable_to_non_nullable
              as List<BoardItem>,
    ));
  }

  @override
  $BoardProgressStatusCopyWith<$Res> get status {
    return $BoardProgressStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }
}

/// @nodoc
abstract class _$BoardCopyWith<$Res> implements $BoardCopyWith<$Res> {
  factory _$BoardCopyWith(_Board value, $Res Function(_Board) then) =
      __$BoardCopyWithImpl<$Res>;
  @override
  $Res call(
      {BoardProgressStatus status,
      List<BoardItem> notice,
      List<BoardItem> safety});

  @override
  $BoardProgressStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$BoardCopyWithImpl<$Res> extends _$BoardCopyWithImpl<$Res>
    implements _$BoardCopyWith<$Res> {
  __$BoardCopyWithImpl(_Board _value, $Res Function(_Board) _then)
      : super(_value, (v) => _then(v as _Board));

  @override
  _Board get _value => super._value as _Board;

  @override
  $Res call({
    Object? status = freezed,
    Object? notice = freezed,
    Object? safety = freezed,
  }) {
    return _then(_Board(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BoardProgressStatus,
      notice: notice == freezed
          ? _value.notice
          : notice // ignore: cast_nullable_to_non_nullable
              as List<BoardItem>,
      safety: safety == freezed
          ? _value.safety
          : safety // ignore: cast_nullable_to_non_nullable
              as List<BoardItem>,
    ));
  }
}

/// @nodoc

class _$_Board extends _Board {
  const _$_Board(
      {required this.status, required this.notice, required this.safety})
      : super._();

  @override
  final BoardProgressStatus status;
  @override
  final List<BoardItem> notice;
  @override
  final List<BoardItem> safety;

  @override
  String toString() {
    return 'Board(status: $status, notice: $notice, safety: $safety)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Board &&
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
  _$BoardCopyWith<_Board> get copyWith =>
      __$BoardCopyWithImpl<_Board>(this, _$identity);
}

abstract class _Board extends Board {
  const factory _Board(
      {required BoardProgressStatus status,
      required List<BoardItem> notice,
      required List<BoardItem> safety}) = _$_Board;
  const _Board._() : super._();

  @override
  BoardProgressStatus get status => throw _privateConstructorUsedError;
  @override
  List<BoardItem> get notice => throw _privateConstructorUsedError;
  @override
  List<BoardItem> get safety => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BoardCopyWith<_Board> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$BoardProgressStatusTearOff {
  const _$BoardProgressStatusTearOff();

  _BoardProgressStatus call(
      {required ProgressStatus building,
      required ProgressStatus line,
      required ProgressStatus forklift}) {
    return _BoardProgressStatus(
      building: building,
      line: line,
      forklift: forklift,
    );
  }
}

/// @nodoc
const $BoardProgressStatus = _$BoardProgressStatusTearOff();

/// @nodoc
mixin _$BoardProgressStatus {
  ProgressStatus get building => throw _privateConstructorUsedError;
  ProgressStatus get line => throw _privateConstructorUsedError;
  ProgressStatus get forklift => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BoardProgressStatusCopyWith<BoardProgressStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardProgressStatusCopyWith<$Res> {
  factory $BoardProgressStatusCopyWith(
          BoardProgressStatus value, $Res Function(BoardProgressStatus) then) =
      _$BoardProgressStatusCopyWithImpl<$Res>;
  $Res call(
      {ProgressStatus building, ProgressStatus line, ProgressStatus forklift});

  $ProgressStatusCopyWith<$Res> get building;
  $ProgressStatusCopyWith<$Res> get line;
  $ProgressStatusCopyWith<$Res> get forklift;
}

/// @nodoc
class _$BoardProgressStatusCopyWithImpl<$Res>
    implements $BoardProgressStatusCopyWith<$Res> {
  _$BoardProgressStatusCopyWithImpl(this._value, this._then);

  final BoardProgressStatus _value;
  // ignore: unused_field
  final $Res Function(BoardProgressStatus) _then;

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
              as ProgressStatus,
      line: line == freezed
          ? _value.line
          : line // ignore: cast_nullable_to_non_nullable
              as ProgressStatus,
      forklift: forklift == freezed
          ? _value.forklift
          : forklift // ignore: cast_nullable_to_non_nullable
              as ProgressStatus,
    ));
  }

  @override
  $ProgressStatusCopyWith<$Res> get building {
    return $ProgressStatusCopyWith<$Res>(_value.building, (value) {
      return _then(_value.copyWith(building: value));
    });
  }

  @override
  $ProgressStatusCopyWith<$Res> get line {
    return $ProgressStatusCopyWith<$Res>(_value.line, (value) {
      return _then(_value.copyWith(line: value));
    });
  }

  @override
  $ProgressStatusCopyWith<$Res> get forklift {
    return $ProgressStatusCopyWith<$Res>(_value.forklift, (value) {
      return _then(_value.copyWith(forklift: value));
    });
  }
}

/// @nodoc
abstract class _$BoardProgressStatusCopyWith<$Res>
    implements $BoardProgressStatusCopyWith<$Res> {
  factory _$BoardProgressStatusCopyWith(_BoardProgressStatus value,
          $Res Function(_BoardProgressStatus) then) =
      __$BoardProgressStatusCopyWithImpl<$Res>;
  @override
  $Res call(
      {ProgressStatus building, ProgressStatus line, ProgressStatus forklift});

  @override
  $ProgressStatusCopyWith<$Res> get building;
  @override
  $ProgressStatusCopyWith<$Res> get line;
  @override
  $ProgressStatusCopyWith<$Res> get forklift;
}

/// @nodoc
class __$BoardProgressStatusCopyWithImpl<$Res>
    extends _$BoardProgressStatusCopyWithImpl<$Res>
    implements _$BoardProgressStatusCopyWith<$Res> {
  __$BoardProgressStatusCopyWithImpl(
      _BoardProgressStatus _value, $Res Function(_BoardProgressStatus) _then)
      : super(_value, (v) => _then(v as _BoardProgressStatus));

  @override
  _BoardProgressStatus get _value => super._value as _BoardProgressStatus;

  @override
  $Res call({
    Object? building = freezed,
    Object? line = freezed,
    Object? forklift = freezed,
  }) {
    return _then(_BoardProgressStatus(
      building: building == freezed
          ? _value.building
          : building // ignore: cast_nullable_to_non_nullable
              as ProgressStatus,
      line: line == freezed
          ? _value.line
          : line // ignore: cast_nullable_to_non_nullable
              as ProgressStatus,
      forklift: forklift == freezed
          ? _value.forklift
          : forklift // ignore: cast_nullable_to_non_nullable
              as ProgressStatus,
    ));
  }
}

/// @nodoc

class _$_BoardProgressStatus extends _BoardProgressStatus {
  const _$_BoardProgressStatus(
      {required this.building, required this.line, required this.forklift})
      : super._();

  @override
  final ProgressStatus building;
  @override
  final ProgressStatus line;
  @override
  final ProgressStatus forklift;

  @override
  String toString() {
    return 'BoardProgressStatus(building: $building, line: $line, forklift: $forklift)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BoardProgressStatus &&
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
  _$BoardProgressStatusCopyWith<_BoardProgressStatus> get copyWith =>
      __$BoardProgressStatusCopyWithImpl<_BoardProgressStatus>(
          this, _$identity);
}

abstract class _BoardProgressStatus extends BoardProgressStatus {
  const factory _BoardProgressStatus(
      {required ProgressStatus building,
      required ProgressStatus line,
      required ProgressStatus forklift}) = _$_BoardProgressStatus;
  const _BoardProgressStatus._() : super._();

  @override
  ProgressStatus get building => throw _privateConstructorUsedError;
  @override
  ProgressStatus get line => throw _privateConstructorUsedError;
  @override
  ProgressStatus get forklift => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BoardProgressStatusCopyWith<_BoardProgressStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$BoardItemTearOff {
  const _$BoardItemTearOff();

  _BoardItem call(
      {required String board,
      required String key,
      required String compCd,
      required String topFixYn,
      required String createdBy,
      required DateTime createdDate,
      required String title,
      required String contents,
      required String updatedBy,
      required DateTime updatedDate,
      required bool isInUse,
      required List<AddedImage> images}) {
    return _BoardItem(
      board: board,
      key: key,
      compCd: compCd,
      topFixYn: topFixYn,
      createdBy: createdBy,
      createdDate: createdDate,
      title: title,
      contents: contents,
      updatedBy: updatedBy,
      updatedDate: updatedDate,
      isInUse: isInUse,
      images: images,
    );
  }
}

/// @nodoc
const $BoardItem = _$BoardItemTearOff();

/// @nodoc
mixin _$BoardItem {
  String get board => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;
  String get compCd => throw _privateConstructorUsedError;
  String get topFixYn => throw _privateConstructorUsedError;
  String get createdBy => throw _privateConstructorUsedError;
  DateTime get createdDate => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get contents => throw _privateConstructorUsedError;
  String get updatedBy => throw _privateConstructorUsedError;
  DateTime get updatedDate => throw _privateConstructorUsedError;
  bool get isInUse => throw _privateConstructorUsedError;
  List<AddedImage> get images => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BoardItemCopyWith<BoardItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardItemCopyWith<$Res> {
  factory $BoardItemCopyWith(BoardItem value, $Res Function(BoardItem) then) =
      _$BoardItemCopyWithImpl<$Res>;
  $Res call(
      {String board,
      String key,
      String compCd,
      String topFixYn,
      String createdBy,
      DateTime createdDate,
      String title,
      String contents,
      String updatedBy,
      DateTime updatedDate,
      bool isInUse,
      List<AddedImage> images});
}

/// @nodoc
class _$BoardItemCopyWithImpl<$Res> implements $BoardItemCopyWith<$Res> {
  _$BoardItemCopyWithImpl(this._value, this._then);

  final BoardItem _value;
  // ignore: unused_field
  final $Res Function(BoardItem) _then;

  @override
  $Res call({
    Object? board = freezed,
    Object? key = freezed,
    Object? compCd = freezed,
    Object? topFixYn = freezed,
    Object? createdBy = freezed,
    Object? createdDate = freezed,
    Object? title = freezed,
    Object? contents = freezed,
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
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      createdDate: createdDate == freezed
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      contents: contents == freezed
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String,
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
              as List<AddedImage>,
    ));
  }
}

/// @nodoc
abstract class _$BoardItemCopyWith<$Res> implements $BoardItemCopyWith<$Res> {
  factory _$BoardItemCopyWith(
          _BoardItem value, $Res Function(_BoardItem) then) =
      __$BoardItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String board,
      String key,
      String compCd,
      String topFixYn,
      String createdBy,
      DateTime createdDate,
      String title,
      String contents,
      String updatedBy,
      DateTime updatedDate,
      bool isInUse,
      List<AddedImage> images});
}

/// @nodoc
class __$BoardItemCopyWithImpl<$Res> extends _$BoardItemCopyWithImpl<$Res>
    implements _$BoardItemCopyWith<$Res> {
  __$BoardItemCopyWithImpl(_BoardItem _value, $Res Function(_BoardItem) _then)
      : super(_value, (v) => _then(v as _BoardItem));

  @override
  _BoardItem get _value => super._value as _BoardItem;

  @override
  $Res call({
    Object? board = freezed,
    Object? key = freezed,
    Object? compCd = freezed,
    Object? topFixYn = freezed,
    Object? createdBy = freezed,
    Object? createdDate = freezed,
    Object? title = freezed,
    Object? contents = freezed,
    Object? updatedBy = freezed,
    Object? updatedDate = freezed,
    Object? isInUse = freezed,
    Object? images = freezed,
  }) {
    return _then(_BoardItem(
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
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      createdDate: createdDate == freezed
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      contents: contents == freezed
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String,
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
              as List<AddedImage>,
    ));
  }
}

/// @nodoc

class _$_BoardItem extends _BoardItem {
  const _$_BoardItem(
      {required this.board,
      required this.key,
      required this.compCd,
      required this.topFixYn,
      required this.createdBy,
      required this.createdDate,
      required this.title,
      required this.contents,
      required this.updatedBy,
      required this.updatedDate,
      required this.isInUse,
      required this.images})
      : super._();

  @override
  final String board;
  @override
  final String key;
  @override
  final String compCd;
  @override
  final String topFixYn;
  @override
  final String createdBy;
  @override
  final DateTime createdDate;
  @override
  final String title;
  @override
  final String contents;
  @override
  final String updatedBy;
  @override
  final DateTime updatedDate;
  @override
  final bool isInUse;
  @override
  final List<AddedImage> images;

  @override
  String toString() {
    return 'BoardItem(board: $board, key: $key, compCd: $compCd, topFixYn: $topFixYn, createdBy: $createdBy, createdDate: $createdDate, title: $title, contents: $contents, updatedBy: $updatedBy, updatedDate: $updatedDate, isInUse: $isInUse, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BoardItem &&
            (identical(other.board, board) ||
                const DeepCollectionEquality().equals(other.board, board)) &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.compCd, compCd) ||
                const DeepCollectionEquality().equals(other.compCd, compCd)) &&
            (identical(other.topFixYn, topFixYn) ||
                const DeepCollectionEquality()
                    .equals(other.topFixYn, topFixYn)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.createdDate, createdDate) ||
                const DeepCollectionEquality()
                    .equals(other.createdDate, createdDate)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.contents, contents) ||
                const DeepCollectionEquality()
                    .equals(other.contents, contents)) &&
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
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(createdDate) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(contents) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(updatedDate) ^
      const DeepCollectionEquality().hash(isInUse) ^
      const DeepCollectionEquality().hash(images);

  @JsonKey(ignore: true)
  @override
  _$BoardItemCopyWith<_BoardItem> get copyWith =>
      __$BoardItemCopyWithImpl<_BoardItem>(this, _$identity);
}

abstract class _BoardItem extends BoardItem {
  const factory _BoardItem(
      {required String board,
      required String key,
      required String compCd,
      required String topFixYn,
      required String createdBy,
      required DateTime createdDate,
      required String title,
      required String contents,
      required String updatedBy,
      required DateTime updatedDate,
      required bool isInUse,
      required List<AddedImage> images}) = _$_BoardItem;
  const _BoardItem._() : super._();

  @override
  String get board => throw _privateConstructorUsedError;
  @override
  String get key => throw _privateConstructorUsedError;
  @override
  String get compCd => throw _privateConstructorUsedError;
  @override
  String get topFixYn => throw _privateConstructorUsedError;
  @override
  String get createdBy => throw _privateConstructorUsedError;
  @override
  DateTime get createdDate => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get contents => throw _privateConstructorUsedError;
  @override
  String get updatedBy => throw _privateConstructorUsedError;
  @override
  DateTime get updatedDate => throw _privateConstructorUsedError;
  @override
  bool get isInUse => throw _privateConstructorUsedError;
  @override
  List<AddedImage> get images => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BoardItemCopyWith<_BoardItem> get copyWith =>
      throw _privateConstructorUsedError;
}
