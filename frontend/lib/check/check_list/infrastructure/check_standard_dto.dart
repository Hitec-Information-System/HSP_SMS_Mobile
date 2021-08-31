import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/check/check_list/domain/check_standard.dart';

part 'check_standard_dto.freezed.dart';
part 'check_standard_dto.g.dart';

@freezed
class CheckStandardDTO with _$CheckStandardDTO {
  const CheckStandardDTO._();
  const factory CheckStandardDTO({
    @JsonKey(name: "intervals") required List<CheckIntervalDTO> intervals,
    @JsonKey(name: "sessions") required List<CheckSessionDTO> sessions,
  }) = _CheckStandardDTO;

  factory CheckStandardDTO.fromJson(Map<String, dynamic> json) =>
      _$CheckStandardDTOFromJson(json);

  CheckStandard toDomain() {
    return CheckStandard(
      intervals: intervals.map((interval) => interval.toDomain()).toList(),
      sessions: sessions.map((session) => session.toDomain()).toList(),
    );
  }
}

@freezed
class CheckIntervalDTO with _$CheckIntervalDTO {
  const CheckIntervalDTO._();
  const factory CheckIntervalDTO({
    @JsonKey(name: "GUBUN", defaultValue: "") required dynamic id,
    @JsonKey(name: "GUBUN_NM", defaultValue: "") required dynamic name,
  }) = _CheckIntervalDTO;

  factory CheckIntervalDTO.fromJson(Map<String, dynamic> json) =>
      _$CheckIntervalDTOFromJson(json);

  CheckInterval toDomain() {
    return CheckInterval(
      id: id.toString(),
      name: name.toString(),
    );
  }
}

@freezed
class CheckSessionDTO with _$CheckSessionDTO {
  const CheckSessionDTO._();
  const factory CheckSessionDTO({
    @JsonKey(name: "GUBUN", defaultValue: "") required dynamic id,
    @JsonKey(name: "GUBUN_NM", defaultValue: "") required dynamic name,
  }) = _CheckSessionDTO;

  factory CheckSessionDTO.fromJson(Map<String, dynamic> json) =>
      _$CheckSessionDTOFromJson(json);

  CheckSession toDomain() {
    return CheckSession(
      id: id.toString(),
      name: name.toString(),
    );
  }
}

@freezed
class CheckProfileDTO with _$CheckProfileDTO {
  const CheckProfileDTO._();
  const factory CheckProfileDTO({
    @JsonKey(name: "GUBUN") required String spotId,
    @JsonKey(name: "GUBUN_NM") required String spotNm,
    @JsonKey(defaultValue: "") required String userId,
    @JsonKey(defaultValue: "") required String userNm,
    @JsonKey(defaultValue: "") required String time,
  }) = _CheckProfileDTO;

  factory CheckProfileDTO.fromJson(Map<String, dynamic> json) =>
      _$CheckProfileDTOFromJson(json);

  factory CheckProfileDTO.fromDomain(CheckProfile _) => CheckProfileDTO(
        spotId: _.spotId,
        spotNm: _.spotNm,
        userId: _.userId,
        userNm: _.userNm,
        time: _.time,
      );

  CheckProfile toDomain() => CheckProfile(
        spotId: spotId,
        spotNm: spotNm,
        userId: userId,
        userNm: userNm,
        time: time,
      );
}
