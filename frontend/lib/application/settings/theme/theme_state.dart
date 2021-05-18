part of 'theme_bloc.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState.curTheme({required AppTheme theme}) = CurTheme;
}
