import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:web/features/auth/application/auth_notifier.dart';
import 'package:web/features/auth/shared/provider.dart';

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = GlobalKey<FormState>();

    final idController = useTextEditingController();
    final pwController = useTextEditingController();

    ref.listen<AuthState>(
      authStateNotifierProvider,
      (prev, state) {
        state.maybeWhen(
          failure: (failure) {
            final snackBar = SnackBar(content: Text(failure.toString()));

            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          orElse: () {},
        );
      },
    );

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Form(
                  key: formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        controller: idController,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.account_box_rounded),
                          labelText: "ID",
                        ),
                        autocorrect: false,
                        validator: formValidator,
                      ),
                      const SizedBox(height: 12),
                      TextFormField(
                        controller: pwController,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.account_box_rounded),
                          labelText: "Password",
                        ),
                        autocorrect: false,
                        obscureText: true,
                        validator: formValidator,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState?.validate() == true) {
                      ref
                          .read(authStateNotifierProvider.notifier)
                          .signIn(idController.text, pwController.text);
                      // ref.read(authStateNotifierProvider.notifier).testLogin();
                    }
                  },
                  child: const Text("Login"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

String? formValidator(String? value) {
  if (value == null || value.isEmpty) {
    return "값을 입력하지 않았습니다";
  } else {
    return null;
  }
}
