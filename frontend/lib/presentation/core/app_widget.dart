import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:frontend/application/core/app_localizations.dart';
import 'package:frontend/application/settings/theme/theme_bloc.dart';
import 'package:frontend/injection.dart';
import 'package:frontend/presentation/routes/router.gr.dart';

class AppWidget extends StatelessWidget {
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<ThemeBloc>()..add(const ThemeEvent.themeCheckRequested()),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) => AnnotatedRegion<SystemUiOverlayStyle>(
          // status bar 값 조정
          value: state.theme.systemStyle,
          child: MaterialApp.router(
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
                if (supportedLocale.languageCode == locale!.languageCode &&
                    supportedLocale.countryCode == locale.countryCode) {
                  return supportedLocale;
                }
              }
              return supportedLocales.first;
            },
            // router 세팅
            routerDelegate: _appRouter.delegate(),
            routeInformationParser: _appRouter.defaultRouteParser(),
            // debug banner 없애기
            debugShowCheckedModeBanner: false,
            // 테마 설정
            theme: state.theme.themeData,
          ),
        ),
      ),
    );
  }
}
