import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:web/core/error/failures.dart';
import 'package:web/features/auth/domain/repository/i_auth_repository.dart';

part 'auth_notifier.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();
  const factory AuthState.unauthenticated() = _Unauthenticated;
  const factory AuthState.authenticating() = _Authenticating;
  const factory AuthState.authenticated() = _Authenticated;
  const factory AuthState.failure(Failure failure) = _Failure;
}

class AuthStateNotifier extends StateNotifier<AuthState> {
  final IAuthRepsitory _repository;

  AuthStateNotifier(
    this._repository,
  ) : super(const AuthState.unauthenticated());

  Future<void> signIn(String id, String password) async {
    state = const AuthState.authenticating();

    final params = <String, dynamic>{
      "user-id": id,
      "pwd": password,
    };

    final failureOrSuccess = await _repository.signIn(params);
    state = failureOrSuccess.fold(
      (l) => AuthState.failure(l),
      (r) => const AuthState.authenticated(),
    );
  }

  void signOut() {
    state = const AuthState.unauthenticated();
  }

  void testLogin() {
    state = const AuthState.unauthenticated();
  }
}
