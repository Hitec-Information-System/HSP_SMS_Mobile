import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_info_failure.freezed.dart';

@freezed
class CheckInfoFailure with _$CheckInfoFailure {
  const CheckInfoFailure._();
  const factory CheckInfoFailure.api({int? statusCode, String? message}) = _Api;
  const factory CheckInfoFailure.internal({required String message}) =
      _Internal;
  const factory CheckInfoFailure.noConnection() = _NoConnection;
}
