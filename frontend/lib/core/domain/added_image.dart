import 'package:freezed_annotation/freezed_annotation.dart';

part 'added_image.freezed.dart';

// 첨부 이미지 공통화
@freezed
class AddedImage with _$AddedImage {
  const AddedImage._();
  const factory AddedImage({
    required String name,
    required String url,
    required String remark,
    required bool isRemote,
  }) = _AddedImage;
}
