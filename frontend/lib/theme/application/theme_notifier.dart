import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ThemeModeNotifier extends StateNotifier<ThemeMode> {
  ThemeModeNotifier() : super(ThemeMode.system);

  ThemeMode get themeMode => state;

  set themeMode(ThemeMode themeMode) {
    state = themeMode;
  }
}
