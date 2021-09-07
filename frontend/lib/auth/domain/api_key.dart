import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_key.freezed.dart';

@freezed
class APIKey with _$APIKey {
  const APIKey._();
  const factory APIKey({
    required String key,
  }) = _APIKey;
}
