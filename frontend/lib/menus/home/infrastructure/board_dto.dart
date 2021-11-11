import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/core/domain/added_image.dart';
import 'package:frontend/core/infrastructure/utility.dart';
import 'package:frontend/menus/core/infrastructure/progress_status_dto.dart';
import 'package:frontend/menus/home/domain/board.dart';

part 'board_dto.freezed.dart';
part 'board_dto.g.dart';

bool _useYnToBool(String useYnString) {
  if (useYnString == "Y") {
    return true;
  }
  return false;
}

@freezed
class BoardDTO with _$BoardDTO {
  const BoardDTO._();
  const factory BoardDTO({
    @JsonKey(name: "STATUS") required BoardProgressStatusDTO status,
    @JsonKey(name: "NOTICE") required List<BoardItemDTO> notice,
    @JsonKey(name: "SAFETY_OFFER") required List<BoardItemDTO> safety,
  }) = _BoardDTO;

  factory BoardDTO.fromJson(Map<String, dynamic> json) =>
      _$BoardDTOFromJson(json);

  Board toDomain() {
    return Board(
      status: status.toDomain(),
      notice: notice.map((item) => item.toDomain()).toList(),
      safety: safety.map((item) => item.toDomain()).toList(),
    );
  }
}

@freezed
class BoardProgressStatusDTO with _$BoardProgressStatusDTO {
  const BoardProgressStatusDTO._();
  const factory BoardProgressStatusDTO({
    @JsonKey(name: "BUILDING") required ProgressStatusDTO building,
    @JsonKey(name: "LINE") required ProgressStatusDTO line,
    @JsonKey(name: "FORKLIFT") required ProgressStatusDTO forklift,
  }) = _BoardProgressStatusDTO;

  factory BoardProgressStatusDTO.fromJson(Map<String, dynamic> json) =>
      _$BoardProgressStatusDTOFromJson(json);

  factory BoardProgressStatusDTO.fromDomain(BoardProgressStatus _) =>
      BoardProgressStatusDTO(
        building: ProgressStatusDTO.fromDomain(_.building),
        line: ProgressStatusDTO.fromDomain(_.line),
        forklift: ProgressStatusDTO.fromDomain(_.forklift),
      );

  BoardProgressStatus toDomain() {
    return BoardProgressStatus(
      building: building.toDomain(),
      line: line.toDomain(),
      forklift: forklift.toDomain(),
    );
  }
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
    @JsonKey(name: "CRT_DT", fromJson: dateStringsToDateTime)
        required DateTime createdDate,
    @JsonKey(name: "UDT_BY") required String updatedBy,
    @JsonKey(name: "UDT_DT", fromJson: dateStringsToDateTime)
        required DateTime updatedDate,
    @JsonKey(name: "USE_YN", fromJson: _useYnToBool) required bool isInUse,
    @JsonKey(name: "IMGS", defaultValue: [])
        required List<AddedImageBoardDTO> images,
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
      images: _.images
          .map(
            (image) => AddedImageBoardDTO.fromDomain(image),
          )
          .toList());

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
        images: images
            .map(
              (dto) => dto.toDomain(),
            )
            .toList());
  }
}

@freezed
class AddedImageBoardDTO with _$AddedImageBoardDTO {
  const AddedImageBoardDTO._();
  const factory AddedImageBoardDTO({
    @JsonKey(name: "B_PK", defaultValue: "") required String key,
    @JsonKey(name: "ATT_NO", defaultValue: "") required String no,
    @JsonKey(name: "NAME", defaultValue: "")
        required String name, // 공통 사용하는 값의 형식을 맞춰주기 위해 넣은 것임
    @JsonKey(name: "CHK_IMG_URL_FULL", defaultValue: "") required String url,
    @JsonKey(name: "RMK", defaultValue: "") required String remark,
    @JsonKey(defaultValue: true) required bool isRemote,
  }) = _AddedImageBoardDTO;

  factory AddedImageBoardDTO.fromJson(Map<String, dynamic> json) =>
      _$AddedImageBoardDTOFromJson(json);

  factory AddedImageBoardDTO.fromDomain(AddedImage _) => AddedImageBoardDTO(
        key: _.key,
        no: _.no,
        name: _.name,
        url: _.url,
        remark: _.remark,
        isRemote: _.isRemote,
      );

  AddedImage toDomain() {
    return AddedImage(
      key: key,
      no: no,
      name: name,
      url: url,
      remark: remark,
      isRemote: isRemote,
    );
  }
}
