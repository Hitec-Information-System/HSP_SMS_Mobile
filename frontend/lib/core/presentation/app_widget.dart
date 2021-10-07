import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:frontend/auth/application/auth_notifier.dart';
import 'package:frontend/auth/shared/providers.dart';
import 'package:frontend/core/application/localization/app_localizations.dart';
import 'package:frontend/core/presentation/routes/app_router.gr.dart';
import 'package:frontend/core/shared/providers.dart';

import 'package:frontend/theme/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'constants/constants.dart';

class AppWidget extends ConsumerStatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends ConsumerState<AppWidget> {
  final _appRouter = AppRouter();

  @override
  void initState() {
    super.initState();
    Future.microtask(
      () async {
        await ref.read(sembastProvider).init();
        await ref.read(authNotifierProvider.notifier).checkAuthState();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final themeModeState = ref.watch(themeModeNotifierProvider);

    ref.listen<AuthState>(authNotifierProvider, (state) {
      state.maybeWhen(
        authenticated: (_) => _appRouter.pushAndPopUntil(
          const MenuFrameRoute(),
          predicate: (route) => false,
        ),
        unauthenticated: () => _appRouter.pushAndPopUntil(
          const SignInRoute(),
          predicate: (route) => false,
        ),
        // TODO: 임시 처리
        failure: (failure) => _appRouter.push(
          ErrorRoute(
            message: failure.when(
              server: (String? message) =>
                  "에러가 발생하였습니다. 에러의 내용은 다음과 같습니다.\n\n${message ?? "알 수 없는 에러"}\n\n관리자에게 문의하세요.",
              storage: () => "기기에서 사용자 정보를 불러오는 중 에러가 발생하였습니다. 관리자에게 문의하세요.",
            ),
          ),
        ),
        orElse: () {},
      );
    });

    return MaterialApp.router(
      title: 'Hwashin Safety Management',
      // ----
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('ko', 'KR'),
      ],
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        for (final supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale?.languageCode &&
              supportedLocale.countryCode == locale?.countryCode) {
            return supportedLocale;
          }
        }
        return supportedLocales.first;
      },

      theme: ThemeConstants.lightTheme,
      darkTheme: ThemeConstants.darkTheme,
      themeMode: themeModeState,

      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(
        includePrefixMatches: true,
      ),

      debugShowCheckedModeBanner: false,
    );
  }
}
