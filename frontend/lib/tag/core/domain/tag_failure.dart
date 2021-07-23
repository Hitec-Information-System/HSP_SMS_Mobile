import 'package:freezed_annotation/freezed_annotation.dart';

part 'tag_failure.freezed.dart';

@freezed
class TagFailure with _$TagFailure {
  const TagFailure._();
  const factory TagFailure.notSupportedTag() = _NotSupportedTag;
  const factory TagFailure.tagError() = _TagError;
}
