import 'package:flutter/material.dart';
import 'package:frontend/theme/application/theme_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final themeModeNotifierProvider =
    StateNotifierProvider<ThemeModeNotifier, ThemeMode>(
  (ref) => ThemeModeNotifier(),
);
