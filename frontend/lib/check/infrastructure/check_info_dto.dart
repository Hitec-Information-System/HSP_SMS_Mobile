import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/check/domain/check_info.dart';
import 'package:frontend/core/domain/added_image.dart';

part 'check_info_dto.freezed.dart';
part 'check_info_dto.g.dart';

@freezed
class CheckInfoDTO with _$CheckInfoDTO {
  const CheckInfoDTO._();
  const factory CheckInfoDTO({
    @Default(-1) @JsonKey(ignore: true) int lastIndex,
    @JsonKey(name: "header") required CheckHeaderDTO header,
    @JsonKey(name: "intervals") required List<CheckStandardDTO> intervals,
    @JsonKey(name: "sessions") required List<CheckStandardDTO> sessions,
    @JsonKey(name: "details") required List<CheckDetailsDTO> details,
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
        lastIndex: lastIndex,
        header: header.toDomain(),
        intervals: intervals.map((interval) => interval.toDomain()).toList(),
        sessions: sessions.map((session) => session.toDomain()).toList(),
        details: details.map((detail) => detail.toDomain()).toList(),
      );
}

@freezed
class CheckHeaderDTO with _$CheckHeaderDTO {
  const CheckHeaderDTO._();
  const factory CheckHeaderDTO({
    @JsonKey(name: "CHKLIST_NO") required String id,
    @JsonKey(name: "CHK_CHASU") required String session,
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
    @JsonKey(name: "CRT_DT") required String dateCreated,
  }) = _CheckHeaderDTO;

  factory CheckHeaderDTO.fromJson(Map<String, dynamic> json) =>
      _$CheckHeaderDTOFromJson(json);

  CheckHeader toDomain() => CheckHeader(
        id: id,
        session: session,
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
        dateCreated: dateCreated,
      );

  factory CheckHeaderDTO.fromDomain(CheckHeader _) => CheckHeaderDTO(
        id: _.id,
        session: _.session,
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
        dateCreated: _.dateCreated,
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
    @JsonKey(name: "OBJ_GUBUN_SUB") required String objGubunSub,
    @JsonKey(name: "OBJ_GUBUN_SUB_NM") required String objGubunSubNm,
    @JsonKey(name: "D_RMK", defaultValue: "") required String remark,
    @JsonKey(name: "CHK_RESULT", defaultValue: "") required String result,
    @JsonKey(name: "IMGS", defaultValue: [])
        required List<AddedImageCheckDTO> images,
  }) = _CheckDetailsDTO;

  factory CheckDetailsDTO.fromJson(Map<String, dynamic> json) =>
      _$CheckDetailsDTOFromJson(json);

  CheckDetails toDomain() => CheckDetails(
        chkItemCd: chkItemCd,
        chkItemNm: chkItemNm,
        intervalChk: intervalChk,
        methodChk: methodChk,
        objGubunSub: objGubunSub,
        objGubunSubNm: objGubunSubNm,
        remark: remark,
        result: result,
        images: images.map((e) => e.toDomain()).toList(),
      );

  factory CheckDetailsDTO.fromDomain(CheckDetails _) => CheckDetailsDTO(
        chkItemCd: _.chkItemCd,
        chkItemNm: _.chkItemNm,
        intervalChk: _.intervalChk,
        methodChk: _.methodChk,
        objGubunSub: _.objGubunSub,
        objGubunSubNm: _.objGubunSubNm,
        result: _.result,
        remark: _.remark,
        images: _.images
            .map((checkImage) => AddedImageCheckDTO.fromDomain(checkImage))
            .toList(),
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

@freezed
class AddedImageCheckDTO with _$AddedImageCheckDTO {
  const AddedImageCheckDTO._();
  const factory AddedImageCheckDTO({
    @JsonKey(name: "KEY", defaultValue: "")
        required String key, // 공통 사용하는 값의 형식을 맞춰주기 위해 넣은 것임
    @JsonKey(name: "NO", defaultValue: "")
        required String no, // 공통 사용하는 값의 형식을 맞춰주기 위해 넣은 것임
    @JsonKey(name: "CHK_IMG_URL", defaultValue: "") required String name,
    @JsonKey(name: "CHK_IMG_URL_FULL", defaultValue: "") required String url,
    @JsonKey(name: "RMK", defaultValue: "") required String remark,
    @JsonKey(defaultValue: true) required bool isRemote,
  }) = _AddedImageCheckDTO;

  factory AddedImageCheckDTO.fromJson(Map<String, dynamic> json) =>
      _$AddedImageCheckDTOFromJson(json);

  factory AddedImageCheckDTO.fromDomain(AddedImage _) => AddedImageCheckDTO(
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
