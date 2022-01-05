import 'package:flutter/material.dart';
import 'package:web/core/gen/fonts.gen.dart';

const kPrimaryThemeColor = Color(0xFF252DEB);
const kSecondaryThemeColor = Color(0xFF9FF2F8);
const kThirdThemeColor = Color(0xFF52B788);

/// 테마 상수
class ThemeConstants {
  const ThemeConstants._();

  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    backgroundColor: const Color(0xFFFFFFFF),
    scaffoldBackgroundColor: const Color(0xFFFFFFFF),
    primaryColor: kPrimaryThemeColor,
    colorScheme: ColorScheme.fromSwatch(
        primarySwatch: const MaterialColor(0xFF252DEB, <int, Color>{
      50: Color(0x0F252DEB),
      100: Color(0x1F252DEB),
      200: Color(0x2F252DEB),
      300: Color(0x3F252DEB),
      400: Color(0x4F252DEB),
      500: Color(0x5F252DEB),
      600: Color(0x6F252DEB),
      700: Color(0x7F252DEB),
      800: Color(0x8F252DEB),
      900: Color(0x9F252DEB),
    })).copyWith(
      secondary: kPrimaryThemeColor,
    ),
    iconTheme: const IconThemeData(
      color: Colors.black,
    ),
    buttonTheme: ThemeData.light().buttonTheme.copyWith(
          buttonColor: kPrimaryThemeColor,
        ),
    textTheme: ThemeData.light().textTheme.apply(
          fontFamily: FontFamily.gmarketSans,
        ),
    primaryTextTheme: ThemeData.light().textTheme.apply(
          fontFamily: FontFamily.gmarketSans,
        ),
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    backgroundColor: const Color(0xFF1E1E1E),
    scaffoldBackgroundColor: const Color(0xFF1F2022),
    primaryColor: kPrimaryThemeColor,
    colorScheme: ColorScheme.fromSwatch(
        brightness: Brightness.dark,
        primarySwatch: const MaterialColor(0xFF252DEB, <int, Color>{
          50: Color(0x0F252DEB),
          100: Color(0x1F252DEB),
          200: Color(0x2F252DEB),
          300: Color(0x3F252DEB),
          400: Color(0x4F252DEB),
          500: Color(0x5F252DEB),
          600: Color(0x6F252DEB),
          700: Color(0x7F252DEB),
          800: Color(0x8F252DEB),
          900: Color(0x9F252DEB),
        })).copyWith(
      secondary: kPrimaryThemeColor,
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    buttonTheme: ThemeData.dark().buttonTheme.copyWith(
          buttonColor: kPrimaryThemeColor,
        ),
    textTheme: ThemeData.dark().textTheme.apply(
          fontFamily: FontFamily.gmarketSans,
        ),
    primaryTextTheme: ThemeData.dark().textTheme.apply(
          fontFamily: FontFamily.gmarketSans,
        ),
  );
}
