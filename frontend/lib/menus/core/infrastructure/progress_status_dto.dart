import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/core/infrastructure/utility.dart';
import 'package:frontend/menus/core/domain/progress_status.dart';

part 'progress_status_dto.freezed.dart';
part 'progress_status_dto.g.dart';

@freezed
class ProgressStatusDTO with _$ProgressStatusDTO {
  const ProgressStatusDTO._();
  const factory ProgressStatusDTO({
    @JsonKey(name: "CHK_AFTER_CNT", fromJson: stringToInt)
        required int completedCount,
    @JsonKey(name: "CHK_BEFORE_CNT", fromJson: stringToInt)
        required int notCompletedCount,
    @JsonKey(name: "CHK_CHASU") required String session,
    @JsonKey(name: "CHK_CHASU_NM") required String sessionName,
    @JsonKey(name: "CHK_TOT_CNT", fromJson: stringToInt)
        required int totalCount,
    @JsonKey(name: "COMP_CD") required String companyCd,
    @JsonKey(name: "OBJ_GUBUN") required String objCd,
  }) = _ProgressStatusDTO;

  factory ProgressStatusDTO.fromJson(Map<String, dynamic> json) =>
      _$ProgressStatusDTOFromJson(json);

  factory ProgressStatusDTO.fromDomain(ProgressStatus _) => ProgressStatusDTO(
        completedCount: _.completedCount,
        notCompletedCount: _.notCompletedCount,
        session: _.session,
        sessionName: _.sessionName,
        totalCount: _.totalCount,
        companyCd: _.companyCd,
        objCd: _.objCd,
      );

  ProgressStatus toDomain() => ProgressStatus(
        completedCount: completedCount,
        notCompletedCount: notCompletedCount,
        session: session,
        sessionName: sessionName,
        totalCount: totalCount,
        companyCd: companyCd,
        objCd: objCd,
      );
}
