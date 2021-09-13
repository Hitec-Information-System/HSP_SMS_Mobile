import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/auth/domain/auth_failure.dart';
import 'package:frontend/auth/domain/api_key.dart';
import 'package:frontend/auth/infrastructure/authenticator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'auth_notifier.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.unauthenticated() = _Unauthenticated;
  const factory AuthState.authenticated(APIKey key) = _Authenticated;
  const factory AuthState.failure(AuthFailure failure) = _Failure;
}

class AuthNotifier extends StateNotifier<AuthState> {
  final Authenticator _authenticator;

  AuthNotifier(this._authenticator) : super(const AuthState.initial());

  Future<void> checkAuthState() async {
    state = await _authenticator.getSignedInCredentials().then((key) {
      if (key == null) {
        return const AuthState.unauthenticated();
      } else {
        return AuthState.authenticated(key);
      }
    });
  }

  Future<void> signIn(Map<String, dynamic> params) async {
    state = const AuthState.loading();

    final failureOrSuccess =
        await _authenticator.handleAuthorizationResponse(params);

    state = failureOrSuccess.fold(
        (l) => AuthState.failure(l), (r) => AuthState.authenticated(r));
  }

  Future<void> signOut() async {
    final failureOrSuccess = await _authenticator.signOut();
    state = failureOrSuccess.fold(
        (l) => AuthState.failure(l), (r) => const AuthState.unauthenticated());
  }
}
