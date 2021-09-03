import 'package:flutter/material.dart';

class ThemeConstants {
  const ThemeConstants._();

  static final lightTheme = ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primarySwatch: const MaterialColor(0xFF8983F7, <int, Color>{
      50: Color(0x0F8983F7),
      100: Color(0x1F8983F7),
      200: Color(0x2F8983F7),
      300: Color(0x3F8983F7),
      400: Color(0x4F8983F7),
      500: Color(0x5F8983F7),
      600: Color(0x6F8983F7),
      700: Color(0x7F8983F7),
      800: Color(0x8F8983F7),
      900: Color(0x9F8983F7),
    }),
    primaryColor: const Color(0xFFE7E5E7),
    brightness: Brightness.light,
    accentColor: const Color(0xFF8983F7),
    cardColor: const Color(0xFFF9FAFC),
    backgroundColor: const Color(0xFFFFFFFF),
    bottomAppBarColor: const Color(0xFFF1F1EF),
    scaffoldBackgroundColor: const Color(0xFFFFFFFF),
    errorColor: const Color(0xFFF26846),
    textTheme: const TextTheme().apply(
      bodyColor: Colors.grey[900],
      displayColor: Colors.black,
    ),
    hintColor: const Color(0xFF6B6969),
  );
  static final darkTheme = ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primarySwatch: const MaterialColor(0xFF8983F7, <int, Color>{
      50: Color(0x0F8983F7),
      100: Color(0x1F8983F7),
      200: Color(0x2F8983F7),
      300: Color(0x3F8983F7),
      400: Color(0x4F8983F7),
      500: Color(0x5F8983F7),
      600: Color(0x6F8983F7),
      700: Color(0x7F8983F7),
      800: Color(0x8F8983F7),
      900: Color(0x9F8983F7),
    }),
    primaryColor: const Color(0xFF2E3030),
    brightness: Brightness.dark,
    accentColor: const Color(0xFF5C599C),
    backgroundColor: const Color(0xFF1E1E1E),
    scaffoldBackgroundColor: const Color(0xFF1F2022),
    cardColor: const Color(0xFF1C1C1E),
    bottomAppBarColor: const Color(0xFF2E2C2C),
    hintColor: const Color(0xFFA7A4A4),
    errorColor: const Color(0xFFF26846),
    textTheme: const TextTheme().apply(
      bodyColor: Colors.white,
      displayColor: Colors.white,
    ),
  );
}
