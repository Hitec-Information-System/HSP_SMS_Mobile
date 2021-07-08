import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/auth/domain/auth_failure.dart';
import 'package:frontend/auth/infrastructure/authenticator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'auth_notifier.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();
  const factory AuthState.initial() = _Initial;
  const factory AuthState.unauthenticated() = _Unauthenticated;
  const factory AuthState.authenticated() = _Authenticated;
  const factory AuthState.failure(AuthFailure failure) = _Failure;
}

class AuthNotifier extends StateNotifier<AuthState> {
  final Authenticator _authenticator;

  AuthNotifier(this._authenticator) : super(const AuthState.initial());

  Future<void> checkAndUpdateAuthState() async {
    state = (await _authenticator.isSignedIn())
        ? const AuthState.authenticated()
        : const AuthState.unauthenticated();

    // Future<void> signIn(AuthUrlCallback authorizationCallback) async {
    //   final grant = _authenticator.createGrant();
    //   final redirectUrl =
    //       await authorizationCallback(_authenticator.getSignedInCredentials());
    //   final failureOrSuccess = await _authenticator.handleAuthorizationResponse(
    //     grant,
    //     redirectUrl.queryParameters,
    //   );
    // }
  }
}
