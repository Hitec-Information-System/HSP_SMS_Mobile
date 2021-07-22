import 'package:freezed_annotation/freezed_annotation.dart';

part 'tag.freezed.dart';

@freezed
class Tag with _$Tag {
  const Tag._();
  const factory Tag({
    required String id,
    Map? additionalData,
  }) = _Tag;
}
