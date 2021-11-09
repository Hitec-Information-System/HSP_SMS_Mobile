import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/menus/home/domain/board_item.dart';

part 'board_item_dto.freezed.dart';
part 'board_item_dto.g.dart';

DateTime _dateStringsToDateTime(String dateString) {
  return DateTime.parse(dateString);
}

bool _useYnToBool(String useYnString) {
  if (useYnString == "Y") {
    return true;
  }
  return false;
}

@freezed
class BoardItemDTO with _$BoardItemDTO {
  const BoardItemDTO._();
  const factory BoardItemDTO({
    @JsonKey(name: "BOARD_ID") required String board,
    @JsonKey(name: "B_PK") required String key,
    @JsonKey(name: "COMP_CD") required String compCd,
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
        board: _.board,
        key: _.key,
        compCd: _.compCd,
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
    );
  }
}
