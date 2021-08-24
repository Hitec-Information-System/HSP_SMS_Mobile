import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'check_details.freezed.dart';

@freezed
class CheckDetails with _$CheckDetails {
  const CheckDetails._();
  const factory CheckDetails({
    required String id,
    required String name,
    required String method,
    required String checkInterval,
    required String remark,
    required List<bool> checkResult,
    required List<XFile> images,
  }) = _CheckDetails;
}
