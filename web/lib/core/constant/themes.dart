import 'package:flutter/material.dart';

const kPrimaryThemeColor = Color(0xFF252DEB);
const kSecondaryThemeColor = Color(0xFF252DEB);
const kThirdThemeColor = Color(0xFF252DEB);

/// 테마 상수
class ThemeConstants {
  const ThemeConstants._();

  static final lightTheme = ThemeData.light()
    ..copyWith(
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
    );

  static final darkTheme = ThemeData.dark()
    ..copyWith(
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
        color: Colors.white,
      ),
      buttonTheme: ThemeData.dark().buttonTheme.copyWith(
            buttonColor: kPrimaryThemeColor,
          ),
    );
}
