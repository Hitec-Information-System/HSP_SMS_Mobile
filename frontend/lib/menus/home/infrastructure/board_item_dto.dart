import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/menus/home/domain/board_item.dart';
import 'package:intl/intl.dart';

part 'board_item_dto.freezed.dart';
part 'board_item_dto.g.dart';

int _rowNoStingToInt(String rowNo) {
  return int.tryParse(rowNo) ?? -1;
}

DateTime _dateStringsToDateTime(String dateString) {
  return DateFormat("yyyy/MM/dd HH:mm:ss").parse(dateString);
}

bool _useYnToBool(String useYnString) {
  if (useYnString == "Y") {
    return true;
  }
  return false;
}

@freezed
class BoardItemsListDTO with _$BoardItemsListDTO {
  const BoardItemsListDTO._();
  const factory BoardItemsListDTO({
    required List<BoardItemDTO> items,
  }) = _BoardItemsListDTO;

  factory BoardItemsListDTO.fromJson(Map<String, dynamic> json) =>
      _$BoardItemsListDTOFromJson(json);

  factory BoardItemsListDTO.fromDomain(BoardItemsList _) => BoardItemsListDTO(
        items: _.items.map((e) => BoardItemDTO.fromDomain(e)).toList(),
      );

  BoardItemsList toDomain() {
    return BoardItemsList(
      items: items.map((e) => e.toDomain()).toList(),
    );
  }
}

@freezed
class BoardItemDTO with _$BoardItemDTO {
  const BoardItemDTO._();
  const factory BoardItemDTO({
    @JsonKey(name: "B_PK") required String id,
    @JsonKey(name: "COMP_CD") required String compCd,
    @JsonKey(name: "ROW_NO", fromJson: _rowNoStingToInt) required int rowNo,
    @JsonKey(name: "TOP_FIX_YN") required String topFixYn,
    @JsonKey(name: "TITLE") required String title,
    @JsonKey(name: "TXT") required String contents,
    @JsonKey(name: "CRT_BY") required String createdBy,
    @JsonKey(name: "CRT_DT", fromJson: _dateStringsToDateTime)
        required DateTime createdDate,
    @JsonKey(name: "UDT_BY") required String updatedBy,
    @JsonKey(name: "UDT_DT", fromJson: _dateStringsToDateTime)
        required DateTime updatedDate,
    @JsonKey(name: "USE_YN", fromJson: _useYnToBool) required bool isInUse,
  }) = _BoardItemDTO;

  factory BoardItemDTO.fromJson(Map<String, dynamic> json) =>
      _$BoardItemDTOFromJson(json);

  factory BoardItemDTO.fromDomain(BoardItem _) => BoardItemDTO(
        id: _.id,
        compCd: _.compCd,
        rowNo: _.rowNo,
        topFixYn: _.topFixYn,
        title: _.title,
        contents: _.contents,
        createdBy: _.createdBy,
        createdDate: _.createdDate,
        updatedBy: _.updatedBy,
        updatedDate: _.updatedDate,
        isInUse: _.isInUse,
      );

  BoardItem toDomain() {
    return BoardItem(
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
