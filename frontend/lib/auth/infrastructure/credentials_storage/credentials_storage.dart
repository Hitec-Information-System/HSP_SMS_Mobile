import 'package:oauth2/oauth2.dart';

abstract class CredentialsStorage {
  Future<Credentials?> read();

  Future<void> save(Credentials info);

  Future<void> clear();
}
