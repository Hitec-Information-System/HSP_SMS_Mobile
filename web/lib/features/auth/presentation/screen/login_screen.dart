import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:web/features/auth/application/auth_notifier.dart';
import 'package:web/features/auth/presentation/page/decoration_page.dart';
import 'package:web/features/auth/presentation/page/login_page.dart';
import 'package:web/features/auth/shared/provider.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AuthState>(
      authStateNotifierProvider,
      (prev, state) {
        state.maybeWhen(
          failure: (failure) {
            final message = failure.maybeWhen(
              apiFailure: (message) => message,
              orElse: () => failure.toString(),
            );

            final snackBar = SnackBar(content: Text(message));

            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          orElse: () {},
        );
      },
    );

    return Row(
      children: const [
        Expanded(
          flex: 1,
          child: LoginPage(),
        ),
        Expanded(
          flex: 2,
          child: DecorationPage(),
        ),
      ],
    );
  }
}
