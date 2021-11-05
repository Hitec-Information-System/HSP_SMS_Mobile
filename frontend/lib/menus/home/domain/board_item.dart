import 'package:freezed_annotation/freezed_annotation.dart';

part 'board_item.freezed.dart';

@freezed
class BoardItemsList with _$BoardItemsList {
  const BoardItemsList._();
  const factory BoardItemsList({
    required List<BoardItem> items,
  }) = _BoardItemsList;
}

@freezed
class BoardItem with _$BoardItem {
  const BoardItem._();
  const factory BoardItem({
    required String id,
    required String compCd,
    required int rowNo,
    required String topFixYn,
    required String createdBy,
    required DateTime createdDate,
    required String title,
    required String contents,
    required String updatedBy,
    required DateTime updatedDate,
    required bool isInUse,
  }) = _BoardItem;
}
