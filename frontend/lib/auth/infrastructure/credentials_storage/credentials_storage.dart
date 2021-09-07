import 'package:frontend/auth/infrastructure/api_key_dto.dart';

abstract class CredentialsStorage {
  Future<ApiKeyDTO?> read();

  Future<void> save(ApiKeyDTO userDTO);

  Future<void> clear();
}
