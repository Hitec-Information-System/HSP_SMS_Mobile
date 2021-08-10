import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_serial.freezed.dart';
part 'check_serial.g.dart';

@freezed
class CheckSerial with _$CheckSerial {
  const CheckSerial._();
  const factory CheckSerial({
    required String id,
    required String location,
    required DateTime lastCheckDate,
  }) = _CheckSerial;

  factory CheckSerial.fromJson(Map<String, dynamic> json) =>
      _$CheckSerialFromJson(json);
}
