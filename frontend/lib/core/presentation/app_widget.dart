import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:frontend/auth/application/auth_notifier.dart';
import 'package:frontend/auth/shared/providers.dart';
import 'package:frontend/core/application/localization/app_localizations.dart';
import 'package:frontend/core/presentation/routes/app_router.gr.dart';
import 'package:frontend/core/presentation/widgets.dart';
import 'package:frontend/theme/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final initializationProvider = FutureProvider<Unit>((ref) async {
  final authNotifier = ref.read(authNotifierProvider.notifier);
  await authNotifier.checkAndUpdateAuthState();
  return unit;
});

class AppWidget extends ConsumerWidget {
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeModeState = ref.watch(themeModeNotifierProvider);

    // return AnnotatedRegion<SystemUiOverlayStyle>(
    // status bar 값 조정
    // value: state.theme.systemStyle,
    //   child:
    // return ProviderListener<AuthState>(
    //   provider: authNotifierProvider,
    //   onChange: (context, state) {
    //     state.maybeMap(
    //         authenticated: (_) {
    //           _appRouter.pushAndPopUntil(
    //             const HomeRoute(),
    //             predicate: (route) => false,
    //           );
    //         },
    //         unauthenticated: (_) {
    //           _appRouter.pushAndPopUntil(
    //             const SignInRoute(),
    //             predicate: (route) => false,
    //           );
    //         },
    //         loading: (_) {
    //           _appRouter.pushAndPopUntil(
    //             const LoadingRoute(),
    //             predicate: (route) => false,
    //           );
    //         },
    //         orElse: () {});
    //   },
    // child:
    return MaterialApp.router(
      title: 'Hwashin NFC App',
      // 다중 언어 세팅
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
      // theme
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeModeState,
      // router 세팅
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      // debug banner 없애기
      debugShowCheckedModeBanner: false,
      // 테마 설정
      // theme: state.theme.themeData,
      // ),
      // ),
    );
  }
}
