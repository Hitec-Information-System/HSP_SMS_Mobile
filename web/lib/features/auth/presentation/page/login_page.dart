import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:web/core/gen/fonts.gen.dart';
import 'package:web/features/auth/shared/provider.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  late TextEditingController idController;
  late TextEditingController pwController;
  late FocusNode _focusNode;

  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    idController = TextEditingController();
    pwController = TextEditingController();
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    idController.dispose();
    pwController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  // 로그인 폼 작성 후 enter 클릭시 다음 동작 수행할 수 있도록 처리
  void _onKey(RawKeyEvent event, {required Function onEnterKey}) {
    if (event is! RawKeyDownEvent) {
      return;
    }

    if (event.logicalKey == LogicalKeyboardKey.enter) {
      onEnterKey.call();
    }
  }

  // 로그인 폼 작성 완료 및 형식에 맞는지 확인
  bool get _isLoginFormValidated {
    return formKey.currentState?.validate() ?? false;
  }

  void signIn() {
    if (_isLoginFormValidated) {
      ref
          .read(authStateNotifierProvider.notifier)
          .signIn(idController.text, pwController.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return RawKeyboardListener(
      focusNode: _focusNode,
      onKey: (event) => _onKey(
        event,
        onEnterKey: signIn,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Hwashin Precision Safety",
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontFamily: FontFamily.gmarketSans,
                      ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 18.0,
                    vertical: 9,
                  ),
                  child: Form(
                    key: formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "ID",
                            style:
                                Theme.of(context).textTheme.bodyText1?.copyWith(
                                      fontWeight: FontWeight.w500,
                                    ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        TextFormField(
                          controller: idController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(
                              Icons.person,
                            ),
                            hintText: "ID",
                          ),
                          autocorrect: false,
                          validator: formValidator,
                        ),
                        const SizedBox(height: 12),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Passwords",
                            style:
                                Theme.of(context).textTheme.bodyText1?.copyWith(
                                      fontWeight: FontWeight.w500,
                                    ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        TextFormField(
                          controller: pwController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(
                              Icons.lock,
                            ),
                            hintText: "Password",
                          ),
                          autocorrect: false,
                          obscureText: true,
                          validator: formValidator,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Container(
                  alignment: Alignment.centerRight,
                  margin: const EdgeInsets.only(right: 12),
                  child: ElevatedButton(
                    onPressed: signIn,
                    child: const Text("Login"),
                  ),
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
