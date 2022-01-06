import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:web/core/constant/strings.dart';
import 'package:web/core/gen/fonts.gen.dart';
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
              apiFailure: (message) => invalidEmailPwFailureMessage,
              connectionFailure: () => connectionFailureMessage,
              serverFailure: () => serverNoResponseFailureMessage,
              orElse: () => failure.toString(),
            );

            final snackBar = SnackBar(
                content: Text(
              message,
              style: const TextStyle(
                fontFamily: FontFamily.gmarketSans,
              ),
            ));

            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          orElse: () {},
        );
      },
    );

    return Scaffold(
      body: Row(
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
      ),
    );
  }
}
