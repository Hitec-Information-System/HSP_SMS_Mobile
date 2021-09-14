import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'check_info.freezed.dart';

@freezed
class CheckInfo with _$CheckInfo {
  const CheckInfo._();
  const factory CheckInfo({
    required CheckHeader header,
    required List<CheckStandard> intervals,
    required List<CheckStandard> sessions,
    required List<CheckDetails> details,
  }) = _CheckInfo;

  factory CheckInfo.empty() => const CheckInfo(
        header: CheckHeader(
          id: "",
          chasu: "",
          interval: "",
          chkYmd: "",
          compCd: "",
          objCd: "",
          objNm: "",
          objGubun: "",
          objGubunNm: "",
          plantCd: "",
          plantNm: "",
          userId: "",
          userNm: "",
        ),
        intervals: [],
        sessions: [],
        details: [],
      );
}

@freezed
class CheckHeader with _$CheckHeader {
  const CheckHeader._();
  const factory CheckHeader({
    required String id,
    required String chasu,
    required String interval,
    required String chkYmd,
    required String compCd,
    required String objCd,
    required String objNm,
    required String objGubun,
    required String objGubunNm,
    required String plantCd,
    required String plantNm,
    required String userId,
    required String userNm,
  }) = _CheckHeader;
}

@freezed
class CheckDetails with _$CheckDetails {
  const CheckDetails._();
  const factory CheckDetails({
    required String chkItemCd,
    required String chkItemNm,
    required String intervalChk,
    required String methodChk,
    // required String objGubunSub,
    // required String objGubunSubNm,
    required String remark,
    required String result,
    required List<XFile> images,
  }) = _CheckDetails;
}

@freezed
class CheckStandard with _$CheckStandard {
  const CheckStandard._();
  const factory CheckStandard({
    required String id,
    required String name,
  }) = _CheckStandard;
}
