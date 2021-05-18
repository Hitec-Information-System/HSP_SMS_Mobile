part of 'theme_bloc.dart';

@freezed
class ThemeEvent with _$ThemeEvent {
  // const factory ThemeEvent.themeChanged(
  //     {required AppTheme theme, required bool isDarkMode}) = _ThemeChanged;
  const factory ThemeEvent.themeCheckRequested() = _ThemeCheckRequested;
  const factory ThemeEvent.themeChanged() = _ThemeChanged;
  const factory ThemeEvent.saved() = _Saved;
}
