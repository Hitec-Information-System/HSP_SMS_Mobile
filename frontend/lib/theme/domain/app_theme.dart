import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_theme.freezed.dart';

@freezed
class AppTheme with _$AppTheme {
  const factory AppTheme(
      {required bool isDark,
      required ThemeData themeData,
      required List<Color> gradient,
      required Color toggleButtonColor,
      required Color toggleBackgroundColor,
      required Color textColor,
      required Color backgroundTextColor,
      required List<BoxShadow> shadow,
      required SystemUiOverlayStyle systemStyle}) = _AppTheme;

  const AppTheme._();

  factory AppTheme.light() => AppTheme(
      isDark: false,
      themeData: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.grey,
        primaryColor: Colors.white,
        brightness: Brightness.light,
        backgroundColor: const Color(0xFFFFFFFF),
        scaffoldBackgroundColor: const Color(0xFFFFFFFF),
      ),
      gradient: const [Color(0xDDFF0080), Color(0xDDFF8C00)],
      textColor: const Color(0xFF000000),
      backgroundTextColor: const Color(0xFF918f95),
      toggleButtonColor: const Color(0xFFFFFFFF),
      toggleBackgroundColor: const Color(0xFFe7e7e8),
      shadow: [
        const BoxShadow(
            color: Color(0xFFd8d7da),
            spreadRadius: 5,
            blurRadius: 10,
            offset: Offset(0, 5)),
      ],
      systemStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Color(0xFFFFFFFF),
        systemNavigationBarIconBrightness: Brightness.dark,
      ));

  factory AppTheme.dark() => AppTheme(
      isDark: true,
      themeData: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.grey,
        primaryColor: const Color(0xFF1E1F28),
        brightness: Brightness.dark,
        backgroundColor: const Color(0xFF26242e),
        scaffoldBackgroundColor: const Color(0xFF26242e),
      ),
      gradient: const [Color(0xFF8983F7), Color(0xFFA3DAFB)],
      textColor: const Color(0xFFFFFFFF),
      backgroundTextColor: const Color(0xFF918f95),
      toggleButtonColor: const Color(0xFf34323d),
      toggleBackgroundColor: const Color(0xFF222029),
      shadow: [
        const BoxShadow(
            color: Color(0x66000000),
            spreadRadius: 5,
            blurRadius: 10,
            offset: Offset(0, 5)),
      ],
      systemStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Color(0xFF26242e),
        systemNavigationBarIconBrightness: Brightness.light,
      ));
}
