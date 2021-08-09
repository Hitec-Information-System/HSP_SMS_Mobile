import 'package:flutter/material.dart';

class AppTheme {
  const AppTheme._();

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
      primaryColor: Colors.white,
      brightness: Brightness.light,
      backgroundColor: const Color(0xFFFFFFFF),
      scaffoldBackgroundColor: const Color(0xFFFFFFFF),
      textTheme: const TextTheme().apply(
        bodyColor: Colors.grey[900],
        displayColor: Colors.black,
      ));
  static final darkTheme = ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primarySwatch: const MaterialColor(0xDDFF0080, <int, Color>{
      50: Color(0x0DFF0080),
      100: Color(0x1DFF0080),
      200: Color(0x2DFF0080),
      300: Color(0x3DFF0080),
      400: Color(0x4DFF0080),
      500: Color(0x5DFF0080),
      600: Color(0x6DFF0080),
      700: Color(0x7DFF0080),
      800: Color(0x8DFF0080),
      900: Color(0x9DFF0080),
    }),
    primaryColor: const Color(0xFF1E1F28),
    brightness: Brightness.dark,
    backgroundColor: const Color(0xFF26242e),
    scaffoldBackgroundColor: const Color(0xFF26242e),
    textTheme: const TextTheme().apply(
      bodyColor: Colors.white,
      displayColor: Colors.white,
    ),
  );
}
