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
