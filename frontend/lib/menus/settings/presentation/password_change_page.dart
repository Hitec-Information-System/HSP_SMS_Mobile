import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/auth/application/auth_notifier.dart';
import 'package:frontend/auth/shared/providers.dart';
import 'package:frontend/core/presentation/constants/constants.dart';
import 'package:frontend/core/presentation/widgets/dialogs.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:frontend/core/presentation/routes/app_router.gr.dart';

class PasswordChangePage extends HookConsumerWidget {
  const PasswordChangePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = GlobalKey<FormState>();

    final pwController = useTextEditingController();
    final pwConfirmController = useTextEditingController();

    ref.listen<AuthState>(authNotifierProvider, (state) {
      state.maybeWhen(
        loading: () => Dialogs.showLoadingDialog(context),
        pwdChanged: () => Dialogs.showOneAnswerDialog(
          context,
          color: Theme.of(context).colorScheme.secondary,
          title: "완료",
          message: "변경이 완료되었습니다.\n",
          yesTitle: "확인",
          onYesPressed: () {},
          onDismissed: () {
            Navigator.pop(context);
          },
        ),
        failure: (failure) => Dialogs.showOneAnswerDialog(context,
            color: Theme.of(context).errorColor,
            title: "오류",
            message: failure.when(
              server: (String? message) =>
                  message ?? "알 수 없는 에러\n\n관리자에게 문의하세요.",
              storage: () => "기기에서 사용자 정보를 불러오는 중 에러가 발생하였습니다. 관리자에게 문의하세요.",
            ),
            yesTitle: "확인",
            onYesPressed: () {}, onDismissed: () {
          AutoRouter.of(context)
              .popUntilRouteWithName(PasswordChangeRoute.name);
        }),
        orElse: () {},
      );
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text("비밀번호 변경"),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: LayoutConstants.paddingXL),
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
                        controller: pwController,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.account_box_rounded),
                          labelText: "비밀번호",
                        ),
                        autocorrect: false,
                        obscureText: true,
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return "비밀번호를 입력하지 않았습니다";
                          }

                          if (value.length < 5) {
                            return "5자리 이상 비밀번호를 설정하지 않았습니다";
                          }

                          return null;
                        },
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        controller: pwConfirmController,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.account_box_rounded),
                          labelText: "비밀번호 확인",
                        ),
                        autocorrect: false,
                        obscureText: true,
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return "비밀번호를 입력하지 않았습니다";
                          }

                          if (value != pwController.text) {
                            return "입력한 비밀번호와 일치하지 않습니다";
                          }

                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: LayoutConstants.spaceM),
                ElevatedButton(
                  onPressed: () async {
                    if (formKey.currentState?.validate() == true) {
                      final params = {
                        "pwd": pwController.text,
                      };

                      ref
                          .read(authNotifierProvider.notifier)
                          .changePassword(params);
                    }
                  },
                  child: const Text("변경"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
