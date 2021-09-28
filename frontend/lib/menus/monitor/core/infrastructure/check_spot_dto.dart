import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/menus/monitor/core/domain/check_spot.dart';

part 'check_spot_dto.freezed.dart';
part 'check_spot_dto.g.dart';

@freezed
class CheckSpotDTO with _$CheckSpotDTO {
  const CheckSpotDTO._();
  const factory CheckSpotDTO({
    @JsonKey(name: "OBJ_CD", defaultValue: "") required String objCd,
    @JsonKey(name: "OBJ_NM", defaultValue: "") required String objNm,
    @JsonKey(name: "OBJ_GUBUN", defaultValue: "") required String objFlag,
    @JsonKey(name: "OBJ_GUBUN_SUB", defaultValue: "")
        required String objSubFlag,
    @JsonKey(name: "OBJ_GUBUN_SUB_NM", defaultValue: "")
        required String objSubFlagNm,
    required List<CheckedItemDTO> checkedList,
  }) = _CheckSpotDTO;

  factory CheckSpotDTO.fromJson(Map<String, dynamic> json) =>
      _$CheckSpotDTOFromJson(json);

  factory CheckSpotDTO.fromDomain(CheckSpot _) => CheckSpotDTO(
        objCd: _.objCd,
        objNm: _.objNm,
        objFlag: _.objFlag,
        objSubFlag: _.objSubFlag,
        objSubFlagNm: _.objSubFlagNm,
        checkedList: _.checkedList
            .map((item) => CheckedItemDTO.fromDomain(item))
            .toList(),
      );

  CheckSpot toDomain() => CheckSpot(
        objCd: objCd,
        objNm: objNm,
        objFlag: objFlag,
        objSubFlag: objSubFlag,
        objSubFlagNm: objSubFlagNm,
        checkedList: checkedList.map((e) => e.toDomain()).toList(),
      );
}

@freezed
class CheckedItemDTO with _$CheckedItemDTO {
  const CheckedItemDTO._();
  const factory CheckedItemDTO({
    @JsonKey(name: "CHKLIST_NO", defaultValue: "") required String id,
    @JsonKey(name: "CHK_CHASU", defaultValue: "") required dynamic session,
    @JsonKey(name: "CHK_USER_ID", defaultValue: "") required String userId,
    @JsonKey(name: "CHK_USER_NM", defaultValue: "") required String userNm,
    @JsonKey(name: "CRT_DT_DISP", defaultValue: "") required String checkedTime,
  }) = _CheckedItemDTO;

  factory CheckedItemDTO.fromJson(Map<String, dynamic> json) =>
      _$CheckedItemDTOFromJson(json);

  factory CheckedItemDTO.fromDomain(CheckedItem _) => CheckedItemDTO(
        id: _.id,
        session: _.session,
        userId: _.userId,
        userNm: _.userNm,
        checkedTime: _.checkedTime,
      );

  CheckedItem toDomain() => CheckedItem(
        id: id,
        session: session.toString(),
        userId: userId,
        userNm: userNm,
        checkedTime: checkedTime,
      );
}
