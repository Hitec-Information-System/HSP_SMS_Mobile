import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'theme_notifier.freezed.dart';

@freezed
class ThemeState with _$ThemeState {
  const ThemeState._();
  const factory ThemeState.initial() = _Initial;
  const factory ThemeState.light() = _Light;
  const factory ThemeState.dark() = _Dark;
}

class ThemeNotifier extends StateNotifier<ThemeState> {
  ThemeNotifier() : super(const ThemeState.light());
}
