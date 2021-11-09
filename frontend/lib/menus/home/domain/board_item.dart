import 'package:freezed_annotation/freezed_annotation.dart';

part 'board_item.freezed.dart';

@freezed
class BoardItem with _$BoardItem {
  const BoardItem._();
  const factory BoardItem({
    required String board,
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
  }) = _BoardItem;
}
