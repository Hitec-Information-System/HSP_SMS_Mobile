import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:frontend/auth/application/auth_notifier.dart';
import 'package:frontend/auth/infrastructure/authenticator.dart';
import 'package:frontend/auth/infrastructure/credentials_storage/credentials_storage.dart';
import 'package:frontend/auth/infrastructure/credentials_storage/secure_credentials_storage.dart';
import 'package:frontend/core/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final flutterSecureStorageProvider =
    Provider((ref) => const FlutterSecureStorage());

final credentialsStorageProvider = Provider<CredentialsStorage>(
  (ref) => SecureCredentialStorage(
    ref.watch(flutterSecureStorageProvider),
  ),
);

final authenticatorProvider = Provider(
  (ref) => Authenticator(
    ref.watch(dioProvider),
    ref.watch(credentialsStorageProvider),
  ),
);

final authNotifierProvider = StateNotifierProvider<AuthNotifier, AuthState>(
  (ref) => AuthNotifier(
    ref.watch(authenticatorProvider),
  ),
);
