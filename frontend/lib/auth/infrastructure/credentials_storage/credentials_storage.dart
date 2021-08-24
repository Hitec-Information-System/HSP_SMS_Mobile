import 'package:frontend/auth/infrastructure/user_dto.dart';

abstract class CredentialsStorage {
  Future<UserDTO?> read();

  Future<void> save(UserDTO userDTO);

  Future<void> clear();
}
