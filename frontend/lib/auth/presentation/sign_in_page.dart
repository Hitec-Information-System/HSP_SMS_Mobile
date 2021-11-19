import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/auth/application/auth_notifier.dart';
import 'package:frontend/auth/shared/providers.dart';
import 'package:frontend/core/presentation/constants/constants.dart';
import 'package:frontend/core/presentation/widgets/dialogs.dart';
import 'package:frontend/version_check/application/app_info_notifier.dart';
import 'package:frontend/version_check/domain/app_info.dart';
import 'package:frontend/version_check/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:frontend/core/presentation/routes/app_router.gr.dart';
import 'package:url_launcher/url_launcher.dart';

class SignInPage extends HookConsumerWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = GlobalKey<FormState>();

    final idController = useTextEditingController();
    final pwController = useTextEditingController();

    ref.listen<AppInfoState>(appInfoStateNotifierProvider, (state) {
      state.maybeWhen(
        outDated: (AppInfo info) {
          Dialogs.showOneAnswerDialog(
            context,
            color: Theme.of(context).colorScheme.secondary,
            icon: Icons.check_circle,
            title: "새 버전 다운로드",
            message:
                "새로운 기능을 추가, 수정한 버전을 다운로드할 수 있습니다. 확인을 눌러 다운로드 합니다.\n(새 버전을 다운로드 받지 않아 발생한 오류는 책임지지 않습니다.)",
            yesTitle: "확인",
            onYesPressed: () async {
              final apkUrl =
                  "${LogicConstants.apkDownloadBaseUrl}/${info.version.replaceAll(".", "-")}";
              if (await canLaunch(apkUrl)) {
                launch(apkUrl);
              }
            },
            onDismissed: () {},
          );
        },
        orElse: () {},
      );
    });

    ref.listen<AuthState>(authNotifierProvider, (state) {
      state.maybeWhen(
        loading: () => Dialogs.showLoadingDialog(context),
        failure: (failure) => Dialogs.showOneAnswerDialog(
          context,
          color: Theme.of(context).errorColor,
          title: "오류",
          message: failure.when(
            server: (String? message) => message ?? "알 수 없는 에러\n\n관리자에게 문의하세요.",
            storage: () => "기기에서 사용자 정보를 불러오는 중 에러가 발생하였습니다. 관리자에게 문의하세요.",
          ),
          yesTitle: "확인",
          onYesPressed: () {},
          onDismissed: () {
            AutoRouter.of(context).popUntilRouteWithName(SignInRoute.name);
          },
        ),
        orElse: () {},
      );
    });

    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: LayoutConstants.paddingXL),
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
                      const SizedBox(height: LayoutConstants.spaceM),
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
                const SizedBox(height: LayoutConstants.spaceM),
                ElevatedButton(
                  onPressed: () {
                    // TODO: 로직 위치 application 으로 가져다놓기
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
