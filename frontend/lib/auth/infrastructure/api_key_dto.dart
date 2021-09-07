import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/auth/domain/api_key.dart';

part 'api_key_dto.freezed.dart';
part 'api_key_dto.g.dart';

@freezed
class ApiKeyDTO with _$ApiKeyDTO {
  const ApiKeyDTO._();
  const factory ApiKeyDTO({
    @JsonKey(name: "res_str") required String key,
  }) = _ApiKeyDTO;

  factory ApiKeyDTO.fromJson(Map<String, dynamic> json) =>
      _$ApiKeyDTOFromJson(json);

  factory ApiKeyDTO.fromDomain(APIKey _) {
    return ApiKeyDTO(
      key: _.key,
    );
  }

  APIKey toDomain() {
    return APIKey(
      key: key,
    );
  }
}
