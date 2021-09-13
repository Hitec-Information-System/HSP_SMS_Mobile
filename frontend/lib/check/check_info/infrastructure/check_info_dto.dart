import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/check/check_info/domain/check_info.dart';
import 'package:image_picker/image_picker.dart';

part 'check_info_dto.freezed.dart';
part 'check_info_dto.g.dart';

@freezed
class CheckInfoDTO with _$CheckInfoDTO {
  const CheckInfoDTO._();
  const factory CheckInfoDTO({
    @JsonKey(name: "header") required CheckHeaderDTO header,
    @JsonKey(name: "intervals") required List<CheckStandardDTO> intervals,
    @JsonKey(name: "sessions") required List<CheckStandardDTO> sessions,
    @JsonKey(name: "details") required List<CheckDetailsDTO> details,
    @Default([]) @JsonKey(ignore: true) List<String?> checkResult,
  }) = _CheckInfoDTO;

  factory CheckInfoDTO.fromJson(Map<String, dynamic> json) =>
      _$CheckInfoDTOFromJson(json);

  factory CheckInfoDTO.fromDomain(CheckInfo _) => CheckInfoDTO(
        header: CheckHeaderDTO.fromDomain(_.header),
        intervals: _.intervals
            .map((interval) => CheckStandardDTO.fromDomain(interval))
            .toList(),
        sessions: _.sessions
            .map((session) => CheckStandardDTO.fromDomain(session))
            .toList(),
        details: _.details
            .map((detail) => CheckDetailsDTO.fromDomain(detail))
            .toList(),
      );

  CheckInfo toDomain() => CheckInfo(
        header: header.toDomain(),
        intervals: intervals.map((interval) => interval.toDomain()).toList(),
        sessions: sessions.map((session) => session.toDomain()).toList(),
        details: details.map((detail) => detail.toDomain()).toList(),
        checkResult: checkResult,
      );
}

@freezed
class CheckHeaderDTO with _$CheckHeaderDTO {
  const CheckHeaderDTO._();
  const factory CheckHeaderDTO({
    @JsonKey(name: "CHKLIST_NO") required String id,
    @JsonKey(name: "CHK_CHASU") required String chasu,
    @JsonKey(name: "CHK_INTERVAL") required String interval,
    @JsonKey(name: "CHK_YMD") required String chkYmd,
    @JsonKey(name: "COMP_CD") required String compCd,
    @JsonKey(name: "OBJ_CD") required String objCd,
    @JsonKey(name: "OBJ_NM") required String objNm,
    @JsonKey(name: "OBJ_GUBUN") required String objGubun,
    @JsonKey(name: "OBJ_GUBUN_NM") required String objGubunNm,
    @JsonKey(name: "PLANT_CD") required String plantCd,
    @JsonKey(name: "PLANT_NM") required String plantNm,
    @JsonKey(name: "CHK_USER_ID") required String userId,
    @JsonKey(name: "CHK_USER_NM") required String userNm,
  }) = _CheckHeaderDTO;

  factory CheckHeaderDTO.fromJson(Map<String, dynamic> json) =>
      _$CheckHeaderDTOFromJson(json);

  CheckHeader toDomain() => CheckHeader(
        id: id,
        chasu: chasu,
        interval: interval,
        chkYmd: chkYmd,
        compCd: compCd,
        objCd: objCd,
        objNm: objNm,
        objGubun: objGubun,
        objGubunNm: objGubunNm,
        plantCd: plantCd,
        plantNm: plantNm,
        userId: userId,
        userNm: userNm,
      );

  factory CheckHeaderDTO.fromDomain(CheckHeader _) => CheckHeaderDTO(
        id: _.id,
        chasu: _.chasu,
        interval: _.interval,
        chkYmd: _.chkYmd,
        compCd: _.compCd,
        objCd: _.objCd,
        objNm: _.objNm,
        objGubun: _.objGubun,
        objGubunNm: _.objGubunNm,
        plantCd: _.plantCd,
        plantNm: _.plantNm,
        userId: _.userId,
        userNm: _.userNm,
      );
}

@freezed
class CheckDetailsDTO with _$CheckDetailsDTO {
  const CheckDetailsDTO._();
  const factory CheckDetailsDTO({
    @JsonKey(name: "CHK_ITEM_CD") required String chkItemCd,
    @JsonKey(name: "CHK_ITEM_NM") required String chkItemNm,
    @JsonKey(name: "INTERVAL_CHECK") required String intervalChk,
    @JsonKey(name: "METHOD_CHECK") required String methodChk,
    // @JsonKey(name: "OBJ_GUBUN_SUB") required String objGubunSub,
    // @JsonKey(name: "OBJ_GUBUN_SUB_NM") required String objGubunSubNm,
    @Default("") @JsonKey(ignore: true) String remark,
    @Default([]) @JsonKey(ignore: true) List<XFile> images,
  }) = _CheckDetailsDTO;

  factory CheckDetailsDTO.fromJson(Map<String, dynamic> json) =>
      _$CheckDetailsDTOFromJson(json);

  CheckDetails toDomain() => CheckDetails(
        chkItemCd: chkItemCd,
        chkItemNm: chkItemNm,
        intervalChk: intervalChk,
        methodChk: methodChk,
        // objGubunSub: objGubunSub,
        // objGubunSubNm: objGubunSubNm,
        remark: remark,
        images: images,
      );

  factory CheckDetailsDTO.fromDomain(CheckDetails _) => CheckDetailsDTO(
        chkItemCd: _.chkItemCd,
        chkItemNm: _.chkItemNm,
        intervalChk: _.intervalChk,
        methodChk: _.methodChk,
        // objGubunSub: _.objGubunSub,
        // objGubunSubNm: _.objGubunSubNm,
        remark: _.remark,
        images: _.images,
      );
}

@freezed
class CheckStandardDTO with _$CheckStandardDTO {
  const CheckStandardDTO._();
  const factory CheckStandardDTO({
    @JsonKey(name: "GUBUN", defaultValue: "") required dynamic id,
    @JsonKey(name: "GUBUN_NM", defaultValue: "") required dynamic name,
  }) = _CheckStandardDTO;

  factory CheckStandardDTO.fromJson(Map<String, dynamic> json) =>
      _$CheckStandardDTOFromJson(json);

  factory CheckStandardDTO.fromDomain(CheckStandard _) => CheckStandardDTO(
        id: _.id,
        name: _.name,
      );

  CheckStandard toDomain() {
    return CheckStandard(
      id: id.toString(),
      name: name.toString(),
    );
  }
}
