import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

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
          session: "",
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
          dateCreated: "",
        ),
        intervals: [],
        sessions: [],
        details: [],
      );

  String get toResultsXml {
    final list = details.map((detail) {
      return detail.toResultXml;
    }).toList();

    list.insert(0, "<NewDataSet>");
    list.insert(list.length, "</NewDataSet>");

    return list.join().replaceAll(" ", "");
  }

  String get toImgsXml {
    final list = details.map((detail) => detail.toImgXml).toList();

    if (list.join() == "") {
      return "";
    }

    list.insert(0, "<NewDataSet>");
    list.insert(list.length, "</NewDataSet>");

    return list.join().replaceAll(" ", "");
  }

  // bool get hasChecksBeenDone {
  //   for (final detail in this) {
  //     if (detail.result == "") {
  //       return false;
  //     }
  //   }
  //   return true;
  // }

  bool hasNormalChecksBeenDone(String normalCd) {
    final normals =
        details.where((detail) => detail.intervalChk == normalCd).toList();
    for (final detail in normals) {
      if (detail.result == "") {
        return false;
      }
    }
    return true;
  }
}

@freezed
class CheckHeader with _$CheckHeader {
  const CheckHeader._();
  const factory CheckHeader({
    required String id,
    required String session,
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
    required String dateCreated,
  }) = _CheckHeader;

  String get toHeaderXml => '''
  <NewDataSet><Table1>
    <CHKLIST_NO>$id</CHKLIST_NO>
    <CHK_YMD>$chkYmd</CHK_YMD>
    <CHK_INTERVAL>$interval</CHK_INTERVAL>
    <CHK_CHASU>$session</CHK_CHASU>
    <OBJ_CD>$objCd</OBJ_CD>
    <OBJ_GUBUN>$objGubun</OBJ_GUBUN>
    <CHK_USER_ID>$userId</CHK_USER_ID>
  </Table1></NewDataSet>
  '''
      .replaceAll(" ", "");

  String get dateFormatted => DateFormat("yyyy-MM-dd HH:mm")
      .format(DateTime.parse(dateCreated).toLocal());
}

@freezed
class CheckDetails with _$CheckDetails {
  const CheckDetails._();
  const factory CheckDetails({
    required String chkItemCd,
    required String chkItemNm,
    required String intervalChk,
    required String methodChk,
    required String objGubunSub,
    required String objGubunSubNm,
    required String remark,
    required String result,
    required List<CheckImage> images,
  }) = _CheckDetails;

  String get toResultXml => '''
  <Table1>
    <CHK_ITEM_CD>$chkItemCd</CHK_ITEM_CD>
    <CHK_RESULT>$result</CHK_RESULT>
    <DFCT_ITEM_CD></DFCT_ITEM_CD>
    <DFCT_RMK></DFCT_RMK>
    <RMK>$remark</RMK>
  </Table1>
  '''
      .replaceAll(" ", "");

  String get toImgXml {
    if (images.isEmpty) {
      return "";
    }

    return images
        .mapIndexed(
          (index, element) => '''
    <Table1>
      <CHK_ITEM_CD>$chkItemCd</CHK_ITEM_CD>
      <CHK_IMG_NO>${index + 1}</CHK_IMG_NO>
      <CHK_IMG_URL>${images[index].name}</CHK_IMG_URL>
      <RMK></RMK>
    </Table1>
  '''
              .replaceAll(" ", ""),
        )
        .join();
  }
}

@freezed
class CheckStandard with _$CheckStandard {
  const CheckStandard._();
  const factory CheckStandard({
    required String id,
    required String name,
  }) = _CheckStandard;
}

@freezed
class CheckImage with _$CheckImage {
  const CheckImage._();
  const factory CheckImage({
    required String name,
    required String url,
    required String remark,
    required bool isRemote,
  }) = _CheckImage;
}
