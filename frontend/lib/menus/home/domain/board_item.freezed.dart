// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'board_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BoardItemsListTearOff {
  const _$BoardItemsListTearOff();

  _BoardItemsList call({required List<BoardItem> items}) {
    return _BoardItemsList(
      items: items,
    );
  }
}

/// @nodoc
const $BoardItemsList = _$BoardItemsListTearOff();

/// @nodoc
mixin _$BoardItemsList {
  List<BoardItem> get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BoardItemsListCopyWith<BoardItemsList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardItemsListCopyWith<$Res> {
  factory $BoardItemsListCopyWith(
          BoardItemsList value, $Res Function(BoardItemsList) then) =
      _$BoardItemsListCopyWithImpl<$Res>;
  $Res call({List<BoardItem> items});
}

/// @nodoc
class _$BoardItemsListCopyWithImpl<$Res>
    implements $BoardItemsListCopyWith<$Res> {
  _$BoardItemsListCopyWithImpl(this._value, this._then);

  final BoardItemsList _value;
  // ignore: unused_field
  final $Res Function(BoardItemsList) _then;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<BoardItem>,
    ));
  }
}

/// @nodoc
abstract class _$BoardItemsListCopyWith<$Res>
    implements $BoardItemsListCopyWith<$Res> {
  factory _$BoardItemsListCopyWith(
          _BoardItemsList value, $Res Function(_BoardItemsList) then) =
      __$BoardItemsListCopyWithImpl<$Res>;
  @override
  $Res call({List<BoardItem> items});
}

/// @nodoc
class __$BoardItemsListCopyWithImpl<$Res>
    extends _$BoardItemsListCopyWithImpl<$Res>
    implements _$BoardItemsListCopyWith<$Res> {
  __$BoardItemsListCopyWithImpl(
      _BoardItemsList _value, $Res Function(_BoardItemsList) _then)
      : super(_value, (v) => _then(v as _BoardItemsList));

  @override
  _BoardItemsList get _value => super._value as _BoardItemsList;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_BoardItemsList(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<BoardItem>,
    ));
  }
}

/// @nodoc

class _$_BoardItemsList extends _BoardItemsList {
  const _$_BoardItemsList({required this.items}) : super._();

  @override
  final List<BoardItem> items;

  @override
  String toString() {
    return 'BoardItemsList(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BoardItemsList &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(items);

  @JsonKey(ignore: true)
  @override
  _$BoardItemsListCopyWith<_BoardItemsList> get copyWith =>
      __$BoardItemsListCopyWithImpl<_BoardItemsList>(this, _$identity);
}

abstract class _BoardItemsList extends BoardItemsList {
  const factory _BoardItemsList({required List<BoardItem> items}) =
      _$_BoardItemsList;
  const _BoardItemsList._() : super._();

  @override
  List<BoardItem> get items => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BoardItemsListCopyWith<_BoardItemsList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$BoardItemTearOff {
  const _$BoardItemTearOff();

  _BoardItem call(
      {required String id,
      required String compCd,
      required int rowNo,
      required String topFixYn,
      required String createdBy,
      required DateTime createdDate,
      required String title,
      required String contents,
      required String updatedBy,
      required DateTime updatedDate,
      required bool isInUse}) {
    return _BoardItem(
      id: id,
      compCd: compCd,
      rowNo: rowNo,
      topFixYn: topFixYn,
      createdBy: createdBy,
      createdDate: createdDate,
      title: title,
      contents: contents,
      updatedBy: updatedBy,
      updatedDate: updatedDate,
      isInUse: isInUse,
    );
  }
}

/// @nodoc
const $BoardItem = _$BoardItemTearOff();

/// @nodoc
mixin _$BoardItem {
  String get id => throw _privateConstructorUsedError;
  String get compCd => throw _privateConstructorUsedError;
  int get rowNo => throw _privateConstructorUsedError;
  String get topFixYn => throw _privateConstructorUsedError;
  String get createdBy => throw _privateConstructorUsedError;
  DateTime get createdDate => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get contents => throw _privateConstructorUsedError;
  String get updatedBy => throw _privateConstructorUsedError;
  DateTime get updatedDate => throw _privateConstructorUsedError;
  bool get isInUse => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BoardItemCopyWith<BoardItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardItemCopyWith<$Res> {
  factory $BoardItemCopyWith(BoardItem value, $Res Function(BoardItem) then) =
      _$BoardItemCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String compCd,
      int rowNo,
      String topFixYn,
      String createdBy,
      DateTime createdDate,
      String title,
      String contents,
      String updatedBy,
      DateTime updatedDate,
      bool isInUse});
}

/// @nodoc
class _$BoardItemCopyWithImpl<$Res> implements $BoardItemCopyWith<$Res> {
  _$BoardItemCopyWithImpl(this._value, this._then);

  final BoardItem _value;
  // ignore: unused_field
  final $Res Function(BoardItem) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? compCd = freezed,
    Object? rowNo = freezed,
    Object? topFixYn = freezed,
    Object? createdBy = freezed,
    Object? createdDate = freezed,
    Object? title = freezed,
    Object? contents = freezed,
    Object? updatedBy = freezed,
    Object? updatedDate = freezed,
    Object? isInUse = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      compCd: compCd == freezed
          ? _value.compCd
          : compCd // ignore: cast_nullable_to_non_nullable
              as String,
      rowNo: rowNo == freezed
          ? _value.rowNo
          : rowNo // ignore: cast_nullable_to_non_nullable
              as int,
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
      {String id,
      String compCd,
      int rowNo,
      String topFixYn,
      String createdBy,
      DateTime createdDate,
      String title,
      String contents,
      String updatedBy,
      DateTime updatedDate,
      bool isInUse});
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
    Object? id = freezed,
    Object? compCd = freezed,
    Object? rowNo = freezed,
    Object? topFixYn = freezed,
    Object? createdBy = freezed,
    Object? createdDate = freezed,
    Object? title = freezed,
    Object? contents = freezed,
    Object? updatedBy = freezed,
    Object? updatedDate = freezed,
    Object? isInUse = freezed,
  }) {
    return _then(_BoardItem(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      compCd: compCd == freezed
          ? _value.compCd
          : compCd // ignore: cast_nullable_to_non_nullable
              as String,
      rowNo: rowNo == freezed
          ? _value.rowNo
          : rowNo // ignore: cast_nullable_to_non_nullable
              as int,
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
    ));
  }
}

/// @nodoc

class _$_BoardItem extends _BoardItem {
  const _$_BoardItem(
      {required this.id,
      required this.compCd,
      required this.rowNo,
      required this.topFixYn,
      required this.createdBy,
      required this.createdDate,
      required this.title,
      required this.contents,
      required this.updatedBy,
      required this.updatedDate,
      required this.isInUse})
      : super._();

  @override
  final String id;
  @override
  final String compCd;
  @override
  final int rowNo;
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
  String toString() {
    return 'BoardItem(id: $id, compCd: $compCd, rowNo: $rowNo, topFixYn: $topFixYn, createdBy: $createdBy, createdDate: $createdDate, title: $title, contents: $contents, updatedBy: $updatedBy, updatedDate: $updatedDate, isInUse: $isInUse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BoardItem &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.compCd, compCd) ||
                const DeepCollectionEquality().equals(other.compCd, compCd)) &&
            (identical(other.rowNo, rowNo) ||
                const DeepCollectionEquality().equals(other.rowNo, rowNo)) &&
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
                const DeepCollectionEquality().equals(other.isInUse, isInUse)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(compCd) ^
      const DeepCollectionEquality().hash(rowNo) ^
      const DeepCollectionEquality().hash(topFixYn) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(createdDate) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(contents) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      const DeepCollectionEquality().hash(updatedDate) ^
      const DeepCollectionEquality().hash(isInUse);

  @JsonKey(ignore: true)
  @override
  _$BoardItemCopyWith<_BoardItem> get copyWith =>
      __$BoardItemCopyWithImpl<_BoardItem>(this, _$identity);
}

abstract class _BoardItem extends BoardItem {
  const factory _BoardItem(
      {required String id,
      required String compCd,
      required int rowNo,
      required String topFixYn,
      required String createdBy,
      required DateTime createdDate,
      required String title,
      required String contents,
      required String updatedBy,
      required DateTime updatedDate,
      required bool isInUse}) = _$_BoardItem;
  const _BoardItem._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get compCd => throw _privateConstructorUsedError;
  @override
  int get rowNo => throw _privateConstructorUsedError;
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
  @JsonKey(ignore: true)
  _$BoardItemCopyWith<_BoardItem> get copyWith =>
      throw _privateConstructorUsedError;
}
