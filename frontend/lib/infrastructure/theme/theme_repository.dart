import 'package:dartz/dartz.dart';
import 'package:frontend/domain/settings/theme/app_theme.dart';
import 'package:frontend/domain/settings/theme/i_theme_repository.dart';
import 'package:frontend/domain/settings/theme/theme_failures.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IThemeRepository)
class ThemeRepository implements IThemeRepository {
  @override
  Future<Either<ThemeFailure, AppTheme>> getThemeData() async {
    final settings = await Hive.openBox('settings');
    final isDarkTheme = settings.get('isDarkTheme');
    if (isDarkTheme == null) {
      return left(const ThemeFailure.notExist());
    } else if (isDarkTheme as bool) {
      return right(AppTheme.dark());
    } else {
      return right(AppTheme.light());
    }
  }
}
