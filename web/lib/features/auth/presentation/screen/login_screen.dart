import 'package:flutter/material.dart';
import 'package:web/core/presentation/app_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    Key? key,
    required this.onLogin,
  }) : super(key: key);

  final void Function(bool isLoggedIn) onLogin;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            AppWidget.of(context).authService.authenticated = true;
            onLogin.call(true);
          },
          child: const Text("Tap to login"),
        ),
      ),
    );
  }
}
