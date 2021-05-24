import 'package:freezed_annotation/freezed_annotation.dart';

part 'tag_failure.freezed.dart';

@freezed
class TagFailure with _$TagFailure {
  const factory TagFailure.tagScanError() = TagScanError;
  const factory TagFailure.cancelledByUser() = CancelledByUser;
}
