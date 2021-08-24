import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_failure.freezed.dart';

@freezed
class CheckFailure with _$CheckFailure {
  const CheckFailure._();
  const factory CheckFailure.api(int? errorCode) = _Api;
}
