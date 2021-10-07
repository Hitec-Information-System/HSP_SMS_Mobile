import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/auth/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignInPage extends HookConsumerWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = GlobalKey<FormState>();

    final idController = useTextEditingController();
    final pwController = useTextEditingController();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  SchedulerBinding.instance!.window.platformBrightness ==
                          Brightness.dark
                      ? "assets/splash/splash_dark.png"
                      : "assets/splash/splash_light.png",
                  width: 200,
                  height: 200,
                ),
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
                      const SizedBox(height: 8),
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
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState?.validate() == true) {
                      final params = {
                        "user-id": idController.text,
                        "pwd": pwController.text,
                      };

                      ref.read(authNotifierProvider.notifier).signIn(params);
                    }
                  },
                  child: const Text("로그인"),
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
